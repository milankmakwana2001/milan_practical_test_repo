import 'package:cloudrevels_practical_test_milan/presentation/details_screen/detail_screen.dart';
import 'package:flutter/material.dart';

import '../../app/app_colors.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 10,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const DetailScreen(),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 5,
            ),
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.homeItemColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "https://img.freepik.com/free-vector/gradient-network-connection-background_23-2148874050.jpg",
                    height: 150,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildText(
                      title: "djfhgdhflh",
                      isLarge: true,
                    ),
                    _buildText(
                      title: "djfhgdhflh",
                      isLarge: true,
                    ),
                    _buildText(
                      title: "djfhgdhflh",
                      isLarge: true,
                    ),
                    _buildText(
                      title: "djfhgdhflh",
                      isLarge: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }
}

Widget _buildText({
  required String title,
  required bool isLarge,
}) {
  return LimitedBox(
    maxWidth: 300,
    child: Text(
      title,
      style: TextStyle(
        fontWeight: isLarge ? FontWeight.w700 : FontWeight.w400,
        fontSize: isLarge ? 20 : 16,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    ),
  );
}
