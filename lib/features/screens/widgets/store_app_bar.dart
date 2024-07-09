import 'package:flutter/material.dart';

class StoreAppBar extends StatelessWidget {
  const StoreAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          // backgroundColor: AppColors.primaryColor,
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
    return const Text(
      'Store',
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
        letterSpacing: 0.8,
      ),
      textAlign: TextAlign.start,
    );
  }

  Widget _buildShopSection() {
    return Stack(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 30,
                      color: Colors.black,
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