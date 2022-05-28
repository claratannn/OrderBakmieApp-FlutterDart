import 'package:flutter/material.dart';
import 'package:flutter_application/home.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 43, 30, 36),
              child:
                  ListView(physics: ClampingScrollPhysics(), children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Edit Profile',
                        style: TextStyle(fontFamily: 'Mulish', fontSize: 20),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      GestureDetector(
                        onTap: () {
                          print("Picture Changed");
                        },
                        child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 95,
                                    height: 94,
                                    child: Icon(
                                      Icons.person,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      size: 70,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Change Picture',
                        style: TextStyle(fontFamily: 'Mulish', fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    'Nama : ',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      labelText: 'Willy',
                      labelStyle: TextStyle(fontFamily: 'Mulish', fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    'Nomor Telepon : ',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      labelText: '1234-5678-910',
                      labelStyle: TextStyle(fontFamily: 'Mulish', fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    'Alamat : ',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      labelText:
                          'Jl. Rumah Willy No. 69 RT. 666 RW.\n777, Rumahku, Rumahnya, 12345.',
                      labelStyle: TextStyle(fontFamily: 'Mulish', fontSize: 14),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 63, 186, 126),
                    ),
                    child: const Text(
                      'SAVE CHANGES',
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(
                                    title: 'Bakmie Kim-An',
                                  )));
                    },
                  ),
                ),
              ]))),
    );
  }
}
