import 'dart:ui';

class CategoryModel {
  String name;
  String icon;
  Color boxColor;

  CategoryModel(
      {required this.name, required this.icon, required this.boxColor});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> list = [];

    list.add(CategoryModel(
        name: "Cake",
        icon: "assets/icons/pancakes.svg",
        boxColor: const Color(0xffC58BF2)));

    list.add(CategoryModel(
        name: "Pia",
        icon: "assets/icons/pie.svg",
        boxColor: const Color(0xff92A3FD)));

    list.add(CategoryModel(
        name: "Smoothies",
        icon: "assets/icons/orange-snacks.svg",
        boxColor: const Color(0xffC58BF2)));

    list.add(CategoryModel(
        name: "Cake",
        icon: "assets/icons/pancakes.svg",
        boxColor: const Color(0xffC58BF2)));

    list.add(CategoryModel(
        name: "Pia",
        icon: "assets/icons/pie.svg",
        boxColor: const Color(0xff92A3FD)));

    list.add(CategoryModel(
        name: "Smoothies",
        icon: "assets/icons/orange-snacks.svg",
        boxColor: const Color(0xffC58BF2)));

    return list;
  }
}
