import 'package:flutter/material.dart';
import 'package:tour_place/features/common/custom_appbar.dart';

import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Categories Screen',
      child: Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        appBar: CustomAppbar(
            leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back_ios)),
            title: 'Categories',
            actions: null),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      CategoryItem(
                        iconPath: 'assets/categories/mountain.svg',
                        label: 'Mountains',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/beach.svg',
                        label: 'Beach',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/lake.svg',
                        label: 'Lake',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/camp.svg',
                        label: 'Camp',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/camp.svg',
                        label: 'Camp',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/mountain.svg',
                        label: 'Mountains',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/beach.svg',
                        label: 'Beach',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/lake.svg',
                        label: 'Lake',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/lake.svg',
                        label: 'Lake',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/camp.svg',
                        label: 'Camp',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/mountain.svg',
                        label: 'Mountains',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/beach.svg',
                        label: 'Beach',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/beach.svg',
                        label: 'Beach',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/lake.svg',
                        label: 'Lake',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/camp.svg',
                        label: 'Camp',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/mountain.svg',
                        label: 'Mountains',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/mountain.svg',
                        label: 'Mountains',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/beach.svg',
                        label: 'Beach',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/lake.svg',
                        label: 'Lake',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/camp.svg',
                        label: 'Camp',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/camp.svg',
                        label: 'Camp',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/mountain.svg',
                        label: 'Mountains',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/beach.svg',
                        label: 'Beach',
                      ),
                      CategoryItem(
                        iconPath: 'assets/categories/lake.svg',
                        label: 'Lake',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 191), // Bottom padding
              ],
            ),
          ),
        ),
      ),
    );
  }
}
