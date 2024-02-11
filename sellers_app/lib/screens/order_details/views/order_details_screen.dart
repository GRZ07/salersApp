import 'package:sellers_app/theme/sellers_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For date formatting

// Your SellersTheme and related classes should be defined above or in a separate file and imported.

class OrderItem {
  final String sellerFullName;
  final DateTime orderDateTime;
  final double totalPrice;
  final int itemCount;
  final List<String> itemsList;

  OrderItem({
    required this.sellerFullName,
    required this.orderDateTime,
    required this.totalPrice,
    required this.itemCount,
    required this.itemsList,
  });
}

class OrderDetailsPage extends StatelessWidget {
  final OrderItem orderItem;

  const OrderDetailsPage({required this.orderItem, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('معلومات الطلب', style: SellersTheme.textStyles.titleLarge),
        backgroundColor: SellersTheme.colors.primaryColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.zero, // No space around the card
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // No rounded corners
            ),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch the columns to the full width of the card
                children: [
                  _buildDetailItem('البائع', orderItem.sellerFullName),
                  _buildDivider(),
                  _buildDetailItem(
                    'تاريخ الطلب',
                    DateFormat('dd MMM yyyy – hh:mm a').format(orderItem.orderDateTime),
                  ),
                  _buildDivider(),
                  _buildDetailItem(
                    'السعر الإجمالي',
                    '\$${orderItem.totalPrice.toStringAsFixed(2)}',
                  ),
                  _buildDivider(),
                  _buildDetailItem('عدد الطلبات', orderItem.itemCount.toString()),
                  _buildDivider(),
                  ListTile(
                    title: Text(
                      'قائمة الطلبات',
                      style: SellersTheme.textStyles.titleLarge.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ...orderItem.itemsList.map((item) => _buildItem(item)).toList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailItem(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: RichText(
        text: TextSpan(
          style: SellersTheme.textStyles.display.copyWith(color: SellersTheme.colors.fieldContentColor),
          children: [
            TextSpan(
              text: '$label: ',
              style: SellersTheme.textStyles.titleMedium.copyWith(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(color: SellersTheme.colors.primaryColorTransparent);
  }

  Widget _buildItem(String item) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        title: Text(
          item,
          style: SellersTheme.textStyles.display.copyWith(color: SellersTheme.colors.fieldContentColor),
        ),
      ),
    );
  }
}
