class PersonModel {
  final String name;
  final int age;

  PersonModel({required this.name, required this.age});

  factory PersonModel.fromJson(Map<String, dynamic> json) {
    return PersonModel(      
      name: json['name'],
      age: json['age'],
    );
  }
}
