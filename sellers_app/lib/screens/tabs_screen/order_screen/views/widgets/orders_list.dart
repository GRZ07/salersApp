// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../../../../../../../models/order.dart';
import 'order_item.dart';

class OrdersList extends StatelessWidget {
  final List<Order> orders;

  OrdersList({required this.orders});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: orders.map((order) {
        return OrderItem(order: order);
      }).toList(),
    );
  }
}