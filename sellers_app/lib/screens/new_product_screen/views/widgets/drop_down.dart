import 'package:flutter/material.dart';
import 'package:easy_autocomplete/easy_autocomplete.dart';

import '../../models/options_drop_down.dart';
import '../../../../theme/sellers_theme.dart';
import '../../../../widgets/my_button.dart';

class DropDown extends StatelessWidget {
  final OptionsDropDown dropDown;

  const DropDown({
    required this.dropDown,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Set up the options
    List<String> options = [];
    for (String option in [...dropDown.dirs, ...dropDown.devices.keys]) {
      options.add(option);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: EasyAutocomplete(
              suggestions: options,
              controller: TextEditingController(),
              cursorColor: SellersTheme.colors.primaryColor,
              decoration: SellersInputDecoration.dropdown(
                label: 'اختر نوع الجهاز',
              ),
              suggestionBuilder: (data) {
                return Container(
                  margin: const EdgeInsets.all(1),
                  padding: const EdgeInsets.all(5),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: Text(data, style: SellersTheme.textStyles.titleMedium),
                );
              },
              inputTextStyle: SellersTheme.textStyles.fieldContent,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Flexible(
            flex: 1,
            child: MyButton(
                child: Text(
                  'تم',
                  style: SellersTheme.textStyles.titleLarge.copyWith(
                    color: Colors.white,
                  ),
                ),
                onClick: () {}),
          ),
        ],
      ),
    );
  }
}
