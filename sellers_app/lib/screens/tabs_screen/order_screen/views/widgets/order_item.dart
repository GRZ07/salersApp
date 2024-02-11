import 'package:flutter/material.dart';

import '../../../../../../../models/order.dart';
import '../../../../../../../theme/sellers_theme.dart';
import '../../../../../../../utils/format_date.dart';
import '../../../../../../../utils/format_time.dart';
import '../../../../../../../utils/get_order_status.dart';
class OrderItem extends StatelessWidget {
  final Order order;

  // ignore: use_key_in_widget_constructors
  const OrderItem({required this.order});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle order click
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5), // Add padding here
          child: ListTile(
            title: Text(
              order.sellerName,
              style: SellersTheme.textStyles.titleLarge,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'الحالة: ${getOrderStatus(order.status)}',
                      style: SellersTheme.textStyles.labelSmall.copyWith(
                        color: SellersTheme.colors.secondSecondaryColor,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Text(
                      formatDate(order.date),
                      style: SellersTheme.textStyles.labelSmall.copyWith(
                        color: SellersTheme.colors.secondSecondaryColor,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'السعر: ${order.price}',
                      style: SellersTheme.textStyles.labelSmall.copyWith(
                        color: SellersTheme.colors.secondSecondaryColor,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Text(
                      formatTime(order.date),
                      style: SellersTheme.textStyles.labelSmall.copyWith(
                        color: SellersTheme.colors.secondSecondaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
