class Snack {
  final String name;
  final String type;
  final String shortDesc;
  final String desc;
  final String image;
  final int rate;
  final int price;

  Snack({
    required this.name,
    required this.type,
    required this.shortDesc,
    required this.desc,
    required this.image,
    required this.rate,
    required this.price
  });
}

List<Snack> menu = [
  Snack(
      name: "Hamburger",
      type: 'Spicey',
      shortDesc: "Roti isi daging dan sayuran",
      desc:
      "Hamburger adalah sejenis makanan berupa roti berbentuk bundar yang diiris dua dan di tengahnya diisi dengan patty yang biasanya diambil dari daging, kemudian sayur-sayuran berupa selada, tomat dan bawang bombai.",
      image: "assets/images/hamburger.jpg",
      rate: 5,
      price: 22000),
  Snack(
      name: "Corn Dog",
      type: 'Spicey',
      shortDesc: "Sosis panggang ditusuk",
      desc:
      "makanan yang terbuat dari sosis (biasanya hot dog) ditusuk yang dilapisi dengan lapisan tebal adonan encer tepung jagung kasar (cornmeal) dan digoreng rendam.",
      image: "assets/images/corn_dog.jpg",
      rate: 5,
      price: 18000)
];
