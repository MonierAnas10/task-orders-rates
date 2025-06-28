import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum OrderStatus { waiting, active, complete }

class OrderCard extends StatelessWidget {
  final String orderId;
  final String customerName;
  final String date;
  final double total;
  final OrderStatus status;

  const OrderCard({
    super.key,
    required this.orderId,
    required this.customerName,
    required this.date,
    required this.total,
    required this.status,
  });

  Color get statusColor {
    switch (status) {
      case OrderStatus.waiting:
        return Colors.orange;
      case OrderStatus.active:
        return Colors.blue;
      case OrderStatus.complete:
        return Colors.green;
    }
  }

  String get statusText {
    switch (status) {
      case OrderStatus.waiting:
        return 'Waiting';
      case OrderStatus.active:
        return 'In Progress';
      case OrderStatus.complete:
        return 'Completed';
    }
  }

  IconData get statusIcon {
    switch (status) {
      case OrderStatus.waiting:
        return Icons.hourglass_bottom_rounded;
      case OrderStatus.active:
        return Icons.drive_eta_rounded;
      case OrderStatus.complete:
        return Icons.check_circle_outline;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: REdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Padding(
        padding: REdgeInsets.all(16),
        child: Row(
          children: [
            // Status Icon
            CircleAvatar(
              backgroundColor: statusColor.withOpacity(0.15),
              child: Icon(statusIcon, color: statusColor),
            ),
            16.horizontalSpace,

            // Order Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order #$orderId',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  4.verticalSpace,
                  Text(
                    customerName,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  4.verticalSpace,
                  Text(date, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),

            // Total + Status Badge
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$${total.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                6.verticalSpace,
                Container(
                  padding: REdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    statusText,
                    style: TextStyle(
                      color: statusColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
