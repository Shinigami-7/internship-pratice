import 'package:flutter/material.dart';
import 'package:new_start/textDecorationWidget.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int numberIs = 77;
  void inc_Count() {
    setState(() {
      numberIs++;
      Onpressed = !Onpressed;
    });
  }

  bool Onpressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("yo ho"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Stack(
          children: [
            Image.asset("assets/NCO.jpg"),
            Center(
                child: textDecorationWidgits(
              'Number = $numberIs',
              color_ch: Onpressed,
            )),
            Positioned(
                bottom: 20,
                right: 20,
                child: FloatingActionButton(
                  backgroundColor: Onpressed ? Colors.red : Colors.green,
                  onPressed: inc_Count,
                  child: textDecorationWidgits("+", color_ch: Onpressed),
                ),
            ),

          ],

        ));
  }
}
