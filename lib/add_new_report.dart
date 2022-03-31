

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'main_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var valueChoosen;
  var listItem = ["Lab Report", "Blood pressure", "Sugar",];

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
                      height: 500,
                      width: 350,
                    ),
                  ),


                  Positioned(
                    top:130,
                    right:80,
                    child: Container(
                      width: 200,
                      height: 41,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(30),
                        ),
                        color : Color(0xFF16B8AE),
                      ),
                      child:Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Add New Report",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                  ),
                  ),


                  Positioned(
                    top:90,
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
                    top:65,
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

                  Positioned(
                    top:40,
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
                    top:90,
                    left: 50,
                    height: 45,
                    width:100,
                    child: GestureDetector(
                      child: Text("Home",style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.normal,)),
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context)=>
                                  MainMenuPage(),
                            )
                        );
                      },
                    )
                  ),

                  Positioned(
                    top:70,
                    left: 10,
                    child:Container(
                      width: 50,
                      height: 65,

                      child:ListView(
                        children: [
                          SvgPicture.asset("assets/icons/home.svg",
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),




                  Positioned(
                    top: 200,
                    left: 90,
                    child:DropdownButton(
                      hint: Text("Select Report"),
                      value: valueChoosen,
                      onChanged: (newValue){
                        setState(() {
                          valueChoosen = newValue;
                        });
                      },
                      items: listItem.map((valueitem){
                        return DropdownMenuItem(
                          value: valueitem,
                          child: Text(valueitem),
                        );
                      }).toList()
                    ) ,
                  ),


                  Positioned(
                    top: 350,
                   left: 65,
                   child: ElevatedButton.icon(
                     icon: Icon(Icons.add_a_photo,color: Colors.black),
                     label: Text("Add Report Using camera",
                       style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.normal,
                           color: Colors.black
                       ),
                     ),
                     style: ElevatedButton.styleFrom(
                         primary: Color(0xFF16B8AE),
                         padding: EdgeInsets.all(15),
                         minimumSize: Size(170,60),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20)
                         )
                     ),
                     onPressed: (){
                     },
                   ),
                  ),

                  Positioned(
                    top: 440,
                    left: 65,
                    width:230,
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.post_add,color: Colors.black,),
                      label: Text("Add Report Manually",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                        ),
                      ),

                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF16B8AE),
                          padding: EdgeInsets.all(15),
                          minimumSize: Size(170,60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                      onPressed: (){
                      },
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
