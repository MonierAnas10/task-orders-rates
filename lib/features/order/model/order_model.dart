enum OrderStatus { waiting, active, complete }

class OrderModel {
  final String id;
  final String customerName;
  final String date;
  final double total;
  final OrderStatus status;
  final List<OrderItemModel> items;
  final RatingSection rating;

  OrderModel({
    required this.id,
    required this.customerName,
    required this.date,
    required this.total,
    required this.status,
    required this.items,
    required this.rating,
  });

  OrderModel copyWith({
    String? id,
    String? customerName,
    String? date,
    double? total,
    OrderStatus? status,
    List<OrderItemModel>? items,
    RatingSection? rating,
  }) {
    return OrderModel(
      id: id ?? this.id,
      customerName: customerName ?? this.customerName,
      date: date ?? this.date,
      total: total ?? this.total,
      status: status ?? this.status,
      items: items ?? this.items,
      rating: rating ?? this.rating,
    );
  }
}

class OrderItemModel {
  final String name;
  final int quantity;
  final double price;

  OrderItemModel({
    required this.name,
    required this.quantity,
    required this.price,
  });

  OrderItemModel copyWith({String? name, int? quantity, double? price}) {
    return OrderItemModel(
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }
}

class RatingSection {
  final int? productRating;
  final int? sellerRating;
  final int? deliveryRating;
  final String? productComment;
  final String? sellerComment;
  final String? deliveryComment;

  RatingSection({
    this.productRating,
    this.sellerRating,
    this.deliveryRating,
    this.productComment,
    this.sellerComment,
    this.deliveryComment,
  });

  RatingSection copyWith({
    int? productRating,
    int? sellerRating,
    int? deliveryRating,
    String? productComment,
    String? sellerComment,
    String? deliveryComment,
  }) {
    return RatingSection(
      productRating: productRating ?? this.productRating,
      sellerRating: sellerRating ?? this.sellerRating,
      deliveryRating: deliveryRating ?? this.deliveryRating,
      productComment: productComment ?? this.productComment,
      sellerComment: sellerComment ?? this.sellerComment,
      deliveryComment: deliveryComment ?? this.deliveryComment,
    );
  }

  bool get isEmpty =>
      (productRating == null || productRating == 0) &&
      (sellerRating == null || sellerRating == 0) &&
      (deliveryRating == null || deliveryRating == 0) &&
      (productComment == null || productComment!.trim().isEmpty) &&
      (sellerComment == null || sellerComment!.trim().isEmpty) &&
      (deliveryComment == null || deliveryComment!.trim().isEmpty);
}
