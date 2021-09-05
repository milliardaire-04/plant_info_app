class Plant {
  final String image, title, country, url;
  final int price;
  Plant(
      {this.image = "assets/images/default_image.png",
      required this.title,
      required this.country,
      required this.price,
      required this.url});
}

