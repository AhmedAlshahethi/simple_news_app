import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/news_title.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.news});
  final List<NewsModel> news;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: news.length,
      (context, index) {
        return NewsTitle(
          news: news[index],
        );
      },
    ));
  }
}
