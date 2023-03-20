import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Center(child: Text('Ask Me Anything')),
        backgroundColor: Colors.blue,
      ),
      body: Ball(),
    ),
  ),
  );
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);


  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(

            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: TextButton(onPressed: (){
                  setState(() {
                    ballNumber = Random().nextInt(5)+1;
                  });
                  print(ballNumber);
                },
                  child: Image.asset('image/ball$ballNumber.png',
                  ),),
              ))
            ]
        )
    );
  }
}














