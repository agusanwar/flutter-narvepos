import 'package:flutter/material.dart';
import 'package:narvepos/core/assets/assets.gen.dart';
import 'package:narvepos/core/components/search_input.dart';
import 'package:narvepos/core/components/spaces.dart';
import 'package:narvepos/core/constants/colors.dart';
import 'package:narvepos/core/extentions/date_time_ext.dart';
import 'package:narvepos/presentations/widgets/custom_tab_bar.dart';
import 'package:narvepos/presentations/widgets/product_card.dart';
import 'package:narvepos/presentations/widgets/search_item.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: const Text(
            'Menu',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 40,
                      child: Assets.images.logoNarve.image(),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          'Narve Pos',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          DateTime.now().toFormattedDate(),
                          style: const TextStyle(
                            color: AppColors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SpaceHeight(15.0),
                SearchItem(
                  controller: searchController,
                ),
                const SpaceHeight(15.0),
                CustomTabBar(
                  tabTitles: const [
                    'All',
                    'Drink',
                    'Food',
                    'Desserts',
                  ],
                  initialTabIndex: 0,
                  tabViews: [
                    SizedBox(
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.70,
                          crossAxisCount: 2,
                          crossAxisSpacing: 25.0,
                          mainAxisSpacing: 25.0,
                        ),
                        itemBuilder: (context, index) => const ProductCard(),
                      ),
                    ),
                    SizedBox(
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 2,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.70,
                          crossAxisCount: 2,
                          crossAxisSpacing: 25.0,
                          mainAxisSpacing: 25.0,
                        ),
                        itemBuilder: (context, index) => const ProductCard(),
                      ),
                    ),
                    SizedBox(
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 1,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.70,
                          crossAxisCount: 2,
                          crossAxisSpacing: 25.0,
                          mainAxisSpacing: 25.0,
                        ),
                        itemBuilder: (context, index) => const ProductCard(),
                      ),
                    ),
                    SizedBox(
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.70,
                          crossAxisCount: 2,
                          crossAxisSpacing: 25.0,
                          mainAxisSpacing: 25.0,
                        ),
                        itemBuilder: (context, index) => const ProductCard(),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
