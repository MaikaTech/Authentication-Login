import 'package:flutter/material.dart';
import 'package:labexam/login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameTextController = TextEditingController();
    TextEditingController _emailTextController = TextEditingController();
    TextEditingController _passwordTextController = TextEditingController();
    TextEditingController _confirmpasswordTextController =
        TextEditingController();

    Future signup() async {
      var url =
          "https://maikatech.000webhostapp.com/exam_account/insert_account.php";
      var response = await http.post(Uri.parse(url), body: {
        'username': _usernameTextController.text,
        'email': _emailTextController.text,
        'pass': _confirmpasswordTextController.text,
      });

      var data = json.decode(response.body);
      print(data);

      if (data == "Error") {
        Fluttertoast.showToast(
            msg: "This User Already Exist!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      } else {
        Fluttertoast.showToast(
            msg: "Signed up Successfully!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        //   brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
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
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 100,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      color: Color(0xFFFF6F00),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Please fill up to create an account",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.grey[700]),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(
                    label: "Username",
                    controller: _usernameTextController,
                    obscureText: false,
                  ),
                  inputFile(
                    label: "Email",
                    controller: _emailTextController,
                    obscureText: false,
                  ),
                  inputFile(
                      label: "Password",
                      controller: _passwordTextController,
                      obscureText: true),
                  inputFile(
                      label: "Confirm Password ",
                      controller: _confirmpasswordTextController,
                      obscureText: true),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    if (_emailTextController.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Enter Username",
                          fontSize: 15,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          textColor: Colors.white);
                    } else if (_passwordTextController.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Enter Password",
                          fontSize: 15,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          textColor: Colors.white);
                    } else if (_confirmpasswordTextController.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Enter Confirm Password",
                          fontSize: 15,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          textColor: Colors.white);
                    } else if (_passwordTextController.text !=
                        _confirmpasswordTextController.text) {
                      Fluttertoast.showToast(
                          msg: "Password does not match!",
                          fontSize: 15,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          textColor: Colors.white);
                    } else if (!RegExp("^[a-zA-Z0-9+_.-]+[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(_confirmpasswordTextController.text)) {
                      Fluttertoast.showToast(
                          msg:
                              "Use characters with a mix of symbols, numbers, uppercase & lowercase letters",
                          fontSize: 15,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          textColor: Colors.white);
                    } else {
                      signup();
                    }
                  },
                  color: Color(0xFF388E3C),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// creating a widget for text field
Widget inputFile(
    {label, required TextEditingController controller, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
            color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
