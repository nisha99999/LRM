import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText=true;
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
              opacity: 0.8,
              child: Container(
                width: 360,
                height: 258,
                decoration: BoxDecoration(
                  borderRadius : BorderRadius.circular(30),
                  color : Color(0xFFF5FEFD),
                  image : DecorationImage(
                      image: AssetImage('assets/images/medicine.png'),
                      fit: BoxFit.cover
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      Positioned(
        top: 120,
        left: 20,
        right: 20,
        child:  Container(
          alignment: Alignment.center,
          child: Text(
            "Welcome To LRM " ,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),

      Positioned(
        top: 180,

        child: Container(
          height: 400,
            width: 320,

            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(20.0),
            decoration:BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1,color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(12))
            ),
          child: Column(
            children: [
          //username field
          TextFormField(
          decoration: const InputDecoration(
          hintText: "Enter UserName",
            labelText: "UserName",
          ),
        ),
              SizedBox(
                height: 20,
              ),
              //password field
              TextFormField(
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
                ),
              ),
              //text container
              Container(
                alignment: Alignment.topRight,
                child: Text(
                  "Forget Password ?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF16B8AE),
                    padding: EdgeInsets.all(15),
                    minimumSize: Size(150,40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                child:  Text("Login"),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=>
                          Signuppage(),
                    ),
                  );

                },
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child:  Text(
                  "Signup",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ],),

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

