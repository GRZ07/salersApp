import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../../../utils/send_get.dart';
import '../models/option.dart';

class NewProductProvider with ChangeNotifier {
  final List<List<Option>> _options = [];
  final List<List<Map<String, String>>> _devices = [];
  final List<String> _selectedPath = [];

  List<List<Option>> get options => _options;
  List<List<Map<String, String>>> get devices => _devices;
  List<String> get selectedPath => _selectedPath;

  final dropDownController = TextEditingController();

  var isLoading = false;

  var deviceFound = false;

  var brandsFetched = false;
  void refetchBrands() {
    brandsFetched = false;
    notifyListeners();
  }

  final _client = http.Client();

  Future<void> getChoices({
    required BuildContext ctx,
    required bool firstLoad,
  }) async {
    String path = '';
    for (var option in _selectedPath) {
      path = '$path/$option';
    }

    path = '$path${dropDownController.text}';

    if (!firstLoad && _options.last.last.device) {
      deviceFound = true;
      notifyListeners();
      return;
    }

    Uri url = Uri.parse('${dotenv.env['PHONES_DIR_URL']}/$path');
    print(url);

    if (options.isNotEmpty) {
      isLoading = true;
      notifyListeners();
    }

    try {
      List response = await sendGet(url: url, client: _client, token: null);

      final List<String> dirs = [];
      for (var dir in response) {
        if (dir['type'] == 'dir') dirs.add(dir['name']);
      }

      Map<String, dynamic> loadedDevices = {};
      final modelsFile = response.where((item) => item['type'] == 'file');

      if (modelsFile.isNotEmpty) {
        url = Uri.parse('${dotenv.env['PHONES_URL']}/$path/models.json');

        final devicesResponse =
            await sendGet(url: url, client: _client, token: null);

        loadedDevices = devicesResponse;
      }

      if (!firstLoad) {
        _selectedPath.add(dropDownController.text);
      }
      dropDownController.text = '';

      _options.add([]);
      _devices.add([]);
      for (String dir in dirs) {
        _options.last.add(Option(option: dir, device: false));
      }

      for (String device in loadedDevices.keys) {
        _options.last.add(Option(option: device, device: true));
        _devices.last.add({device: loadedDevices[device]!});
      }

      isLoading = false;
      brandsFetched = true;
      notifyListeners();
    } catch (err) {
      // print(err);
      isLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _client.close();
  }
}
