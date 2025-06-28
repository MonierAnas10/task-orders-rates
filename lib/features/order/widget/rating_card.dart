import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskordersrate/features/order/model/rating_input.dart';

class RatingCard extends StatelessWidget {
  final String title;
  final RatingInput input;
  final bool showValidation;

  const RatingCard({
    super.key,
    required this.title,
    required this.input,
    this.showValidation = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Rate $title",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          8.verticalSpace,
          Row(
            children: List.generate(5, (index) {
              return GestureDetector(
                onTap: () {
                  input.rating = index + 1;
                  (context as Element).markNeedsBuild();
                },
                child: Icon(
                  index < input.rating ? Icons.star : Icons.star_border,
                  color: Colors.orange,
                  size: 28,
                ),
              );
            }),
          ),
          if (showValidation && input.rating == 0)
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                "Please rate $title",
                style: TextStyle(color: Colors.red[700], fontSize: 13),
              ),
            ),
          12.verticalSpace,
          TextField(
            onChanged: (val) => input.comment = val,
            maxLines: 2,

            decoration: InputDecoration(
              hintText: "Write a comment about $title...",
              filled: true,
              fillColor: Colors.white,
              contentPadding: REdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              errorText: showValidation && input.comment.trim().isEmpty
                  ? "Comment is required"
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
