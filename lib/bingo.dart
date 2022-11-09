import 'dart:math';
import 'package:flutter/material.dart';

class Bingo extends StatefulWidget {
  const Bingo({Key? key}) : super(key: key);

  @override
  State<Bingo> createState() => _BingoState();
}

class _BingoState extends State<Bingo> {
  List<Color?> col = [
    Colors.red[50],
    Colors.red[50],
    Colors.red[50],
    Colors.red[50],
    Colors.red[50],
    Colors.yellow[50],
    Colors.yellow[50],
    Colors.yellow[50],
    Colors.yellow[50],
    Colors.yellow[50],
    Colors.purple[50],
    Colors.purple[50],
    Colors.purple[50],
    Colors.purple[50],
    Colors.purple[50],
    Colors.blue[50],
    Colors.blue[50],
    Colors.blue[50],
    Colors.blue[50],
    Colors.blue[50],
    Colors.orange[50],
    Colors.orange[50],
    Colors.orange[50],
    Colors.orange[50],
    Colors.orange[50],
    Colors.red[50],
    Colors.red[50],
    Colors.red[50],
    Colors.red[50],
    Colors.red[50],
    Colors.yellow[50],
    Colors.yellow[50],
    Colors.yellow[50],
    Colors.yellow[50],
    Colors.yellow[50],
    Colors.purple[50],
    Colors.purple[50],
    Colors.purple[50],
    Colors.purple[50],
    Colors.purple[50],
    Colors.blue[50],
    Colors.blue[50],
    Colors.blue[50],
    Colors.blue[50],
    Colors.blue[50],
    Colors.orange[50],
    Colors.orange[50],
    Colors.orange[50],
    Colors.orange[50],
    Colors.orange[50],
    Colors.red[50],
    Colors.red[50],
    Colors.red[50],
    Colors.red[50],
    Colors.red[50],
    Colors.yellow[50],
    Colors.yellow[50],
    Colors.yellow[50],
    Colors.yellow[50],
    Colors.yellow[50],
    Colors.purple[50],
    Colors.purple[50],
    Colors.purple[50],
    Colors.purple[50],
    Colors.purple[50],
    Colors.blue[50],
    Colors.blue[50],
    Colors.blue[50],
    Colors.blue[50],
    Colors.blue[50],
    Colors.orange[50],
    Colors.orange[50],
    Colors.orange[50],
    Colors.orange[50],
    Colors.orange[50],
  ];

  var tab = 30.0;

  var array = [
    'n1',
    'n2',
    'n3',
    'n4',
    'n5',
    'n6',
    'n7',
    'n8',
    'n9',
    'n10',
    'n11',
    'n12',
    'n13',
    'n14',
    'n15',
    'n16',
    'n17',
    'n18',
    'n19',
    'n20',
    'n21',
    'n22',
    'n23',
    'n24',
    'n25',
    'n26',
    'n27',
    'n28',
    'n29',
    'n30',
    'n31',
    'n32',
    'n33',
    'n34',
    'n35',
    'n36',
    'n37',
    'n38',
    'n39',
    'n38',
    'n39',
    'n40',
    'n41',
    'n42',
    'n43',
    'n46',
    'n47',
    'n48',
    'n49',
    'n50',
    'n51',
    'n52',
    'n53',
    'n54',
    'n55',
    'n56',
    'n57',
    'n58',
    'n59',
    'n60',
    'n61',
    'n62',
    'n63',
    'n64',
    'n65',
    'n66',
    'n67',
    'n68',
    'n69',
    'n70',
    'n71',
    'n72',
    'n73',
    'n74',
    'n75',
  ];

  var letter = '';
  TextEditingController control = new TextEditingController();
  TextEditingController control2 = new TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // b1

      var minb = 1;
      var arrayb = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 0; i < 5; i++) {
        Random ran = new Random();
        int rand = minb + ran.nextInt(15);
        arrayb[i] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb[0] != rand &&
              arrayb[1] != rand &&
              arrayb[2] != rand &&
              arrayb[3] != rand &&
              arrayb[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb[i] = rand;
          } else if (arrayb[0] == rand ||
              arrayb[1] == rand ||
              arrayb[2] == rand ||
              arrayb[3] == rand ||
              arrayb[4] == rand) {
            Random ran = new Random();
            rand = minb + ran.nextInt(15);
          }
        } while (r);
      }

      var minb2 = 16;
      var arrayb2 = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 5; i < 10; i++) {
        Random ran = new Random();
        int rand = minb2 + ran.nextInt(15);
        arrayb2[i - 5] = rand;
        bool r = true;
        print(i);
        do {
          if (arrayb2[0] != rand &&
              arrayb2[1] != rand &&
              arrayb2[2] != rand &&
              arrayb2[3] != rand &&
              arrayb2[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb2[i - 5] = rand;
          } else if (arrayb2[0] == rand ||
              arrayb2[1] == rand ||
              arrayb2[2] == rand ||
              arrayb2[3] == rand ||
              arrayb2[4] == rand) {
            Random ran = new Random();
            rand = minb2 + ran.nextInt(15);
          }
        } while (r);
      }

      var minb3 = 31;
      var arrayb3 = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 10; i < 15; i++) {
        Random ran = new Random();
        int rand = minb3 + ran.nextInt(15);
        arrayb3[i - 10] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb3[0] != rand &&
              arrayb3[1] != rand &&
              arrayb3[2] != rand &&
              arrayb3[3] != rand &&
              arrayb3[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb3[i - 10] = rand;
          } else if (arrayb3[0] == rand ||
              arrayb3[1] == rand ||
              arrayb3[2] == rand ||
              arrayb3[3] == rand ||
              arrayb3[4] == rand) {
            Random ran = new Random();
            rand = minb3 + ran.nextInt(15);
          }
        } while (r);
      }

      var minb4 = 46;
      var arrayb4 = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 15; i < 20; i++) {
        Random ran = new Random();
        int rand = minb4 + ran.nextInt(15);
        arrayb4[i - 15] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb4[0] != rand &&
              arrayb4[1] != rand &&
              arrayb4[2] != rand &&
              arrayb4[3] != rand &&
              arrayb4[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb4[i - 15] = rand;
          } else if (arrayb4[0] == rand ||
              arrayb4[1] == rand ||
              arrayb4[2] == rand ||
              arrayb4[3] == rand ||
              arrayb4[4] == rand) {
            Random ran = new Random();
            rand = minb4 + ran.nextInt(15);
          }
        } while (r);
      }
      var minb5 = 61;
      var arrayb5 = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 20; i < 25; i++) {
        Random ran = new Random();
        int rand = minb5 + ran.nextInt(15);
        arrayb5[i - 20] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb5[0] != rand &&
              arrayb5[1] != rand &&
              arrayb5[2] != rand &&
              arrayb5[3] != rand &&
              arrayb5[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb5[i - 20] = rand;
          } else if (arrayb5[0] == rand ||
              arrayb5[1] == rand ||
              arrayb5[2] == rand ||
              arrayb5[3] == rand ||
              arrayb5[4] == rand) {
            Random ran = new Random();
            rand = minb5 + ran.nextInt(15);
          }
        } while (r);
      }

      // b2

      arrayb = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 50; i < 55; i++) {
        Random ran = new Random();
        int rand = minb + ran.nextInt(15);
        arrayb[i - 50] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb[0] != rand &&
              arrayb[1] != rand &&
              arrayb[2] != rand &&
              arrayb[3] != rand &&
              arrayb[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb[i - 50] = rand;
          } else if (arrayb[0] == rand ||
              arrayb[1] == rand ||
              arrayb[2] == rand ||
              arrayb[3] == rand ||
              arrayb[4] == rand) {
            Random ran = new Random();
            rand = minb + ran.nextInt(15);
          }
        } while (r);
      }

      arrayb2 = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 55; i < 60; i++) {
        Random ran = new Random();
        int rand = minb2 + ran.nextInt(15);
        arrayb2[i - 55] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb2[0] != rand &&
              arrayb2[1] != rand &&
              arrayb2[2] != rand &&
              arrayb2[3] != rand &&
              arrayb2[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb2[i - 55] = rand;
          } else if (arrayb2[0] == rand ||
              arrayb2[1] == rand ||
              arrayb2[2] == rand ||
              arrayb2[3] == rand ||
              arrayb2[4] == rand) {
            Random ran = new Random();
            rand = minb2 + ran.nextInt(15);
          }
        } while (r);
      }

      arrayb3 = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 60; i < 65; i++) {
        Random ran = new Random();
        int rand = minb3 + ran.nextInt(15);
        arrayb3[i - 60] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb3[0] != rand &&
              arrayb3[1] != rand &&
              arrayb3[2] != rand &&
              arrayb3[3] != rand &&
              arrayb3[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb3[i - 60] = rand;
          } else if (arrayb3[0] == rand ||
              arrayb3[1] == rand ||
              arrayb3[2] == rand ||
              arrayb3[3] == rand ||
              arrayb3[4] == rand) {
            Random ran = new Random();
            rand = minb3 + ran.nextInt(15);
          }
        } while (r);
      }

      arrayb4 = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 65; i < 70; i++) {
        Random ran = new Random();
        int rand = minb4 + ran.nextInt(15);
        arrayb4[i - 65] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb4[0] != rand &&
              arrayb4[1] != rand &&
              arrayb4[2] != rand &&
              arrayb4[3] != rand &&
              arrayb4[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb4[i - 65] = rand;
          } else if (arrayb4[0] == rand ||
              arrayb4[1] == rand ||
              arrayb4[2] == rand ||
              arrayb4[3] == rand ||
              arrayb4[4] == rand) {
            Random ran = new Random();
            rand = minb4 + ran.nextInt(15);
          }
        } while (r);
      }

      arrayb5 = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 70; i < 75; i++) {
        Random ran = new Random();
        int rand = minb5 + ran.nextInt(15);
        arrayb5[i - 70] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb5[0] != rand &&
              arrayb5[1] != rand &&
              arrayb5[2] != rand &&
              arrayb5[3] != rand &&
              arrayb5[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb5[i - 70] = rand;
          } else if (arrayb5[0] == rand ||
              arrayb5[1] == rand ||
              arrayb5[2] == rand ||
              arrayb5[3] == rand ||
              arrayb5[4] == rand) {
            Random ran = new Random();
            rand = minb5 + ran.nextInt(15);
          }
        } while (r);
      }

      //b3
      arrayb = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 25; i < 30; i++) {
        Random ran = new Random();
        int rand = minb + ran.nextInt(15);
        arrayb[i - 25] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb[0] != rand &&
              arrayb[1] != rand &&
              arrayb[2] != rand &&
              arrayb[3] != rand &&
              arrayb[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb[i - 25] = rand;
          } else if (arrayb[0] == rand ||
              arrayb[1] == rand ||
              arrayb[2] == rand ||
              arrayb[3] == rand ||
              arrayb[4] == rand) {
            Random ran = new Random();
            rand = minb + ran.nextInt(15);
          }
        } while (r);
      }

      arrayb2 = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 30; i < 35; i++) {
        Random ran = new Random();
        int rand = minb2 + ran.nextInt(15);
        arrayb2[i - 30] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb2[0] != rand &&
              arrayb2[1] != rand &&
              arrayb2[2] != rand &&
              arrayb2[3] != rand &&
              arrayb2[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb2[i - 30] = rand;
          } else if (arrayb2[0] == rand ||
              arrayb2[1] == rand ||
              arrayb2[2] == rand ||
              arrayb2[3] == rand ||
              arrayb2[4] == rand) {
            Random ran = new Random();
            rand = minb2 + ran.nextInt(15);
          }
        } while (r);
      }

      arrayb3 = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 35; i < 40; i++) {
        Random ran = new Random();
        int rand = minb3 + ran.nextInt(15);
        arrayb3[i - 35] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb3[0] != rand &&
              arrayb3[1] != rand &&
              arrayb3[2] != rand &&
              arrayb3[3] != rand &&
              arrayb3[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb3[i - 35] = rand;
          } else if (arrayb3[0] == rand ||
              arrayb3[1] == rand ||
              arrayb3[2] == rand ||
              arrayb3[3] == rand ||
              arrayb3[4] == rand) {
            Random ran = new Random();
            rand = minb3 + ran.nextInt(15);
          }
        } while (r);
      }

      arrayb4 = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 40; i < 45; i++) {
        Random ran = new Random();
        int rand = minb4 + ran.nextInt(15);
        arrayb4[i - 40] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb4[0] != rand &&
              arrayb4[1] != rand &&
              arrayb4[2] != rand &&
              arrayb4[3] != rand &&
              arrayb4[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb4[i - 40] = rand;
          } else if (arrayb4[0] == rand ||
              arrayb4[1] == rand ||
              arrayb4[2] == rand ||
              arrayb4[3] == rand ||
              arrayb4[4] == rand) {
            Random ran = new Random();
            rand = minb4 + ran.nextInt(15);
          }
        } while (r);
      }

      arrayb5 = [
        0,
        0,
        0,
        0,
        0,
      ];
      for (var i = 45; i < 50; i++) {
        Random ran = new Random();
        int rand = minb5 + ran.nextInt(15);
        arrayb5[i - 45] = rand;
        bool r = true;
        print(i);

        do {
          if (arrayb5[0] != rand &&
              arrayb5[1] != rand &&
              arrayb5[2] != rand &&
              arrayb5[3] != rand &&
              arrayb5[4] != rand) {
            setState(() {
              array[i] = rand.toString();
            });
            r = false;
            arrayb5[i - 45] = rand;
          } else if (arrayb5[0] == rand ||
              arrayb5[1] == rand ||
              arrayb5[2] == rand ||
              arrayb5[3] == rand ||
              arrayb5[4] == rand) {
            Random ran = new Random();
            rand = minb5 + ran.nextInt(15);
          }
        } while (r);
      }
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
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
        body: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 17),
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(left: 18, right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Bingo Game",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Poppins',
                            color: Color(0xFFFF6F00),
                            fontWeight: FontWeight.bold),
                      ),
                      Image(
                        image: AssetImage("assets/bingologo.png"),
                      ),

                      Row(
                        children: [
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {
                                control.text = "B";
                              },
                              // shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(50)),
                              color: Color(0xFF388E3C),
                              child: Text(
                                "B",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {
                                control.text = "I";
                              },
                              color: Color(0xFF388E3C),
                              // shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                "I",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {
                                control.text = "N";
                              },
                              color: Color(0xFF388E3C),
                              // shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                "N",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {
                                control.text = "G";
                              },
                              color: Color(0xFF388E3C),
                              // shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                "G",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () {
                                control.text = "O";
                              },
                              color: Color(0xFF388E3C),
                              // shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                "O",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: TextField(
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  //        fontWeight: FontWeight.bold,
                                  color: Colors.grey[700]),
                              readOnly: true,
                              textAlign: TextAlign.center,
                              controller: control,
                              decoration: InputDecoration(
                                hintText: 'Tap letter button',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                              child: TextField(
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                //    fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.grey[700]),
                            controller: control2,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'Enter number only',
                              hintStyle: TextStyle(color: Colors.grey[700]),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 70),
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
                              var lett = control.text;
                              var num = control2.text;

                              if (control.text == 'B') {
                                for (var i = 0; i < 75; i++) {
                                  if (num == array[i]) {
                                    setState(() {
                                      col[i] = Color(0XFFB9F6CA);
                                    });
                                  }
                                  if (i == 4) {
                                    i += 20;
                                  } else if (i == 29) {
                                    i += 20;
                                  } else if (i == 54) {
                                    i += 20;
                                  }
                                  print(array[i]);
                                }
                              } else if (control.text == 'I') {
                                for (var i = 5; i < 75; i++) {
                                  if (control2.text == array[i]) {
                                    setState(() {
                                      col[i] = Color(0XFFB9F6CA);
                                    });
                                  }

                                  if (i == 9) {
                                    i += 20;
                                  } else if (i == 34) {
                                    i += 20;
                                  } else if (i == 59) {
                                    i += 20;
                                  }
                                  print(array[i]);
                                }
                              } else if (control.text == 'N') {
                                for (var i = 2; i < 75; i++) {
                                  if (control2.text == array[i]) {
                                    setState(() {
                                      col[i] = Color(0XFFB9F6CA);
                                    });
                                  }
                                  if (i == 14) {
                                    i += 20;
                                  } else if (i == 39) {
                                    i += 20;
                                  } else if (i == 64) {
                                    i += 20;
                                  }
                                  print(array[i]);
                                }
                              } else if (control.text == 'G') {
                                for (var i = 3; i < 75; i++) {
                                  if (control2.text == array[i]) {
                                    setState(() {
                                      col[i] = Color(0XFFB9F6CA);
                                    });
                                  }
                                  if (i == 19) {
                                    i += 20;
                                  } else if (i == 44) {
                                    i += 20;
                                  } else if (i == 69) {
                                    i += 20;
                                  }
                                  print(array[i]);
                                }
                              } else if (control.text == 'O') {
                                for (var i = 4; i < 75; i++) {
                                  if (control2.text == array[i]) {
                                    setState(() {
                                      col[i] = Color(0XFFB9F6CA);
                                    });
                                  }
                                  if (i == 24) {
                                    i += 20;
                                  } else if (i == 49) {
                                    i += 20;
                                  } else if (i == 74) {
                                    i += 20;
                                  }
                                  print(array[i]);
                                }
                              }
                              control2.clear();
                              control.clear();
                            },
                            color: Color(0xFF388E3C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 40,
                      // ),
                      Image(
                        image: AssetImage("assets/bingodesign.png"),
                      ),

                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/rhon.png"),
                      ),
                      Text(
                        'Player 1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "Rhona Magsayo",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Colors.deepOrange),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Table(
                        border: TableBorder.all(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        children: [
                          TableRow(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  'B',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                color: Colors.pink,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  'I',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                color: Colors.yellow,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  'N',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                color: Colors.purple,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  'G',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                color: Colors.blue,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  'O',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                color: Colors.red,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[0],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[0],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[5],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[5],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[10],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[10],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[15],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[15],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[20],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[20],
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[1],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[1],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[6],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[6],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[11],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[11],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[16],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[16],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[21],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[21],
                              ),
                            ],
                          ),
                          TableRow(children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[2],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[2],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[7],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[7],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Image(
                                height: 25.0,
                                image: AssetImage(
                                  "assets/star.png",
                                ),
                              ),
                              color: Color(0XFFB9F6CA),
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[17],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[17],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[22],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[22],
                            ),
                          ]),
                          TableRow(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[3],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[3],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[8],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[8],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[13],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[13],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[18],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[18],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[23],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[23],
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[4],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[4],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[9],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[9],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[14],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[14],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[19],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[19],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[24],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[24],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/jez.png"),
                      ),
                      Text(
                        'Player 2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "Jezel Camarillo",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Colors.deepOrange),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Table(
                        border: TableBorder.all(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        children: [
                          TableRow(children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                'B',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              color: Colors.pink,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                'I',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              color: Colors.yellow,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                'N',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              color: Colors.purple,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                'G',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              color: Colors.blue,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                'O',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              color: Colors.red,
                            ),
                          ]),
                          TableRow(children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[25],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[25],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[30],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[30],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[35],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[35],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[40],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[40],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[45],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[45],
                            ),
                          ]),
                          TableRow(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[26],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[26],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[31],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[31],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[36],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[36],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[41],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[41],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[46],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[46],
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[27],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[27],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[32],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[32],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Image(
                                  height: 25.0,
                                  image: AssetImage(
                                    "assets/star.png",
                                  ),
                                ),
                                color: Color(0XFFB9F6CA),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[42],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[42],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[47],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[47],
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[28],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[28],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[33],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[33],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[38],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[38],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[43],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[43],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[48],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[48],
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[29],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[29],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[34],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[34],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[39],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[39],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[44],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[44],
                              ),
                              // Container(
                              //   alignment: Alignment.center,
                              //   padding: EdgeInsets.symmetric(vertical: tab),
                              //   child: Text(
                              //     array[39],
                              //     style: TextStyle(
                              //       fontWeight: FontWeight.bold,
                              //       fontFamily: 'Poppins',
                              //       fontSize: 18,
                              //     ),
                              //   ),
                              //   color: col[39],
                              // ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[49],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[49],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/chel.png"),
                      ),
                      Text(
                        'Player 3',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "Chelly Gador",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.deepOrange,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Table(
                        border: TableBorder.all(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        children: [
                          TableRow(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  'B',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                color: Colors.pink,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  'I',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                color: Colors.yellow,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  'N',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                color: Colors.purple,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  'G',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                color: Colors.blue,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  'O',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                color: Colors.red,
                              ),
                            ],
                          ),
                          TableRow(children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[50],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[50],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[55],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[55],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[60],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[60],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[65],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[65],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[70],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[70],
                            ),
                          ]),
                          TableRow(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[51],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[51],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[56],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[56],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[61],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[61],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[66],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[66],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[71],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[71],
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[52],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[52],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[57],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[57],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Image(
                                  height: 25.0,
                                  image: AssetImage(
                                    "assets/star.png",
                                  ),
                                ),
                                color: Color(0XFFB9F6CA),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[67],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[67],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[72],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[72],
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[53],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[53],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[58],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[58],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[63],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[63],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[68],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[68],
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: tab),
                                child: Text(
                                  array[73],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                                ),
                                color: col[73],
                              ),
                            ],
                          ),
                          TableRow(children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[54],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[54],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[59],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[59],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[64],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[64],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[69],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[69],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: tab),
                              child: Text(
                                array[74],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                              color: col[74],
                            ),
                          ]),
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
