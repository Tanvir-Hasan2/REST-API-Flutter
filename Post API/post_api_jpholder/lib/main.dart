import 'package:flutter/material.dart';
import 'package:post_api_jpholder/Get%20API/get_api_without_model.dart';
import 'package:post_api_jpholder/home_page.dart';
import 'package:post_api_jpholder/Get%20API/home_screen.dart';

import 'Get API/complex_json_withmodel_get_api.dart';
import 'Get API/complex_json_without_model.dart';
import 'hex_color.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
        appBarTheme: const AppBarTheme(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.4,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        GetApiWithoutModel.routeName: (context) => const GetApiWithoutModel(),
        ComplexJsonWithmodelGetApi.routeName: (context) => const ComplexJsonWithmodelGetApi(),
        HexColor.routeName: (context) => HexColor(),
        ComplexJsonWithoutModel.routeName: (context) => const ComplexJsonWithoutModel(),
      },
    );
  }
}


