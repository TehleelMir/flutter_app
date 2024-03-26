import 'dart:ui';

class RecommendationModel {
  String title;
  String description;
  String buttonText = "View";
  Color backgroundColor;
  Color buttonBackgroundColor;
  String icon;

  RecommendationModel({
    required this.title,
    required this.description,
    required this.backgroundColor,
    required this.buttonBackgroundColor,
    required this.icon
  });

  static List<RecommendationModel> getRecommendationList() {
    List<RecommendationModel> list = [];

    list.add(
        RecommendationModel(title: 'Cake',
            description: 'some description here',
            backgroundColor: const Color(0xff92A3FD),
            buttonBackgroundColor: const Color(0xffC58BF2),
            icon: "assets/icons/pancakes.svg")
    );

    list.add(
        RecommendationModel(title: 'Cake',
            description: 'some description here',
            backgroundColor: const Color(0xffC58BF2),
            buttonBackgroundColor: const Color(0xff92A3FD),
            icon: "assets/icons/pancakes.svg")
    );

    list.add(
        RecommendationModel(title: 'Cake',
            description: 'some description here',
            backgroundColor: const Color(0xff92A3FD),
            buttonBackgroundColor: const Color(0xffC58BF2),
            icon: "assets/icons/pancakes.svg")
    );

    list.add(
        RecommendationModel(title: 'Cake',
            description: 'some description here',
            backgroundColor: const Color(0xffC58BF2),
            buttonBackgroundColor: const Color(0xff92A3FD),
            icon: "assets/icons/pancakes.svg")
    );

    list.add(
        RecommendationModel(title: 'Cake',
            description: 'some description here',
            backgroundColor: const Color(0xff92A3FD),
            buttonBackgroundColor: const Color(0xffC58BF2),
            icon: "assets/icons/pancakes.svg")
    );

    list.add(
        RecommendationModel(title: 'Cake',
            description: 'some description here',
            backgroundColor: const Color(0xffC58BF2),
            buttonBackgroundColor: const Color(0xff92A3FD),
            icon: "assets/icons/pancakes.svg")
    );

    list.add(
        RecommendationModel(title: 'Cake',
            description: 'some description here',
            backgroundColor: const Color(0xff92A3FD),
            buttonBackgroundColor: const Color(0xffC58BF2),
            icon: "assets/icons/pancakes.svg")
    );

    list.add(
        RecommendationModel(title: 'Cake',
            description: 'some description here',
            backgroundColor: const Color(0xffC58BF2),
            buttonBackgroundColor: const Color(0xff92A3FD),
            icon: "assets/icons/pancakes.svg")
    );

    return list;
  }
}