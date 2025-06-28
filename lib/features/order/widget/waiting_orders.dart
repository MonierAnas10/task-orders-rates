import 'package:flutter/material.dart';
import 'package:taskordersrate/features/order/widget/card_order.dart';

class WaitingOrdersTab extends StatelessWidget {
  // List<OrderCard> listOrderCard;
  const WaitingOrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => OrderCard(
        orderId: '1023',
        customerName: 'Mohammed Ali',
        date: 'June 28, 2025',
        total: 150.75,
        status: OrderStatus.waiting,
      ),
      itemCount: 4,
    );
  }
}
