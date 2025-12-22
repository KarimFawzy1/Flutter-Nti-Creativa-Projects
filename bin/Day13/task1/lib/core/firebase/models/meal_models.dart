class MealModel {
  final String name;
  final String description;
  final String image;
  final String calories;
  MealModel({
    required this.name,
    required this.description,
    required this.image,
    required this.calories,
  });

  //to json
  Map<String, dynamic> toJson() => {
    'name': name,
    'description': description,
    'image': image,
    'calories': calories,
  };

  //from json
  factory MealModel.fromJson(Map<String, dynamic> json) => MealModel(
    name: json['name'] ?? '',
    description: json['description'] ?? '',
    image: json['image'] ?? '',
    calories: json['calories'] ?? '',
  );
}
