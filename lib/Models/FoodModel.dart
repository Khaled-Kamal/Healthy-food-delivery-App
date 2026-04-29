class FoodModel {
  final String image;
  final String title;

  FoodModel({required this.image, required this.title});
}

List<FoodModel> FoodData = [
  FoodModel(image: 'assets/home/Vegetables.png', title: 'Vegetables'),
  FoodModel(image: 'assets/home/Nuts & Seeds.png', title: 'Nuts & Seeds'),
  FoodModel(image: 'assets/home/Protein.png', title: 'Protein'),
  FoodModel(image: 'assets/home/Protein shakes.png', title: 'Protein shakes'),
];
