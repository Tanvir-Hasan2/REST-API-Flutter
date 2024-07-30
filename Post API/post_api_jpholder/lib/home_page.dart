import 'package:flutter/material.dart';
import 'package:post_api_jpholder/hex_color.dart';
import 'package:post_api_jpholder/Get%20API/home_screen.dart';

import 'Get API/complex_json_withmodel_get_api.dart';
import 'Get API/complex_json_without_model.dart';
import 'Get API/get_api_without_model.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('REST API'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, HomeScreen.routeName);
            }, child: Text('Get API 1 with model')),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, GetApiWithoutModel.routeName);
            }, child: Text('Get API without Model')),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, ComplexJsonWithmodelGetApi.routeName);
            }, child: Text('Complex Json withModel')),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, HexColor.routeName);
            }, child: Text('Hex Color')),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, ComplexJsonWithoutModel.routeName);
            }, child: Text('Complex Json withOutModel')),
            ElevatedButton(onPressed: (){}, child: Text('Get API')),
            ElevatedButton(onPressed: (){}, child: Text('Get API')),
            ElevatedButton(onPressed: (){}, child: Text('Get API')),
            ElevatedButton(onPressed: (){}, child: Text('Get API')),
          ],
        ),
      ),
    );
  }
}
