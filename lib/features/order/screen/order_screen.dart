import 'package:flutter/material.dart';
import 'package:taskordersrate/features/order/widget/active_orders.dart';
import 'package:taskordersrate/features/order/widget/complete_orders.dart';
import 'package:taskordersrate/features/order/widget/waiting_orders.dart';

class OrderScreen extends StatelessWidget {
  final BuildContext navBarContext;

  OrderScreen({super.key, required this.navBarContext});

  static String get name => "/OrderScreen";
  static String get path => "/";

  final List<Tab> tabs = const [
    Tab(text: 'Waiting Orders'),
    Tab(text: 'Active Orders'),
    Tab(text: 'Complete Orders'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          title: const Text('My Orders', style: TextStyle(color: Colors.black)),
          bottom: TabBar(
            tabs: tabs,
            labelStyle: TextStyle(fontSize: 12),
            labelColor: Color(0xffFF530D),
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color(0xffFF530D),
          ),
        ),
        body: const TabBarView(
          children: [
            WaitingOrdersTab(),
            ActiveOrdersTab(),
            CompleteOrdersTab(),
          ],
        ),
      ),
    );
  }
}
