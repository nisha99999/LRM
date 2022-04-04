import 'dart:convert';
import 'login_page.dart';
import 'package:flutter/material.dart';
import 'main_menu.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  _SignuppageState createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {

  final username_Controller = TextEditingController();
  final email_Controller = TextEditingController();
  final password_Controller = TextEditingController();
  final confirm_password_Controller = TextEditingController();
  final age_Controller = TextEditingController();

  void _handleGenderChange(String? value) {
    setState(() {
      _genderRadioBtnVal = value;
    });
  }
  bool validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return true;
    else
      return false;
  }


  void check_signiup() async {
    String? email = email_Controller.text.toString();
    if (username_Controller.text == "" || password_Controller.text == "" ||
        confirm_password_Controller.text == "" || age_Controller.text == "") {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Please fill out all the fields"),
            actions: <Widget>[
              TextButton(
                child: const Text('ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
            // Retrieve the text that the user has entered by using the
            // TextEditingController.
          );
        },
      );
    }
    else if (password_Controller.text != confirm_password_Controller.text){
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("password doesn't match"),
            actions: <Widget>[
              TextButton(
                child: const Text('ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
            // Retrieve the text that the user has entered by using the
            // TextEditingController.
          );
        },
      );

    }
    else if (validateEmail(email)) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Enter a Valid Email"),
            actions: <Widget>[
              TextButton(
                child: const Text('ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
            // Retrieve the text that the user has entered by using the
            // TextEditingController.
          );
        },
      );
    }
    else {
      http.Response response = await http.post(
        Uri.parse('http://192.168.0.113/LRM/api/user/insertuser'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "user_name": username_Controller.text,
          "gender": _genderRadioBtnVal.toString(),
          "email": email_Controller.text,
          "age": age_Controller.text,
          "user_passwd": password_Controller.text
        }),
      );
      if (response.statusCode == 200) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("Registered Successfully"),
              actions: <Widget>[
                TextButton(
                  child: const Text('ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
              // Retrieve the text that the user has entered by using the
              // TextEditingController.
            );
          },
        );
      }
    }
  }


  bool _obscureText=true;
  String? _genderRadioBtnVal="M";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        body: Center(
        child: Container(
        color: Color(0xFA16B8AE),
    child: Stack(
    children: [
      Positioned(
        child: Column(
          children: [
            Opacity(
              opacity: 0.3,
              child: Container(
                width: 360,
                height: 298,
                decoration: BoxDecoration(
                  borderRadius : BorderRadius.circular(30),
                  color : Color(0xFFF5FEFD),
                  image : DecorationImage(
                      image: AssetImage('assets/images/doctor.png'),
                      fit: BoxFit.cover
                  ),
                ),
              ),
            ),
          ],
        ),
      ),


      Positioned(
        bottom: 10,
        right: 10,
        left:10,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          height: 570,
          width: 350,
        ),
      ),

      Positioned(
        right: 20,
        left: 20,
        top: 70,
        child: Container(
          child: Column(
            children: [
              TextFormField(
                controller: username_Controller,
                decoration:InputDecoration(
                  hintText: "Enter UserName",
                  labelText: "UserName",
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      color: Colors.black,width: 1,
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xFF68F8DE).withOpacity(0.5),
                ),
              ),
              SizedBox(height:10.0,),
              TextFormField(
                controller: email_Controller,
                decoration:InputDecoration(
                  hintText: "Enter Your Email",
                  labelText: "Email",
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      color: Colors.black,width: 1,
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xFF68F8DE).withOpacity(0.5),
                  //prefixIcon: Icon(Icons.mail),
                ),
              ),
              SizedBox(height:10.0,),
              TextFormField(
                controller: password_Controller,
                obscureText: _obscureText,
                decoration:  InputDecoration(
                  suffixIcon: GestureDetector(onTap: (){
                    setState(() {
                      _obscureText=!_obscureText;
                    });
                  },
                    child: Icon(
                        _obscureText ? Icons.visibility:Icons.visibility_off
                    ),
                  ),
                  hintText: "Enter Password",
                  labelText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      color: Colors.black,width: 1,
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xFF68F8DE).withOpacity(0.5),
                ),
              ),
              SizedBox(height:10.0,),
              TextFormField(
                controller: confirm_password_Controller,
                obscureText: _obscureText,
                decoration:  InputDecoration(
                  suffixIcon: GestureDetector(onTap: (){
                    setState(() {
                      _obscureText=!_obscureText;
                    });
                  },
                    child: Icon(
                        _obscureText ? Icons.visibility:Icons.visibility_off
                    ),
                  ),
                  hintText: "Confirm Password",
                  labelText: "Confirm Password",
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      color: Colors.black,width: 1,
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xFF68F8DE).withOpacity(0.5),
                ),
              ),
              SizedBox(height:10.0,),
              TextFormField(
                controller: age_Controller,
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration:  InputDecoration(
                  hintText: "Enter Age",
                  labelText: "Age",
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      color: Colors.black,width: 1,
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xFF68F8DE).withOpacity(0.5),
                ),
              ),
              SizedBox(height:10.0,),
              Container(
                alignment: Alignment.centerLeft,
                child:  Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),

              Container(
                  child:Column(
                    children: [
                  Row(
                  children: <Widget>[
                  Radio<String>(
                    value: "M",
                    groupValue: _genderRadioBtnVal,
                    onChanged: _handleGenderChange,
                  ),
                Text("Male"),
                Radio<String>(
                  value: "F",
                  groupValue: _genderRadioBtnVal,
                  onChanged: _handleGenderChange,
                ),
                Text("Female"),
                ],
              )
            ]
        )
      ),

             // SizedBox(height:10.0,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF16B8AE),
                    padding: EdgeInsets.all(15),
                    minimumSize: Size(150,40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),

                child:  Text("Signup"),
                onPressed: check_signiup,
              ),
              SizedBox(height:10.0,),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),

              Positioned(

                child:Container(
                  alignment: Alignment.center,
                  child: FlatButton(
                    child:Text("Login",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context)=>
                              LoginPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),


            ],
          ),
        ),




      ),

    ],

    ),
    ),
    ),
    ),
    );
  }
}



