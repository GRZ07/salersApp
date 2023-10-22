import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../../../utils/send_get.dart';
import '../models/options_drop_down.dart';

class NewProductProvider with ChangeNotifier {
  final List<OptionsDropDown> _dropDowns = [];

  List<OptionsDropDown> get dropDowns => _dropDowns;

  var brandsFetched = false;
  void refetchBrands() {
    brandsFetched = false;
    notifyListeners();
  }

  final ScrollController dialogScrollController = ScrollController();

  final _client = http.Client();

  Future<void> getChoices({
    required BuildContext ctx,
    required String path,
  }) async {
    Uri url = Uri.parse('${dotenv.env['PHONES_DIR_URL']}/$path');
    try {
      List response = await sendGet(url: url, client: _client, token: null);

      final List<String> dirs = [];
      for (var dir in response) {
        if (dir['type'] == 'dir') dirs.add(dir['name']);
      }

      Map<String, dynamic> devices = {};
      final modelsFile = response.where((item) => item['type'] == 'file');
      if (modelsFile.isNotEmpty) {
        url = Uri.parse('${dotenv.env['PHONES_URL']}/$path/models.json');

        final devicesResponse =
            await sendGet(url: url, client: _client, token: null);

        devices = devicesResponse;
      }

      _dropDowns.add(OptionsDropDown(dirs: dirs, devices: devices));
      brandsFetched = true;
      notifyListeners();
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  @override
  void dispose() {
    super.dispose();
    dialogScrollController.dispose();
    _client.close();
  }
}
