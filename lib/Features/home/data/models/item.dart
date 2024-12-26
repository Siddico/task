class Item {
  final String title;
  final int discount;
  final String phone;
  final String location;
  final double rating;
  final String image;
  final String check1;
  final String check2;
  final dynamic width;
  String? description;
  Item({
    required this.title,
    required this.discount,
    required this.phone,
    required this.location,
    required this.rating,
    required this.image,
    required this.check1,
    required this.check2,
    required this.width,
    this.description,
  });
}
