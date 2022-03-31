import 'package:flutter/material.dart';
import 'main_menu.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  _SignuppageState createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  bool _obscureText=true;
  int _value=1;
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
          height: 550,
          width: 350,
        ),
      ),

      Positioned(
        right: 20,
        left: 20,
        top: 90,
        child: Container(
          child: Column(
            children: [
              TextFormField(
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
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value){},
                          ),
                          SizedBox(width: 10,),
                          Text("Male"),
                          Radio(
                            value: 2,
                            groupValue: _value,
                            onChanged: (value){},
                          ),
                          SizedBox(width: 10,),
                          Text("Female"),
                        ],
                      ),
                    ],)),

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
                onPressed: (){

                  Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context)=>
                          MainMenuPage(),
                      ),
                  );
                },
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

              Container(
                alignment: Alignment.center,
                child:  Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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



