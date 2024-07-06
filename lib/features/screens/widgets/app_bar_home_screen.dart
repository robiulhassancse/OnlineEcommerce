import 'package:flutter/material.dart';
import 'package:online_commerce/utility/app_color.dart';

class AppBarHomeScreen extends StatelessWidget {
  const AppBarHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: AppColors.primaryColor,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: _buildShopSection(),
            )
          ],
          title: Row(
            children: [
              _buildHeaderText(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderText() {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good day for shopping',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                const Text(
                  'Robiul Hassan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 0.8,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            );
  }

  Widget _buildShopSection() {
    return Stack(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_rounded,
                      size: 30,
                      color: Colors.white,
                    )),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        '2',
                        style:
                        TextStyle(fontSize: 12, color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            );
  }
}