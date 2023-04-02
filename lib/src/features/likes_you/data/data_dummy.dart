import 'package:tinder_clone/src/features/likes_you/domain/user.dart';
import 'package:tinder_clone/src/theme_manager/asset_image_icon_manager.dart';

List<User> dataDummy = [
  User(
      fullName: "Sabrina Anho",
      age: 22,
      occupation: "Lawyer",
      description:
          "I love solving problem in terms of finance, business, and any case. With you, we will solve all world problems.",
      imagePath: "${AssetImageIconManager.imagePath}/people_love1_image.png"),
  User(
      fullName: "Shayna",
      age: 20,
      occupation: "Traveler",
      description:
          "I love solving problem in terms of finance, business, and any case. With you, we will solve all world problems.",
      imagePath: "${AssetImageIconManager.imagePath}/people_love2_image.png"),
  User(
      fullName: "Ismirada",
      age: 24,
      occupation: "Doctor",
      description:
          "I love solving problem in terms of finance, business, and any case. With you, we will solve all world problems.",
      imagePath: "${AssetImageIconManager.imagePath}/people_love3_image.png"),
];
