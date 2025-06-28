import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:taskordersrate/dummy_data.dart';
import 'package:taskordersrate/features/order/model/order_model.dart';
import 'package:taskordersrate/features/order/model/rating_input.dart';
import 'package:taskordersrate/features/order/screen/order_screen.dart';
import 'package:taskordersrate/features/order/widget/rating_card.dart';

class RatingBottomSheet extends StatefulWidget {
  final String orderId;

  const RatingBottomSheet({super.key, required this.orderId});

  @override
  State<RatingBottomSheet> createState() => _RatingBottomSheetState();
}

class _RatingBottomSheetState extends State<RatingBottomSheet> {
  final productInput = RatingInput();
  final sellerInput = RatingInput();
  final deliveryInput = RatingInput();
  final generalCommentController = TextEditingController();

  bool showValidation = false;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.85,
      minChildSize: 0.5,
      builder: (_, controller) {
        return Padding(
          padding: REdgeInsets.all(16),
          child: ListView(
            controller: controller,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: REdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const Text(
                "Rate Your Experience",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              12.verticalSpace,
              RatingCard(
                title: "Products",
                input: productInput,
                showValidation: showValidation,
              ),
              16.verticalSpace,
              RatingCard(
                title: "Seller",
                input: sellerInput,
                showValidation: showValidation,
              ),
              16.verticalSpace,
              RatingCard(
                title: "Delivery Company",
                input: deliveryInput,
                showValidation: showValidation,
              ),
              16.verticalSpace,
              TextField(
                controller: generalCommentController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Leave a general comment...",
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              20.verticalSpace,
              ElevatedButton(
                onPressed: () {
                  if (!productInput.isValid ||
                      !sellerInput.isValid ||
                      !deliveryInput.isValid) {
                    setState(() => showValidation = true);
                    return;
                  }

                  final index = dummyCompletedOrders.indexWhere(
                    (order) => order.id == widget.orderId,
                  );

                  if (index != -1) {
                    dummyCompletedOrders[index] = dummyCompletedOrders[index]
                        .copyWith(
                          rating: RatingSection(
                            productRating: productInput.rating,
                            sellerRating: sellerInput.rating,
                            deliveryRating: deliveryInput.rating,
                            productComment: productInput.comment,
                            sellerComment: sellerInput.comment,
                            deliveryComment: deliveryInput.comment,
                          ),
                        );
                  }
                  Fluttertoast.showToast(
                    msg: "Rated successfully ✅",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.TOP,
                    backgroundColor: Colors.greenAccent,
                    textColor: Colors.white,
                    fontSize: 16.sp,
                    timeInSecForIosWeb: 4,
                  );
                  context.go(OrderScreen.path);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: REdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Submit Review",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
