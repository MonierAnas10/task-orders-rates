class RatingInput {
  int rating;
  String comment;

  RatingInput({this.rating = 0, this.comment = ''});

  bool get isValid => rating > 0 && comment.trim().isNotEmpty;
}
