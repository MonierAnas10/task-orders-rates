import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taskordersrate/dummy_data.dart';
import 'package:taskordersrate/features/order/screen/order_details_screen.dart';
import 'package:taskordersrate/features/order/widget/card_order.dart';

class CompleteOrdersTab extends StatelessWidget {
  // List<OrderCard> listOrderCard;
  const CompleteOrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => context.push(
          CompletedOrderDetailsScreen.path,
          extra: dummyCompletedOrders[index],
        ),
        child: OrderCard(
          orderId: dummyCompletedOrders[index].id,
          customerName: dummyCompletedOrders[index].customerName,
          date: dummyCompletedOrders[index].date,
          total: dummyCompletedOrders[index].total,
          status: OrderStatus.complete,
        ),
      ),
      itemCount: dummyCompletedOrders.length,
    );
  }
}
