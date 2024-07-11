import 'package:flutter/material.dart';
class Stackk extends StatefulWidget {
  const Stackk({super.key});

  @override
  State<Stackk> createState() => _StackkState();
}

class _StackkState extends State<Stackk> {
  int slide = 0;
  List<String>ss=['lib/Shoes/Gemini_Generated_Image_9arent9arent9are.jpg',
  'lib/Shoes/Gemini_Generated_Image_9arens9arens9are.jpg',
  'lib/Shoes/Gemini_Generated_Image_arnj5qarnj5qarnj.jpg',
  'lib/Shoes/Gemini_Generated_Image_arnj5rarnj5rarnj.jpg',
  'lib/Shoes/Gemini_Generated_Image_ldpzmkldpzmkldpz.jpg',
  'lib/Shoes/Gemini_Generated_Image_n3fhn0n3fhn0n3fh.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 224,
          width: double.infinity,
          child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  slide = value;
                });
              },
              itemCount: ss.length,
              itemBuilder: (context, index) {
                return Container(
                  //  height: 200,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              ss[slide]))),
                );
              }),
        ),
        Positioned.fill(
            bottom: 3,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      ss.length,
                      (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: slide == index ? 14 : 10,
                            height: slide == index ? 15 : 8,
                            margin: const EdgeInsets.only(right: 7),
                            decoration: BoxDecoration(
                                color: slide == index
                                    ? const Color.fromARGB(255, 113, 197, 242)
                                    : null,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: const Color.fromARGB(255, 108, 201, 247))),
                          ))),
            ))
      ],

    );
  }
}