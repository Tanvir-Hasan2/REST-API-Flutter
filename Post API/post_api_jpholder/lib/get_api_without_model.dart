import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetApiWithoutModel extends StatefulWidget {
  static const String routeName = '/getAPI1WithOutModel';
  const GetApiWithoutModel({super.key});

  @override
  State<GetApiWithoutModel> createState() => _GetApiWithoutModelState();
}

class _GetApiWithoutModelState extends State<GetApiWithoutModel> {
  List<Photos> photosList = [];

  Future<List<Photos>> getPhotos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        Photos photos = Photos(
            title: i['title'],
            thumbnailUrl: i['thumbnailUrl'],
            url: i['url'],
            id: i['id'],
            albumId: i['albumId']);
        photosList.add(photos);
      }
      return photosList;
    } else {
      return photosList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Get API without Model'),
      leading: IconButton(
        icon: Icon(Icons.arrow_back,color: Colors.black,),
        onPressed: () {
          Navigator.pop(context);
        },
      ),),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getPhotos(),
                builder: (context,AsyncSnapshot<List<Photos>> snapshot){
                  return ListView.builder(
                      itemCount: photosList.length,
                      itemBuilder: (context,index){
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(snapshot.data![index].url.toString()),
                          ),
                          trailing: CircleAvatar(
                            backgroundImage: NetworkImage(snapshot.data![index].thumbnailUrl.toString()),
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Notes Id:'+snapshot.data![index].id.toString()),
                              Text('AlbumID:'+snapshot.data![index].albumId.toString()),
                            ],
                          ),
                          subtitle: Text(snapshot.data![index].title.toString()),
                        );
                      });

                }
            ),
          ),
        ],
      ),
    );
  }
}

class Photos {
  String title, url, thumbnailUrl;
  int id, albumId;
  Photos(
      {required this.title,
      required this.thumbnailUrl,
      required this.url,
      required this.id,
      required this.albumId});
}
