class CardModel {
  final String image;
  final String food;
  final String title;
  final String subtitle;

  CardModel({
    required this.image,
    required this.food,
    required this.title,
    required this.subtitle,
  });
}

List<CardModel> CardData = [
  CardModel(
    image: 'assets/home/breakfast.png',
    food: 'Breakfast',
    title: 'French Green Salad',
    subtitle: 'Discover the joy of a truly\nnourishing meal.',
  ),
  CardModel(
    image: 'assets/home/lunch.png',
    food: 'Lunch',
    title: 'Green Veggies',
    subtitle: 'Discover the joy of a truly\n nourishing meal.',
  ),
  CardModel(
    image: 'assets/home/breakfast.png',
    food: 'Breakfast',
    title: 'French Green Salad',
    subtitle: 'Discover the joy of a truly\nnourishing meal.',
  ),
  CardModel(
    image: 'assets/home/lunch.png',
    food: 'Lunch',
    title: 'Green Veggies',
    subtitle: 'Discover the joy of a truly\n nourishing meal.',
  ),
];
