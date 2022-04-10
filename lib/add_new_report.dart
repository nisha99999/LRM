
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'main_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> list1 = [];
  var valueChoosen2 ;
  var valueChoosen;
  var valueChoosen1;
  var listItem = ["Lab Report", "Blood pressure", "Sugar",];
  List<String> stringList=[];
  bool labselect=false;

  void getlabs() async {
    http.Response response = await http.get(
        Uri.parse('http://192.168.0.113/LRM/api/user/getlabnames'));
    String data=response.body;
    stringList= List<String>.from(json.decode(data));
    /*showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(data),
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
    );*/
  }
  void get_test() async{
    http.Response response = await http.get(
        Uri.parse('http://192.168.0.113/LRM/api/user/gettestnames?labname='+valueChoosen1));
    String data=response.body;
    list1= List<String>.from(json.decode(data));


  }

  Widget add_by_camera()
  {
    return(

        Positioned(
          top: 260,
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
            onPressed:(){},
          ),
        )
    );
  }
  Widget add_manually()
  {
    return(
        Positioned(
          top: 340,
          left: 65,
          bottom: 40,
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
            onPressed: (){},
          ),
        )
    );
  }
  Widget show_main_dropdown()
  {
    return(
        Positioned(
          top: 200,
          left: 90,
          bottom: 50,
          child:DropdownButton(
              hint: Text("Select Report"),
              value: valueChoosen,
              onChanged: (newValue){
                setState(() {
                  valueChoosen = newValue;

                });
                check();
              },
              items: listItem.map((valueitem){
                return DropdownMenuItem(
                  value: valueitem,
                  child: Text(valueitem),
                );
              }).toList()
          ) ,
        )
    );
  }
  Widget Add_new_report()
  {
    return(

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
                        )
    );
  }

void check()
{
  if(valueChoosen=="Lab Report")
    labselect=true;
  else
    labselect=false;

}


Widget showalllabs ()
{
 getlabs();
return(
      Positioned(
        top: 300,
        left: 90,
        child:DropdownButton(
            hint: Text("Select Report"),
            value: valueChoosen1,
            onChanged: (newValue){
              setState(() {
                valueChoosen1 = newValue;

              });
              get_test();
            },
            items: stringList.map((valueitem){
              return DropdownMenuItem(
                value: valueitem,
                child: Text(valueitem),
              );
            }).toList()
        ) ,
      )

  );
}
  Widget showtest ()
  {
    return(
        Positioned(
          top: 300,
          left: 90,
          child:DropdownButton(
              hint: Text("Select "),
              value: valueChoosen2,
              onChanged: (newValue){
                setState(() {
                  valueChoosen2 = newValue;

                });
              },
              items: list1.map((valueitem){
                return DropdownMenuItem(
                  value: valueitem,
                  child: Text(valueitem),
                );
              }).toList()
          ) ,
        )

    );
  }
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
                      bottom: 50,
    right: 10,
    left:10,
    top: 150,

    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.white,
    ),
    height: 450,
    width: 350,
    child: new SingleChildScrollView(

    child: new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
                  Add_new_report(),
      show_main_dropdown(),
      if(labselect == true)
        showalllabs(),
      if(labselect == true)
        showtest(),
                    add_manually(),
                    add_by_camera(),

]
    )
    )
    )),








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








             ],
             ),
          ),
        ),
      ),
    );
  }
}
