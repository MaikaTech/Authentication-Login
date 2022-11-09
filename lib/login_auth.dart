// import 'package:flutter/material.dart';
// import 'package:labexam/home.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'auth.dart';
//
// class Authentication extends StatefulWidget {
//   String mail;
//
//   Authentication({required this.mail});
//
//   @override
//   State<Authentication> createState() => _AuthenticationState();
// }
//
// class _AuthenticationState extends State<Authentication> {
//   TextEditingController _mailTextController = TextEditingController();
//   TextEditingController _otpTextController = TextEditingController();
//   String otp = '0';
//
//   @override
//   void initState() {
//     setState(() {
//       _mailTextController.text = widget.mail;
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(
//               context,
//             );
//           },
//           icon: Icon(
//             Icons.arrow_back_ios,
//             size: 20,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Expanded(
//                 child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     Text(
//                       'Email Authentication',
//                       style: TextStyle(
//                           fontSize: 28,
//                           fontFamily: 'Poppins',
//                           color: Color(0xFFFF6F00),
//                           fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text(
//                       "Verify your Account",
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontFamily: 'Poppins',
//                           color: Colors.grey[700]),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 30),
//                   child: Column(
//                     children: <Widget>[
//                       inputFile(
//                           label: "Email", controller: _mailTextController),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 120),
//                   child: MaterialButton(
//                     minWidth: double.infinity,
//                     height: 50,
//                     onPressed: () async {
//                       otp = await auth(widget.mail);
//                       Fluttertoast.showToast(
//                           msg: "The OTP Code is sent to your email account.",
//                           toastLength: Toast.LENGTH_SHORT,
//                           gravity: ToastGravity.BOTTOM,
//                           timeInSecForIosWeb: 1,
//                           backgroundColor: Color(0xFF388E3C),
//                           textColor: Colors.white,
//                           fontSize: 16.0);
//                     },
//                     color: Color(0xFF388E3C),
//                     elevation: 0,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     child: Text(
//                       "Get Code",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 18,
//                         fontFamily: 'Poppins',
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 40),
//                   child: Column(
//                     children: <Widget>[
//                       inputFile(
//                           label: "OTP Code", controller: _otpTextController),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 40),
//                   child: Container(
//                     padding: EdgeInsets.only(top: 3, left: 3),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         border: Border(
//                           bottom: BorderSide(color: Colors.black),
//                           top: BorderSide(color: Colors.black),
//                           left: BorderSide(color: Colors.black),
//                           right: BorderSide(color: Colors.black),
//                         )),
//                     child: MaterialButton(
//                       minWidth: double.infinity,
//                       height: 60,
//                       onPressed: () {
//                         if (otp == _otpTextController.text) {
//                           Fluttertoast.showToast(
//                               msg: "Successfully Verified!",
//                               toastLength: Toast.LENGTH_SHORT,
//                               gravity: ToastGravity.BOTTOM,
//                               timeInSecForIosWeb: 1,
//                               backgroundColor: Colors.green[800],
//                               textColor: Colors.white,
//                               fontSize: 16.0);
//                           Navigator.push(context,
//                               MaterialPageRoute(builder: (context) => Home()));
//                         } else {
//                           Fluttertoast.showToast(
//                               msg: "OTP Code is Incorrect!",
//                               toastLength: Toast.LENGTH_SHORT,
//                               gravity: ToastGravity.BOTTOM,
//                               timeInSecForIosWeb: 1,
//                               backgroundColor: Colors.red,
//                               textColor: Colors.white,
//                               fontSize: 16.0);
//                         }
//                       },
//                       color: Color(0xFF388E3C),
//                       elevation: 0,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Text(
//                         "Verify",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 18,
//                           fontFamily: 'Poppins',
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(top: 100),
//                   height: 210,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/authlog.png"),
//                         fit: BoxFit.fitHeight),
//                   ),
//                 )
//               ],
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // we will be creating a widget for text field
// Widget inputFile(
//     {label, required TextEditingController controller, obscureText = false}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Text(
//         label,
//         style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.w400,
//             fontFamily: 'Poppins',
//             color: Colors.black87),
//       ),
//       SizedBox(
//         height: 5,
//       ),
//       TextField(
//         //readOnly: true,
//         controller: controller,
//         obscureText: obscureText,
//         decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.grey),
//             ),
//             border:
//                 OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
//       ),
//       SizedBox(
//         height: 10,
//       ),
//     ],
//   );
// }
