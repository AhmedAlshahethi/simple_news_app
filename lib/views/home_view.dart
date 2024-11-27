import 'package:flutter/material.dart';
import 'package:news_app/views/categories_list_view.dart';
import 'package:news_app/views/news_list_view_builder.dart';
import 'package:news_app/widgets/title_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitleAppBar(),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            NewsListViewBuilder(
              category: 'sports',
            ),
          ],
        ),
      ),
    );
  }
}



// List<NewsModel> news = [
//   NewsModel(
//     title: 'dosamdoasmdoasmodmasodmoasmd asd as das',
//     description:
//         'dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das',
//     image: 'assets/technology.jpeg',
//   ),
//   NewsModel(
//     title: 'dosamdoasmdoasmodmasodmoasmd asd as das',
//     description:
//         'dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das',
//     image: 'assets/technology.jpeg',
//   ),
//   NewsModel(
//     title: 'dosamdoasmdoasmodmasodmoasmd asd as das',
//     description:
//         'dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das',
//     image: 'assets/technology.jpeg',
//   ),
//   NewsModel(
//     title: 'dosamdoasmdoasmodmasodmoasmd asd as das',
//     description:
//         'dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das',
//     image: 'assets/technology.jpeg',
//   ),
//   NewsModel(
//     title: 'dosamdoasmdoasmodmasodmoasmd asd as das',
//     description:
//         'dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das',
//     image: 'assets/technology.jpeg',
//   ),
//   NewsModel(
//     title: 'dosamdoasmdoasmodmasodmoasmd asd as das',
//     description:
//         'dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das',
//     image: 'assets/technology.jpeg',
//   ),
//   NewsModel(
//     title: 'dosamdoasmdoasmodmasodmoasmd asd as das',
//     description:
//         'dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das dosamdoasmdoasmodmasodmoasmd asd as das',
//     image: 'assets/technology.jpeg',
//   ),
// ];
