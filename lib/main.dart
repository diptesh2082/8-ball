import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title:Center(
                child: Text('Ask me anything',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily:'BigShouldersStencilDisplay',
                    letterSpacing: 2,
                    color: Colors.tealAccent[50],
                  ),
                )
            ),
          ),
          body: BallPage(),
        )
      ),
    );
class BallPage extends StatefulWidget {

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ball=1;
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Row(
            children: [
              Expanded(
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        ball=Random().nextInt(5)+1;

                      });

                    },
                    child: Image.asset('images/ball$ball.png',
                      scale: 2,
                    ),
                  ),

              )
            ],
          )
    );
  }
}
