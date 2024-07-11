import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 50,
      // width: 20000,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 202, 235, 252),
          border: Border.all(color: Colors.blue,width: 1.5)),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            size: 28,
            color: Color.fromARGB(255, 70, 79, 84),
          ),
          const SizedBox(
            width: 5,
          ),
          const Flexible(
              flex: 4,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search..", border: InputBorder.none),
              )),
          // Container(
          //   height: 25,
          //   width: 1.5,
          //   color: Color.fromARGB(255, 120, 117, 117),
          // ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_outlined,
                size: 28,
                color: Color.fromARGB(255, 90, 80, 80),
              )),
        ],
      ),
    );
  }
}