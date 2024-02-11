// import 'package:flutter/material.dart';
// import '../../../../../theme/sellers_theme.dart';
// import '../../../widgets/my_button.dart';

// class ShopInfoPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('معلومات المتجر'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'صورة المتجر',
//                 style: SellersTheme.textStyles.titleLarge.copyWith(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 16),
//               // Shop Image Upload Section
//               Container(
//                 width: double.infinity,
//                 height: 300, // Set a fixed height for the image container
//                 child: AspectRatio(
//                   aspectRatio: 1, // Set aspect ratio as needed
//                   child: CircleAvatar(
//                     backgroundColor: SellersTheme.colors.fieldFillColor,
//                     child: Icon(
//                       Icons.camera_alt,
//                       size: 100,
//                       color: SellersTheme.colors.displayTextColor,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 24),
//               Text(
//                 'عنوان المتجر',
//                 style: SellersTheme.textStyles.titleLarge.copyWith(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               TextField(
//                 decoration: SellersInputDecoration.primary(
//                   label: "ادخل عنوان المتجر"
//                 ), 
//               ),
//               SizedBox(height: 24),
//               Text(
//                 'وقت فتح المتجر',
//                 style: SellersTheme.textStyles.titleLarge.copyWith(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               // Opening Time Input Section
//               TextField(
//                 decoration: SellersInputDecoration.primary(
//                   label: "ادخل وقت فتح المتجر"
//                 ), 
//               ),
//               SizedBox(height: 24),
//               Text(
//                 'وقت غلق المتجر',
//                 style: SellersTheme.textStyles.titleLarge.copyWith(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               // Closing Time Input Section
//               TextField(
//                 decoration: SellersInputDecoration.primary(
//                   label: "ادخل وقت غلق المتجر"
//                 ), 
//               ),
//               SizedBox(height: 24),
//               Text(
//                 'أيام إغلاق المتجر',
//                 style: SellersTheme.textStyles.titleLarge.copyWith(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               // Closing Days Input Section
//               TextField(
//                 decoration: SellersInputDecoration.primary(
//                   label: "ادخل أيام إغلاق المتجر"
//                 ), 
//               ),
//               SizedBox(height: 24),
//               // Save Button
//               MyButton(
//                 onClick: () {
//                   // Implement save functionality here
//                 },
//                 child: Text(
//                   'حفظ',
//                   style: SellersTheme.textStyles.dialogButtonText.copyWith(
//                     fontSize: 16, // Adjust button text size
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../../../../theme/sellers_theme.dart';
import '../../../widgets/my_button.dart';

class ShopInfoPage extends StatefulWidget {
  @override
  _ShopInfoPageState createState() => _ShopInfoPageState();
}

class _ShopInfoPageState extends State<ShopInfoPage> {
  // List to store the selected days
  List<String> selectedDays = [];

  // Whether to show the CheckboxListTile
  bool showCheckboxListTile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('معلومات المتجر'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'صورة المتجر',
                style: SellersTheme.textStyles.titleLarge.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              // Shop Image Upload Section
              Container(
                width: double.infinity,
                height: 300, // Set a fixed height for the image container
                child: AspectRatio(
                  aspectRatio: 1, // Set aspect ratio as needed
                  child: CircleAvatar(
                    backgroundColor: SellersTheme.colors.fieldFillColor,
                    child: Icon(
                      Icons.camera_alt,
                      size: 100,
                      color: SellersTheme.colors.displayTextColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text(
                'عنوان المتجر',
                style: SellersTheme.textStyles.titleLarge.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: SellersInputDecoration.primary(
                  label: "ادخل عنوان المتجر"
                ), 
              ),
              SizedBox(height: 24),
              Text(
                'وقت فتح المتجر',
                style: SellersTheme.textStyles.titleLarge.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              // Opening Time Input Section
              TextField(
                decoration: SellersInputDecoration.primary(
                  label: "ادخل وقت فتح المتجر"
                ), 
              ),
              SizedBox(height: 24),
              Text(
                'وقت غلق المتجر',
                style: SellersTheme.textStyles.titleLarge.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              // Closing Time Input Section
              TextField(
                decoration: SellersInputDecoration.primary(
                  label: "ادخل وقت غلق المتجر"
                ), 
              ),
              SizedBox(height: 24),
              Text(
                'أيام إغلاق المتجر',
                style: SellersTheme.textStyles.titleLarge.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              // Closing Days Input Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (String day in [
                    'السبت',
                    'الأحد',
                    'الاثنين',
                    'الثلاثاء',
                    'الأربعاء',
                    'الخميس',
                    'الجمعة',
                  ])
                    CheckboxListTile(
                      title: Text(
                        day,
                        style: SellersTheme.textStyles.fieldContent,
                      ),
                      value: selectedDays.contains(day),
                      onChanged: (value) {
                        setState(() {
                          if (value!) {
                            selectedDays.add(day);
                          } else {
                            selectedDays.remove(day);
                          }
                        });
                      },
                    ),
                ],
              ),
              SizedBox(height: 24),
              // Save Button
              MyButton(
                onClick: () {
                  // Implement save functionality here
                  print(selectedDays);
                },
                child: Text(
                  'حفظ',
                  style: SellersTheme.textStyles.dialogButtonText.copyWith(
                    fontSize: 16, // Adjust button text size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
