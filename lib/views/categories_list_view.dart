import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  final List<CategoryModel> categories = [
    CategoryModel(
      categoryName: 'Sports',
      image: 'assets/technology.jpeg',
    ),
    CategoryModel(
      categoryName: 'Business',
      image: 'assets/technology.jpeg',
    ),
    CategoryModel(
      categoryName: 'Entertaiment',
      image: 'assets/technology.jpeg',
    ),
    CategoryModel(
      categoryName: 'General',
      image: 'assets/technology.jpeg',
    ),
    CategoryModel(
      categoryName: 'Health',
      image: 'assets/technology.jpeg',
    ),
    CategoryModel(
      categoryName: 'Science',
      image: 'assets/technology.jpeg',
    ),
    CategoryModel(
      categoryName: 'Technology',
      image: 'assets/technology.jpeg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
