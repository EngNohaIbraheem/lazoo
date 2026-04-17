import 'package:flutter/material.dart';
import '../widgets/brand_list.dart';
import '../widgets/custum_nav_bar.dart';
import '../widgets/header.dart';
import '../widgets/product_grid.dart';
import '../widgets/search_bar_widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const  String routeName ="HomeScreen" ;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNav(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Header(),
              SizedBox(height: 20),
              SearchBarWidget(),
              SizedBox(height: 20),
              BrandList(),
              SizedBox(height: 20),
              Expanded(child: ProductGrid()),
            ],
          ),
        ),
      ),
    );
  }
}