

import 'package:bloc_my_work/screens/thumb_neumorphic.dart';
import 'package:bloc_my_work/services/open_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  static const id = 'home_screen';
  
  Widget _backButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: 70,
          height: 60,
          child: NeumorphicButton(
            border: NeumorphicBorder(
              depth: 5.0,
            ),
            boxShape: NeumorphicBoxShape.roundRect(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(Icons.arrow_back),
            onClick: () {
              try {
                OpenScreenRoute().openSCreen(
                  context,
                  (context) => ThumNeu(),
                );
              } catch (e) {
                print('Error $e');
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildHead(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      direction: Axis.horizontal,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Hello,', style: TextStyle(fontSize: 18.0)),
            SizedBox(
              height: 10,
            ),
            Text(
              'Liliana Jiménez',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 30,
                color: Colors.teal.shade200,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/liliana.jpg'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _backButton(context),
                Center(
                  child: _buildHead(context),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 160,
                          width: 180,
                          child: Card(
                            color: Colors.grey[300],
                            elevation: 5,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Checkbox(
                                    value: false,
                                    onChanged: null,
                                    activeColor: Colors.white,
                                    checkColor: Colors.white,
                                  ),
                                  title: Text(
                                    'Workout',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  leading: Checkbox(
                                      value: true,
                                      onChanged: null,
                                      checkColor: Colors.white),
                                  title: Text(
                                    'Meet skype Been',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black87,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 160,
                          width: 180,
                          child: Card(
                            color: Colors.grey[300],
                            elevation: 5,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Checkbox(
                                    value: true,
                                    onChanged: null,
                                    activeColor: Colors.white,
                                    checkColor: Colors.white,
                                  ),
                                  title: Text(
                                    'Other tasks',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  leading: Checkbox(
                                      value: false,
                                      onChanged: null,
                                      checkColor: Colors.white),
                                  title: Text(
                                    'Home Tasks',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 160,
                          width: 200,
                          child: Card(
                            color: Colors.grey[300],
                            elevation: 5,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Checkbox(
                                    value: false,
                                    onChanged: null,
                                    activeColor: Colors.white,
                                    checkColor: Colors.white,
                                  ),
                                  title: Text(
                                    'Workout',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  leading: Checkbox(
                                      value: true,
                                      onChanged: null,
                                      checkColor: Colors.white),
                                  title: Text(
                                    'Buy milk',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black87,
                                      decoration: TextDecoration.lineThrough,
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
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'List',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 30,
                        color: Colors.black54,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[100]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                  child: Icon(
                                Icons.card_travel,
                                color: Colors.yellow.shade400,
                                size: 70,
                              )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Work',
                                        style: TextStyle(fontSize: 22),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '5',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[100],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                      child: Icon(
                                    Icons.person_outline,
                                    color: Colors.teal,
                                    size: 70,
                                  )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Personal',
                                            style: TextStyle(fontSize: 22),
                                            textAlign: TextAlign.center,
                                          )),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '5',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 120),
                  child: NeumorphicButton(
                    border: NeumorphicBorder(
                      depth: 5.0,
                    ),
                    boxShape: NeumorphicBoxShape.circle(),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            icon: Icon(
                              Icons.add,
                              size: 40,
                            ),
                            onPressed: () {}),
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
