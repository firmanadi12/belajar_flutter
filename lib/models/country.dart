class Country {
  int id;
  String name;
  String imageUrl;
  bool isPopular;

  Country({required this.id, required this.imageUrl, required this.name, this.isPopular = false});
}
