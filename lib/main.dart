import 'package:bloc_my_work/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/thumb_neumorphic.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     debugShowCheckedModeBanner: false,
    title: 'My Work',
      initialRoute: ThumNeu.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ThumNeu.id:(context)=>ThumNeu(),
      },
     // home: WorkList(),
    home: ThumNeu(),
      );
  }
}
