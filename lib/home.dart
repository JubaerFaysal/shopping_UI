import 'package:flutter/material.dart';
import 'package:shopping_ui/HomeAppBar.dart';
import 'package:shopping_ui/onlyforu.dart';
import 'package:shopping_ui/productcat.dart';
import 'package:shopping_ui/search.dart';
import 'package:shopping_ui/stack.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //int slide=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             const HomeAppBar(),
             const SizedBox(height: 15,),
             const SearchButton(),
             const SizedBox(height: 15,),
             const Stackk(),
             const SizedBox(height: 15,),
             const Categories(),
            // SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Todays Special!',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                TextButton(onPressed: (){}, child: const Text('See all',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color.fromARGB(255, 73, 189, 243)),))
              ],
             ),
            const OnlyForU(),
            ],
          ),
        ),
      ),
    );
  }
}