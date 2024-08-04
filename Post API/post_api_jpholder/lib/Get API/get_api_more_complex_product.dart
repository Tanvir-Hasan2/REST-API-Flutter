import 'package:flutter/material.dart';

class GetApiMoreComplexProduct extends StatefulWidget {
  static const String routeName = '/getApiProducts';
  const GetApiMoreComplexProduct({super.key});

  @override
  State<GetApiMoreComplexProduct> createState() => _GetApiMoreComplexProductState();
}

class _GetApiMoreComplexProductState extends State<GetApiMoreComplexProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complex JSON With Model Products'),
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
      body: Center(
        child: Text('hello'),
      ),
    );
  }
}
