import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:post_api_jpholder/models/user_model.dart';
import 'package:http/http.dart' as http;

class ComplexJsonWithmodelGetApi extends StatefulWidget {
  static const String routeName = '/getAPIWithModelComplexJson';
  const ComplexJsonWithmodelGetApi({super.key});

  @override
  State<ComplexJsonWithmodelGetApi> createState() =>
      _ComplexJsonWithmodelGetApiState();
}

class _ComplexJsonWithmodelGetApiState
    extends State<ComplexJsonWithmodelGetApi> {
  List<UserModel> userList = [];
  Future<List<UserModel>> getUserApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        print(i['name']);
        userList.add(UserModel.fromJson(i));
      }
      return userList;
    } else {
      return userList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complex JSON With Model'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
            future: getUserApi(),
            builder: (context, AsyncSnapshot<List<UserModel>> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                    child: CircularProgressIndicator(
                  color: Colors.blue,
                ));
              } else {
                return ListView.builder(
                    itemCount: userList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ReusbaleRow(title: 'Name', value: snapshot.data![index].name.toString()),
                              ReusbaleRow(title: 'UserName', value: snapshot.data![index].username.toString()),
                              ReusbaleRow(title: 'Email', value: snapshot.data![index].email.toString()),
                              ReusbaleRow(title: 'Address', value: snapshot.data![index].address! .city.toString()),
                              ReusbaleRow(title: 'Geo-Lat', value: snapshot.data![index].address!.geo!.lat.toString()),
                              ReusbaleRow(title: 'Geo-Lng', value: snapshot.data![index].address!.geo!.lng.toString()),
                            ],
                          ),
                        ),
                      );
                    });
              }
            },
          ))
        ],
      ),
    );
  }
}

class ReusbaleRow extends StatelessWidget {
  String title, value;
 ReusbaleRow({required this.title, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
  }
}

