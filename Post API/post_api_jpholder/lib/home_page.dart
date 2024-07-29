import 'package:flutter/material.dart';
import 'package:post_api_jpholder/complex_json_withmodel_get_api.dart';
import 'package:post_api_jpholder/get_api_without_model.dart';
import 'package:post_api_jpholder/home_screen.dart';

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
            ElevatedButton(onPressed: (){}, child: Text('Get API')),
            ElevatedButton(onPressed: (){}, child: Text('Get API')),
          ],
        ),
      ),
    );
  }
}
