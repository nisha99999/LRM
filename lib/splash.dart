import 'package:flutter/material.dart';
import 'package:lrm/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
                top:100,
                left:10,
                right: 10,
                child:Container(
                  width: 350,
                  height: 150,
                  color: Colors.white,
                  child:ListView(
                    children: [
                      Image.asset("assets/images/medicine.png",
                        fit: BoxFit.cover,
                        width: 350,
                        height: 150,
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 30,
                left: 20,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "WELCOME TO LRM",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),


              Positioned(
                top: 280,
                left: 10,
                child: Column(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        width: 340,
                        height: 330,
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.circular(30),
                          color : Color(0xFFF5FEFD),
                          image : DecorationImage(
                              image: AssetImage('assets/images/splash_bottles.png'),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 350,
                left: 70,
                right: 70,
                child: Container(
                  width: 130,
                  alignment: Alignment.center,
                  child: Text(
                    "we will make it easy for you to maintain your health",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        letterSpacing: 0
                    ),
                  ),
                ),
              ),

              Positioned(
                top:500,
                right:80,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child:  ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF16B8AE),
                            padding: EdgeInsets.all(15),
                            minimumSize: Size(180,40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child:  Text("Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
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
                    ],
                  ),
                ),

              Positioned(
                top: 570,
                left: 90,
                right: 60,
                child: Container(
                  width: 130,
                  alignment: Alignment.center,
                  child: Text(
                    "Let's Go",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0
                    ),
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
