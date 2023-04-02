// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final String fullName;
  final int age;
  final String occupation;
  final String description;
  final String imagePath;
  User({
    required this.fullName,
    required this.age,
    required this.occupation,
    required this.description,
    required this.imagePath,
  });

  @override
  String toString() {
    return 'User(fullName: $fullName, age: $age, occupation: $occupation, description: $description, imagePath: $imagePath)';
  }
}
