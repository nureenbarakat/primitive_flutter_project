import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.alarm,
          size: 28,
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          'Hello World',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.person,
              size: 28,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey,
          border: Border.all(
            color: Colors.green, // Border color
            width: 4.0, // Border width
          ),
        ),

        child: Column(
          children: [
            // Row with two blue items at the top left and top right
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items at the extremes
                children: [
                  // First blue item on the top left
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    child: const Text(
                      'Hello World',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // Second blue item on the top right
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                    child: const Icon(
                      Icons.add_box,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
            // Spacer to position the face design lower on the screen
            Expanded(
              child: Center(
                child: Container(
                  color: Colors.black,
                  height: 500,
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Eyes
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.purple,
                            margin: const EdgeInsets.all(16),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.purple,
                            margin: const EdgeInsets.all(16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Nose
                      Container(
                        height: 80,
                        width: 20,
                        color: Colors.yellow,
                      ),
                      SizedBox(height: 20),
                      // Mouth
                      Container(
                        height: 30,
                        width: 200,
                        color: Colors.white,
                        margin: const EdgeInsets.all(30),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}