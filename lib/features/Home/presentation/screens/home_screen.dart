import 'package:flutter/material.dart';
import '../../../profile/features/screens/drawer_profile.dart';
import '../widgets/brand_list.dart';
import '../widgets/custum_nav_bar.dart';
import '../widgets/header.dart';
import '../widgets/product_grid.dart';
import '../widgets/search_bar_widgets.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const ProfileDrawer(),
      bottomNavigationBar: const CustomBottomNav(),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              /// 🔥 Header مع زرار Drawer
              Builder(
                builder: (context) => Header(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),

              const SizedBox(height: 20),
              const SearchBarWidget(),
              const SizedBox(height: 20),
              const BrandList(),
              const SizedBox(height: 20),
              const Expanded(child: ProductGrid()),
            ],
          ),
        ),
      ),
    );
  }
}