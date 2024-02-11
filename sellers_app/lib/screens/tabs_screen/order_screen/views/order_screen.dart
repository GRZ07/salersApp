import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/order_provider.dart';
import 'widgets/orders_list.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ordersProvider = Provider.of<OrdersProvider>(context);

    return Scaffold(
      body: OrdersList(orders: [
        ...ordersProvider.awaitingOrders,
        ...ordersProvider.confimedOrders,
        ...ordersProvider.confirmingOrders,
        ...ordersProvider.testingOrders,
      ]),
    );
  }
}
