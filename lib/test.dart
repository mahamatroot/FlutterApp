import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(253, 143, 63, 1),
          title: const Text("Home"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
            ),
            children: [
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/mht.jpg"),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(0, 0),
                        spreadRadius: 5,
                      )
                    ]),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'Mahamat',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/ali.jpg"),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(0, 0),
                        spreadRadius: 5,
                      )
                    ]),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          "Ali",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
