import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wvsu_tour_app/config/app.dart';
import 'package:wvsu_tour_app/firebase/auth.dart';
import 'package:wvsu_tour_app/screens/auth_screen.dart';
import 'package:wvsu_tour_app/screens/home_screen.dart';
import 'package:wvsu_tour_app/screens/login_screen.dart';
import 'package:wvsu_tour_app/screens/root_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // initialRoute: "/",
        home: AuthScreen(),
        theme: ThemeData(
          primaryColor: appPrimaryColor,
          scaffoldBackgroundColor: appScaffoldBackgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(bodyColor: appTextBodyColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: <String, WidgetBuilder>{
          '/login': (BuildContext context) => new LoginScreen(),
          '/home': (BuildContext context) => new HomeScreen(),
        });
  }
}
