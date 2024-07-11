
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 203, 234, 250),
              padding: const EdgeInsets.all(11),
            ),
            //iconSize: 30,
            icon: const Icon(
              Icons.grid_view,
              size: 30,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 206, 235, 249),
              padding: const EdgeInsets.all(11),
            ),
            //iconSize: 30,
            icon: const Icon(
              Icons.notifications_outlined,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
    );
  }
}