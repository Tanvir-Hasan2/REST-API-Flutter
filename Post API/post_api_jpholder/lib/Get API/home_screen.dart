import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:post_api_jpholder/models/posts_model.dart';
import 'package:http/http.dart' as http;


class HomeScreen extends StatefulWidget {
  static const String routeName = '/getAPI1WithModel';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  List<PostsModel> postList = [];

  Future<List<PostsModel>> getPostApi() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    if(response.statusCode == 200){
      postList.clear();//etar jonno hot restart korle o load hobe na abr
     for(Map i in data){
       postList.add(PostsModel.fromJson(i));
     }
   return postList;
    }else{
      return postList;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GET API'
      ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getPostApi(),
                builder: (context, snapshot){
                  if(!snapshot.hasData){
                    //return const Text('Loading...');
                    return Center(child: CircularProgressIndicator(color: Colors.blue,));
                  }else{
                    return ListView.builder(
                      itemCount: postList.length,
                        itemBuilder: (context, index){
                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Title', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  Text(postList[index].title.toString()+'\n'),
                                  const Text('Description', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  Text(postList[index].body.toString()+'\n'),
                                ],
                              ),
                            ),
                          );
                        }
                    );
            
                  }
            }),
          ),

        ],
      ),
      
    );
  }
}