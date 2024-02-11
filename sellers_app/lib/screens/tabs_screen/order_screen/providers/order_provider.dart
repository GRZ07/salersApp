import 'package:flutter/material.dart';

import '../../../../../models/order.dart';


class OrdersProvider with ChangeNotifier {
  
  // ignore: prefer_final_fields
  final List<Order> _awaitingOrders = [
    Order(
    id: 1,
    status: "awaiting",
    sellerName: "حمود حمادي",
    price: 100.0,
    date: "2023-10-27T09:00:00",
  ),
  Order(
    id: 5,
    status: "awaiting",
    sellerName: "محمد عبدالله",
    price: 90.0,
    date: "2023-10-23T10:30:00",
  ),
  ];

  final List<Order> _confirmedOrders = [
    Order(
    id: 2,
    status: "confirmed",
    sellerName: "علي صالح",
    price: 75.0,
    date: "2023-10-26T15:30:00",
  ),
  ];

  final List<Order> _testingOrders = [
    Order(
    id: 3,
    status: "testing",
    sellerName: "أحمد خالد",
    price: 50.0,
    date: "2023-10-25T12:45:00",
  ),
  Order(
    id: 6,
    status: "testing",
    sellerName: "فاطمة أحمد",
    price: 55.0,
    date: "2023-10-22T08:20:00",
  ),
  ];

  final List<Order> _confirmingOrders = [
    Order(
    id: 4,
    status: "confirming",
    sellerName: "لينا علي",
    price: 120.0,
    date: "2023-10-24T17:15:00",
  ),
  Order(
    id: 7,
    status: "confirming",
    sellerName: "كريم محمود",
    price: 130.0,
    date: "2023-10-21T14:10:00",
  ),

  ];

  List<Order> get awaitingOrders => _awaitingOrders;
  List<Order> get confimedOrders => _confirmedOrders;
  List<Order> get testingOrders => _testingOrders;
  List<Order> get confirmingOrders => _confirmingOrders;

  // You can add methods to modify the orders, if needed
}