import 'package:flutter/material.dart';
import 'package:post_api_jpholder/hex_color.dart';
import 'package:post_api_jpholder/Get%20API/home_screen.dart';
import 'package:post_api_jpholder/post/login_signup_with_rest_api.dart';

import 'Get API/complex_json_withmodel_get_api.dart';
import 'Get API/complex_json_without_model.dart';
import 'Get API/get_api_more_complex_product.dart';
import 'Get API/get_api_without_model.dart';
import 'post/upload_img_post_api_multiport_http.dart';

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
      appBar: AppBar(title: const Text('REST API'),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }, child: const Text('Get API 1 with model')),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, GetApiWithoutModel.routeName);
                }, child: const Text('Get API without Model')),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, ComplexJsonWithmodelGetApi.routeName);
                }, child: const Text('Complex Json withModel')),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, HexColor.routeName);
                }, child: const Text('Hex Color')),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, ComplexJsonWithoutModel.routeName);
                }, child: const Text('Complex Json withOutModel')),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, GetApiMoreComplexProduct.routeName);
                }, child: const Text('Get API Products')),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, LoginSignupWithRestApi.routeName);
                }, child: const Text(' Login & Sign Up with POST API ')),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, UploadImgPostApiMultiportHttp.routeName);
                }, child: const Text('Upload File/Image To POST API')),
                ElevatedButton(onPressed: (){}, child: const Text('Get API')),
                ElevatedButton(onPressed: (){}, child: const Text('Get API')),
                ElevatedButton(onPressed: (){}, child: const Text('Get API')),
                ElevatedButton(onPressed: (){}, child: const Text('Get API')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
