import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../theme/sellers_theme.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/dotted_button.dart';
import '../providers/enter_image_provider.dart';
import '../../../providers/user_provider.dart';
import '../../../utils/pick_image.dart';

class EnterImageScreen extends StatelessWidget {
  static const routeName = 'enter-image-screen';

  const EnterImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final editProfileImageProvider =
        Provider.of<EnterImageProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: SellersTheme.colors.backgroundColor,
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: SellersTheme.colors.primaryColor,
                  child: CircleAvatar(
                    radius: 145,
                    backgroundColor: SellersTheme.colors.backgroundColor,
                    child: Consumer<EnterImageProvider>(
                        builder: (context, editImageConsumer, _) {
                      return CircleAvatar(
                        radius: 143,
                        backgroundColor: SellersTheme.colors.primaryColor,
                        backgroundImage: const AssetImage(
                            'lib/assets/images/profile_placeholder.png'),
                        foregroundImage: editImageConsumer.imagePath != null
                            ? FileImage(File(editImageConsumer.imagePath!))
                            : null,
                      );
                    }),
                  ),
                ),
              ),
              Container(
                width: 200,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: DottedButton(
                  label: 'اختر صورة',
                  onClick: () async {
                    final imagePath = await pickImage();
                    if (imagePath != null) {
                      editProfileImageProvider.updateImagePath(imagePath);
                    }
                  },
                ),
              ),
              const Expanded(child: SizedBox()),
              Container(
                child: Consumer<EnterImageProvider>(
                    builder: (context, editImageConsumer, _) {
                  return Row(
                    children: [
                      Expanded(
                        child: MyButton(
                          // onClick: editImageConsumer.isUpdating
                          //     ? null
                          //     : () async {
                          //         final result =
                          //             await editImageConsumer.updateImage(
                          //           ctx: context,
                          //           imagePath: editImageConsumer.imagePath!,
                          //           token: Provider.of<UserProvider>(context,
                          //                   listen: false)
                          //               .token!,
                          //         );

                          //         if (result != null && result) {
                          //           // Image changed
                          //           if (!context.mounted) return;
                          //           Navigator.of(context).pop(true);
                          //         }
                          //       },
                          onClick: () {},
                          child: Text(
                            'حفظ',
                            style: SellersTheme.textStyles.titleLarge
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: MyButton(
                          onClick: editImageConsumer.isUpdating
                              ? null
                              : () => Navigator.of(context).pop(),
                          child: Text(
                            'إلغاء',
                            style: SellersTheme.textStyles.titleLarge
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
