class NonCoffee {
  final String name;
  final String type;
  final String shortDesc;
  final String desc;
  final String image;
  final int rate;
  final int price;

  NonCoffee({
    required this.name,
    required this.type,
    required this.shortDesc,
    required this.desc,
    required this.image,
    required this.rate,
    required this.price
  });
}

List<NonCoffee> menu = [
  NonCoffee(
      name: "Matcha Latte",
      type: 'Hot',
      shortDesc: "Matcha dan susu hangat",
      desc:
      "Matcha latte atau kerap disebut green tea latte adalah minuman yang terbuat dari matcha bubuk dicampur dengan susu cair. Matcha latte maupun green tea latte tidak mengandung kopi.",
      image: "assets/images/matcha.jpg",
      rate: 5,
      price: 25000),
  NonCoffee(
      name: "Fresh Milk",
      type: 'Ice',
      shortDesc: "Susu sapi segar",
      desc:
      "Susu murni tinggi akan kandungan zat gizi dan air serta memiliki tingkat keasaman yang netral.",
      image: "assets/images/milk.jpg",
      rate: 5,
      price: 15000)
];
