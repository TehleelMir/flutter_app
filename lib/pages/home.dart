import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../modules/category_modle.dart';
import '../modules/recommendationModel.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<RecommendationModel> recommendationList = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    recommendationList = RecommendationModel.getRecommendationList()
    return Scaffold(
      appBar: appBar(),
      body: appBody(),
      backgroundColor: Colors.white,
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          child: SvgPicture.asset(
            'assets/icons/Arrow - Left 2.svg',
            height: 20,
            width: 20,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 37,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffF6F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 5,
              width: 5,
            ),
          ),
        )
      ],
    );
  }

  Widget appBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchBar(),
        const SizedBox(
          height: 40,
        ),
        categoryText("Categories"),
        const SizedBox(
          height: 15,
        ),
        horizontalList(),
        const SizedBox(
          height: 40,
        ),
        categoryText('Recommendation for Diet'),
        horizontalListForRecommo()
      ],
    );
  }

  Widget horizontalList() {
    return Container(
      height: 120,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 20, right: 20),
        separatorBuilder: (context, index) {
          return SizedBox(width: 25);
        },
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return listItemWidget(index);
        },
      ),
    );
  }

  Widget horizontalListForRecommo() {
    return Container(
      height: 200,
      child: ListView.separated(
        itemCount: recommendationList.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 30,);
        },
        padding: const EdgeInsets.only(left: 20, right: 20),
        itemBuilder: (context, index) {
          return listItemWidetForRecommo(index);
        },
      ),
    );
  }


  Container listItemWidetForRecommo(int index) {
    return Container(

    );
  }

  Container listItemWidget(int index) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: categories[index].boxColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(categories[index].icon),
            ),
          ),
          Text(
            categories[index].name,
            style: const TextStyle(
                fontWeight: FontWeight.w400, color: Colors.black, fontSize: 14),
          )
        ],
      ),
    );
  }

  Widget categoryText(String str) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        str,
        style: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget searchBar() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search Pancake',
            hintStyle: const TextStyle(color: Color(0xffDDDADA), fontSize: 14),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(15),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
            suffixIcon: Container(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const VerticalDivider(
                      color: Colors.black,
                      thickness: 0.1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: SvgPicture.asset('assets/icons/Filter.svg'),
                    ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
