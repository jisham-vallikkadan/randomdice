import 'dart:math';

import 'package:flutter/material.dart';

class Randomdice extends StatefulWidget {
  const Randomdice({Key? key}) : super(key: key);

  @override
  State<Randomdice> createState() => _RandomdiceState();
}

class _RandomdiceState extends State<Randomdice> {
  int Rightdice=1;
  int Leftdice=1;


   // void randomdice(){
   //   Rightdice=Random().nextInt(6)+1;
   //   Leftdice=Random().nextInt(6)+1;
   // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Randomdice')),backgroundColor: Colors.purpleAccent,elevation: 0,
      ),
      body: Container(
        color: Colors.purpleAccent,
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 380,
                ),
                Container(
                  width: 170,
                  height: 170,
                  margin: EdgeInsets.only(left: 10),
                  color: Colors.purpleAccent,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        // randomdice();
                        // Rightdice=Random().nextInt(6)+1;
                        // Leftdice=Random().nextInt(6)+1;
                      });

                    },
                    child: Image(
                      image: AssetImage('images/$Leftdice.png'),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Container(
                  width: 170,
                  height: 170,
                  color: Colors.purpleAccent,
                  child: TextButton(
                    onPressed: () {
                        setState(() {
                          // randomdice();
                          // Rightdice=Random().nextInt(6)+1;
                          // Leftdice=Random().nextInt(6)+1;
                        });
                    },
                    child: Image(
                      image: AssetImage('images/$Rightdice.png'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
