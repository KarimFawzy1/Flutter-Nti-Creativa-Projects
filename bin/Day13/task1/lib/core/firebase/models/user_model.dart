class UserModel {
  final String name;
  final String email;
  final String password;
  final List<String> favRecipes;
  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.favRecipes,
  });

  //to json
  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'password': password,
    'favRecipes': favRecipes,
  };

  //from json
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    name: json['name'] ?? '',
    email: json['email'] ?? '',
    password: json['password'] ?? '',
    favRecipes:
        (json['favRecipes'] as List<dynamic>?)
            ?.map((e) => e.toString())
            .toList() ??
        [],
  );
}
