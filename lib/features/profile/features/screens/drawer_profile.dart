import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/drawer_item.dart';
import '../widgets/logout_button.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});
  static const  String routeName ="ProfileDrawer" ;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              /// drag icon
              Center(
                child: Container(
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// Header
              const ProfileHeader(),

              const SizedBox(height: 20),

              /// Dark Mode
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const DrawerItem(
                    icon: Icons.light_mode_outlined,
                    title: "Dark Mode",
                  ),
                  Switch(
                    value: false,
                    onChanged: (v) {},
                  )
                ],
              ),

              const SizedBox(height: 10),

              /// Menu Items
              const DrawerItem(
                icon: Icons.info_outline,
                title: "Account Information",
              ),
              const DrawerItem(
                icon: Icons.lock_outline,
                title: "Password",
              ),
              const DrawerItem(
                icon: Icons.shopping_bag_outlined,
                title: "Order",
              ),
              const DrawerItem(
                icon: Icons.wallet_outlined,
                title: "My Cards",
              ),
              const DrawerItem(
                icon: Icons.favorite_border,
                title: "Wishlist",
              ),
              const DrawerItem(
                icon: Icons.settings_outlined,
                title: "Settings",
              ),

              const Spacer(),

              /// Logout
              const LogoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}