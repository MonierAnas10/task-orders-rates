import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskordersrate/features/order/model/order_model.dart';
import 'package:taskordersrate/features/order/widget/order_info.dart';

import '../widget/order_item.dart';
import '../widget/rating_bottom_sheet.dart';

class CompletedOrderDetailsScreen extends StatelessWidget {
  final OrderModel orderModel;
  static String get name => "/CompletedOrderDetailsScreen";
  static String get path => "/CompletedOrderDetailsScreen";
  const CompletedOrderDetailsScreen({super.key, required this.orderModel});

  ///////////////////   JUST FOR TEST ///////////////////////
  bool isRatingEmpty(RatingSection rating) {
    return rating.productRating == null &&
        rating.sellerRating == null &&
        rating.deliveryRating == null &&
        (rating.productComment == null || rating.productComment!.isEmpty) &&
        (rating.sellerComment == null || rating.sellerComment!.isEmpty) &&
        (rating.deliveryComment == null || rating.deliveryComment!.isEmpty);
  }
  ///////////////////   JUST FOR TEST ///////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Details"),
        backgroundColor: Colors.white,
        elevation: 1,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: REdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            OrderInformation(id: orderModel.id, date: orderModel.date),

            20.verticalSpace,

            const Text(
              "Items",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            12.verticalSpace,
            SizedBox(
              height: 200.h,
              child: ListView.builder(
                itemBuilder: (context, index) => OrderItem(
                  name: orderModel.items[index].name,
                  quantity: orderModel.items[index].quantity,
                  price: orderModel.items[index].price,
                ),
                itemCount: orderModel.items.length,
              ),
            ),

            Divider(height: 32.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$${orderModel.total}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            50.verticalSpace,
            isRatingEmpty(orderModel.rating)
                ? ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: (context) =>
                            RatingBottomSheet(orderId: orderModel.id),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFF530D),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Rate Your Experience",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: REdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Review submitted ✅",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        8.verticalSpace,
                        Row(
                          children: [
                            Text("Average Rating : 4.2 "),
                            Icon(Icons.star, color: Colors.orange),
                          ],
                        ),
                      ],
                    ),
                  ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
