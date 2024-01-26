import 'package:flutter/material.dart';
import 'package:easy_autocomplete/easy_autocomplete.dart';
import 'package:provider/provider.dart';

import '../../../../theme/sellers_theme.dart';
import '../../../../widgets/my_button.dart';
import '../../providers/new_product_provider.dart';

import '../../models/option.dart';

class DropDown extends StatelessWidget {
  final List<Option> options;

  const DropDown({
    required this.options,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final newProductProvider = Provider.of<NewProductProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: EasyAutocomplete(
              suggestions: options.map((option) => option.option).toList(),
              controller: newProductProvider.dropDownController,
              cursorColor: SellersTheme.colors.primaryColor,
              decoration: SellersInputDecoration.dropdown(
                label: 'اختر نوع الجهاز',
                enabled: !newProductProvider.isLoading,
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
              onClick: newProductProvider.isLoading
                  ? null
                  : () => newProductProvider.getChoices(
                      ctx: context, firstLoad: false),
              child: newProductProvider.isLoading
                  ? const Center(
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Text(
                      'تم',
                      style: SellersTheme.textStyles.titleLarge.copyWith(
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
