import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../widgets/my_field.dart';
import '../../../theme/sellers_theme.dart';
import '../providers/enter_address_screen.dart';

class EnterAddressScreen extends StatelessWidget {
  static const routeName = 'enter-address-screen';

  const EnterAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final enterAddressProvider =
        Provider.of<EnterAddressProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          MyField(
            decoration: SellersInputDecoration.primary(label: 'address'),
            inputType: TextInputType.text,
            controller: enterAddressProvider.addressController,
            inputAction: TextInputAction.next,
          ),
        ],
      ),
    );
  }
}
