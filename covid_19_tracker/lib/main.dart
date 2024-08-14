import 'package:covid_19_tracker/view/countries_list.dart';
import 'package:covid_19_tracker/view/details_screen.dart';
import 'package:covid_19_tracker/view/splash_screen.dart';
import 'package:covid_19_tracker/view/world_states.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   //brightness: Brightness.dark,
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      //   useMaterial3: false,
      //   appBarTheme: const AppBarTheme(
      //     surfaceTintColor: Colors.white,
      //     backgroundColor: Colors.white,
      //     centerTitle: true,
      //     elevation: 0.4,
      //     titleTextStyle: TextStyle(
      //       fontSize: 20,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.black,
      //     ),
      //   ),
      //
      // ),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        WorldStates.routeName: (context) => const WorldStates(),
        CountriesList.routeName: (context) => const CountriesList(),
        //DetailsScreen.routeName: (context) => const DetailsScreen(),
      },
    );
  }
}


