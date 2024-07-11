import 'package:flutter/material.dart';
import 'package:shopping_ui/items.dart';

class OnlyForU extends StatelessWidget {
  const OnlyForU({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
               child: GridView.builder(
                //physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
               // shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                 ),
                  itemCount: items.length, 
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                        height: 270,
                                             // width: 210,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    items[index].image)),
                          borderRadius: BorderRadius.circular(15),
                          
                        ),
                       ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color.fromARGB(255, 91, 86, 86),width: 3),
                             color: const Color.fromARGB(255, 147, 225, 251),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              )
                            ),
                            child: const Icon(Icons.add,size: 35,),
                          ),
                        ))
                    ],
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(items[index].title,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
                        Text(
                        items[index].price,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      )
                      ],
                    ),

                    ],
                  );
                  
                }
               )
    );
  }
}