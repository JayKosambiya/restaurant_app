import 'package:flutter/material.dart';
import 'package:restaurant_app/utils/basic/colors.dart';
import 'package:restaurant_app/utils/paths/assets_path.dart';
import 'package:restaurant_app/utils/routes/routes_name.dart';


class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this); // Number of tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.homeRoute);
                  },
                  child: Image.asset(
                    AssetPaths.logoPath,
                    width: 100,
                    height: 100,
                  ),
                ),
                const Text(
                  'Thynk Café',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: 'PlaypenSans',
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              'Menu',
              style: TextStyle(
                fontFamily: 'PlaypenSans',
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'All'),
              Tab(text: 'Appetizers'),
              Tab(text: 'Main Course'),
              Tab(text: 'Cuisines'),
              Tab(text: 'Dessert'),
              Tab(text: 'Beverages'),
            ],
            labelColor: AppColor.yellowColor,
            unselectedLabelColor: Colors.white,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                // Replace these with your actual menu content
                Center(child: Text('Tab 1 Content')),
                Center(child: Text('Tab 2 Content')),
                Center(child: Text('Tab 3 Content')),
                Center(child: Text('Tab 1 Content')),
                Center(child: Text('Tab 2 Content')),
                Center(child: Text('Tab 3 Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


