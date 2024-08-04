import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoginSignupWithRestApi extends StatefulWidget {
  static const String routeName = '/loginSignup';
  const LoginSignupWithRestApi({super.key});

  @override
  State<LoginSignupWithRestApi> createState() => _LoginSignupWithRestApiState();
}

class _LoginSignupWithRestApiState extends State<LoginSignupWithRestApi> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  void login(String email, String password) async{
    try{
      Response response = await post(
        //for login just change the url and cng
        // the text "login on te signup" child
        // section any more nothing to do.
        //Uri.parse('https://reqres.in/api/register'),
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': email,
          'password': password,
        });
      if(response.statusCode == 200){

        var data = jsonDecode(response.body.toString());
        print (data);
        //print(data['id']);
        print(data['token']);
         //print('Account created successfully!');
         print('login successfully!');

      }else{
        print('Faild to login');
      }

    }catch(e){
      print(e.toString());
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Login & Sign Up with REST API'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email_outlined),
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_outline),
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
            const SizedBox(height: 40,),
            Container(
              width: MediaQuery.of(context).size.width * 0.5, // Will take 50% of screen space
              child: ElevatedButton(
                  onPressed: (){
                    login(emailController.text.toString(), passwordController.text.toString().trim());
                  },
                  //child: Text('Sign Up'),
                  child: const Text('Login'),
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: const Size(100, 50), //////// HERE
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
