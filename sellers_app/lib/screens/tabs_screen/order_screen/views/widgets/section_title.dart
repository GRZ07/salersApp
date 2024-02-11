

// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../../../../../../theme/sellers_theme.dart';

class SectionTitle extends StatelessWidget {
  final String label;

  const SectionTitle({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 17, top: 10, left: 5),
            child: Text(
              label,
              style: SellersTheme.textStyles.listDividerLabel,
            ),
          ),
          Expanded(
            child: Container(
              height: 1.0,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 180, 180, 180),
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
          // const SizedBox(
          //   width: 15,
          // ),
          // SizedBox(
          //   height: 15,
          //   width: 15,
          //   child: Image.asset(
          //     'lib/assets/icons/down_arrow.png',
          //     color: const Color.fromARGB(255, 172, 202, 255),
          //   ),
          // )
        ],
      ),
    );
  }
}


// class SectionTitle extends StatelessWidget {
//   final String title;

//   SectionTitle({required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Text(
//         title,
//         style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }