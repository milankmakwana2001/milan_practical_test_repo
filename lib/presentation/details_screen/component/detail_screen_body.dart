import 'package:flutter/material.dart';

class DetailScreenBody extends StatelessWidget {
  const DetailScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Image.network(
          "https://img.freepik.com/free-vector/gradient-network-connection-background_23-2148874050.jpg",
          height: 300,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
