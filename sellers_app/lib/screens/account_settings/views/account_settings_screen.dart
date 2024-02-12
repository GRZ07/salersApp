// import 'package:flutter/material.dart';
// import 'package:sellers_app/theme/sellers_theme.dart';

// class AccountSettingsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: SellersTheme.colors.backgroundColor,
//         elevation: 1,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: SellersTheme.colors.primaryColor),
//           onPressed: () {}, // Placeholder for back action
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.settings, color: SellersTheme.colors.primaryColor),
//             onPressed: () {}, // Placeholder for settings action
//           ),
//         ],
//       ),
//       body: Container(
//         padding: EdgeInsets.only(left: 16, top: 25, right: 16),
//         child: ListView(
//           children: [
//             Text(
//               "إعدادات الحساب",
//               style: SellersTheme.textStyles.titleLarge,
//             ),
//             SizedBox(height: 15),
//             Center(
//               child: Stack(
//                 children: [
//                   Container(
//                     width: 150,
//                     height: 150,
//                     decoration: BoxDecoration(
//                       border: Border.all(width: 4, color: SellersTheme.colors.backgroundColor),
//                       boxShadow: [
//                         BoxShadow(spreadRadius: 2, blurRadius: 10, color: Colors.black.withOpacity(0.1), offset: Offset(0, 10))
//                       ],
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: NetworkImage("https://example.com/user_profile.jpg"), // Placeholder image URL
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     right: 0,
//                     child: Container(
//                       height: 40,
//                       width: 40,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(width: 4, color: SellersTheme.colors.backgroundColor),
//                         color: SellersTheme.colors.primaryColor,
//                       ),
//                       child: Icon(Icons.edit, color: Colors.white),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 35),
//             _buildTextField("الإسم الكامل", "Evan Kutto"),
//             _buildTextField("اسم المستخدم", "evankutto"),
//             _buildTextField("الإيميل", "evan@gmail.com"),
//             _buildTextField("الرمز", "********", isPassword: true),
//             _buildTextField("العنوان", "123 Seller Street, India"),
//             _buildTextField("أوقات الدوام", "08:00 AM"),
//             _buildTextField("أوقات إغلاق المحل", "09:00 PM"),
//             // Placeholder for multi-select shop close days
//             _buildDaysPicker("ايام عدم الدوام"),
//             SizedBox(height: 35),
//             ElevatedButton(
//               onPressed: () {}, // Placeholder for save action
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: SellersTheme.colors.primaryColor,
//                 minimumSize: Size(double.infinity, 50), // Make the button full width and 50px high
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//               ),
//               child: Text("حفظ", style: TextStyle(color: Colors.white)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(String labelText, String placeholder, {bool isPassword = false}) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 35.0),
//       child: TextField(
//         obscureText: isPassword,
//         decoration: InputDecoration(
//           labelText: labelText,
//           hintText: placeholder,
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(SellersTheme.radius)),
//           labelStyle: SellersTheme.textStyles.fieldLabel,
//           floatingLabelBehavior: FloatingLabelBehavior.always,
//           suffixIcon: isPassword ? Icon(Icons.remove_red_eye, color: SellersTheme.colors.primaryColor) : null,
//         ),
//       ),
//     );
//   }

//   Widget _buildDaysPicker(String labelText) {
//     // Placeholder for days picker
//     // You might want to replace this with a more interactive widget
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 35.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(labelText, style: SellersTheme.textStyles.fieldLabel),
//           SizedBox(height: 10),
//           Wrap(
//             spacing: 8.0, // gap between adjacent chips
//             runSpacing: 4.0, // gap between lines
//             children: List<Widget>.generate(
//               7,
//               (int index) {
//                 return Chip(
//                   label: Text(["السبت", "الأحد", "الاثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة"][index]),
//                   backgroundColor: SellersTheme.colors.primaryColor,
//                 );
//               },
//             ).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:sellers_app/theme/sellers_theme.dart';

// class AccountSettingsPage extends StatelessWidget {
//   final List<bool> selectedDays;

//   AccountSettingsPage({Key? key, required this.selectedDays}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     List<String> days = ["السبت", "الأحد", "الاثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة"];

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: SellersTheme.colors.backgroundColor,
//         elevation: 1,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: SellersTheme.colors.primaryColor),
//           onPressed: () {
//             // Handle back action
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.settings, color: SellersTheme.colors.primaryColor),
//             onPressed: () {
//               // Handle settings action
//             },
//           ),
//         ],
//       ),
//       body: Container(
//         padding: EdgeInsets.only(left: 16, top: 25, right: 16),
//         child: ListView(
//           children: [
//             Text(
//               "إعدادات الحساب",
//               style: SellersTheme.textStyles.titleLarge,
//             ),
//             SizedBox(height: 15),
//             // Include the profile image and other text fields as needed
//             ..._buildDaysPicker(days, context),
//             SizedBox(height: 35),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle save action
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: SellersTheme.colors.primaryColor,
//                 minimumSize: Size(double.infinity, 50),
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//               ),
//               child: Text("حفظ", style: TextStyle(color: Colors.white)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   List<Widget> _buildDaysPicker(List<String> days, BuildContext context) {
//     return List<Widget>.generate(days.length, (index) {
//       return CheckboxListTile(
//         title: Text(days[index], style: TextStyle(color: SellersTheme.colors.fieldContentColor)),
//         value: selectedDays[index],
//         onChanged: (bool? value) {
//           // Here you would use your external state management to update the state
//           // For now, this is just a placeholder to indicate where to integrate
//         },
//         activeColor: SellersTheme.colors.primaryColor,
//         checkColor: Colors.white,
//         controlAffinity: ListTileControlAffinity.leading,
//       );
//     });
//   }
// }

import 'package:flutter/material.dart';
import 'package:sellers_app/theme/sellers_theme.dart'; // Ensure this path matches your project structure

class AccountSettingsPage extends StatelessWidget {
  final List<bool> selectedDays;

  AccountSettingsPage({Key? key, required this.selectedDays}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> days = ["السبت", "الأحد", "الاثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة"];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: SellersTheme.colors.backgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: SellersTheme.colors.primaryColor),
          onPressed: () {
            Navigator.pop(context); // Adjust as needed for your app's navigation
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: SellersTheme.colors.primaryColor),
            onPressed: () {
              // Placeholder for settings action
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text(
              "إعدادات الحساب",
              style: SellersTheme.textStyles.titleLarge,
            ),
            SizedBox(height: 15),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: SellersTheme.colors.backgroundColor),
                      boxShadow: [
                        BoxShadow(spreadRadius: 2, blurRadius: 10, color: Colors.black.withOpacity(0.1), offset: Offset(0, 10))
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://example.com/user_profile.jpg"), // Adjust the image URL as needed
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 4, color: SellersTheme.colors.backgroundColor),
                        color: SellersTheme.colors.primaryColor,
                      ),
                      child: Icon(Icons.edit, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            _buildTextField("الإسم الكامل", "Evan Kutto", false),
            _buildTextField("اسم المستخدم", "evankutto", false),
            _buildTextField("الإيميل", "evan@gmail.com", false),
            _buildTextField("الرمز", "********", true),
            _buildTextField("العنوان", "123 Seller Street, India", false),
            _buildTextField("أوقات الدوام", "08:00 AM", false),
            _buildTextField("أوقات إغلاق المحل", "09:00 PM", false),
            ...days.map((day) => CheckboxListTile(
              title: Text(day, style: TextStyle(color: SellersTheme.colors.fieldContentColor)),
              value: selectedDays[days.indexOf(day)],
              onChanged: (bool? value) {
                // Placeholder: Implement state management logic to handle change
              },
              activeColor: SellersTheme.colors.primaryColor,
              checkColor: Colors.white,
              controlAffinity: ListTileControlAffinity.leading,
            )).toList(),
            SizedBox(height: 35),
            ElevatedButton(
              onPressed: () {
                // Placeholder for save action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: SellersTheme.colors.primaryColor,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              child: Text("حفظ", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, String placeholder, bool isPassword) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: placeholder,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(SellersTheme.radius)),
          labelStyle: SellersTheme.textStyles.fieldLabel,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: isPassword ? Icon(Icons.remove_red_eye, color: SellersTheme.colors.primaryColor) : null,
        ),
      ),
    );
  }
}
