import 'package:flutter/material.dart';
import 'package:labexam/bingo.dart';

class InstructBingo extends StatelessWidget {
  const InstructBingo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(18),
          child: Column(
            children: <Widget>[
              Text(
                "Let's Play!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF6F00),
                  fontFamily: 'Poppins',
                  fontSize: 30,
                ),
              ),
              Image(
                image: AssetImage("assets/bingologo.png"),
              ),
              Text(
                "How to Play",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF6F00),
                  fontFamily: 'Poppins',
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Tap one button either B, I, N, G, O letter and enter the number that corresponds to every letter in BINGO game. Goodluck!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  padding: EdgeInsets.only(top: 3, left: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    ),
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Bingo()));
                    },
                    color: Color(0xFF388E3C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Play",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
