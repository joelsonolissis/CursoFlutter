import 'dart:ui';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(0.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (text){
              email = text;
            },
            keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
          ),
          SizedBox(height:10),
          TextField(
            onChanged: (text){
              senha = text;
            },
            obscureText: true,
          decoration: InputDecoration(
            labelText: 'Senha',
            border: OutlineInputBorder(),
          ),
          ),
          SizedBox(height:15),
          RaisedButton(
            onPressed: (){
              if(email == 'olissismorais1@outlook.com' && senha=='123'){
                print('entrou');
              }else{
                print('invalido');
              }
            },
            child:Text('Entrar'),
          
          ), 
          ],
         ),
        ),
      ),
      ),
    );
  }
}