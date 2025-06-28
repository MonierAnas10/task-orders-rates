import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderInformation extends StatelessWidget {
  const OrderInformation({super.key, required this.date, required this.id});

  final String id;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: REdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Order #$id",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          8.verticalSpace,
          Text("Date: $date"),
          Text("Status: Completed", style: TextStyle(color: Colors.green)),
        ],
      ),
    );
  }
}
