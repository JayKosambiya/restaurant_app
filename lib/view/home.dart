import 'package:flutter/material.dart';
import 'package:restaurant_app/utils/basic/colors.dart';
import 'package:restaurant_app/utils/paths/assets_path.dart';
import 'package:restaurant_app/utils/routes/routes_name.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  AssetPaths.logoPath,
                  width: 100,
                  height: 100,
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
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: AppColor.yellowColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Good Food,\nGood Mood;)',
                      style: TextStyle(
                        fontFamily: 'PlaypenSans',
                        fontSize: 60, // Adjust font size as needed
                        color: AppColor.backGroundColor,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        AssetPaths.footImagePath,
                        width: 400, // Adjust image width as needed
                        height: 242, // Adjust image height as needed
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  hoverColor: Colors.blue,
                  onTap: (){
                    Navigator.pushNamed(context, RoutesName.menuRoute);
                  },
                  child: const Text(
                    'Menu',
                    style: TextStyle(
                      fontFamily: 'PlaypenSans',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  'Orders',
                  style: TextStyle(
                    fontFamily: 'PlaypenSans',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Book Now',
                  style: TextStyle(
                    fontFamily: 'PlaypenSans',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Delivery',
                  style: TextStyle(
                    fontFamily: 'PlaypenSans',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
