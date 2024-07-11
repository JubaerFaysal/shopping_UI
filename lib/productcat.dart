import 'package:flutter/material.dart';
import 'product.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
               //width: 60,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(products[index].image,
                        width: 70,
                        height: 70,),
                      ),
                      const SizedBox(height: 5,),
                      Text(products[index].title)
                    ],
                  );
                }, 
                separatorBuilder: (context, index)=> 
                const SizedBox(width: 20,),
                 itemCount: products.length),
    );
  }
}