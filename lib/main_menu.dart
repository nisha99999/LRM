import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  _MainMenuPageState createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
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
                  top:0,
                  right: 10,
                  child: Column(
                    children: [
                      Opacity(
                        opacity: 0.3,

                        child: Container(
                          width: 400,
                          height: 200,
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
                    height: 450,
                    width: 350,
                  ),
                ),


                Positioned(
                  top:200,
                  right:50,
                  child: Container(
                      width: 260,
                      height: 54,
                  color: Colors.white ,
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
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                          ),
                          child:  Text("Add New Report",
                            style: TextStyle(
                                color: Colors.black,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          onPressed: (){
                          },
                        ),
                      ),
                    ],
                    ),
                  ),
                ),
                Positioned(
                  top:185,
                  left:50,

                  child:Container(
                    width: 50,
                    height: 65,
                    color: Colors.white,
                    child:ListView(
                      children: [
                        SvgPicture.asset("assets/icons/new_report.svg",

                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),


                Positioned(
                  top:270,
                  right:50,
                  child: Container(
                    width: 300,
                    height: 54,
                    color: Colors.white ,
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
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                            ),
                            child:  Text("View Previous Report",
                              style: TextStyle(
                                  color: Colors.black,
                                fontFamily: 'Poppins',
                              ),
                            ),

                            onPressed: (){
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top:250,
                  left:50,
                  child:Container(
                    width: 50,
                    height: 65,
                    color: Colors.white,
                    child:ListView(
                      children: [
                        SvgPicture.asset("assets/icons/pre_report.svg",
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),


                Positioned(
                  top:340,
                  right:50,
                  child: Container(
                    width: 300,
                    height: 54,
                    color: Colors.white ,
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
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                            ),
                            child:  Text("View Health Analysis",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                            ),
                            onPressed: (){
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top:320,
                  left:50,
                  child:Container(
                    width: 50,
                    height: 65,
                    color: Colors.white,
                    child:ListView(
                      children: [
                        SvgPicture.asset("assets/icons/health.svg",
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),


                Positioned(
                  top:410,
                  right:50,
                  child: Container(
                    width: 300,
                    height: 54,
                    color: Colors.white ,
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
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                            ),
                            child:  Text("My Account",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black
                              ),
                            ),
                            onPressed: (){
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top:390,
                  left:50,
                  child:Container(
                    width: 50,
                    height: 65,
                    color: Colors.white,
                    child:ListView(
                      children: [
                        SvgPicture.asset("assets/icons/account.svg",
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top:460,
                  bottom: 20,
                  left: 150,
                  child:  Container(
                    alignment: Alignment.center,
                    child:  Text(
                      "SignOut",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top:130,
                  left: 220,
                  child:  Container(
                    alignment: Alignment.center,
                    child:  Text(
                      "Username",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top:70,
                  left: 150,
                  child:  Container(
                    alignment: Alignment.center,
                    child:  Text(
                      "LRM",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top:105,
                  left: 175,
                  child:Container(
                    width: 50,
                    height: 65,

                    child:ListView(
                      children: [
                        SvgPicture.asset("assets/icons/person.svg",
                          color: Colors.black,
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



