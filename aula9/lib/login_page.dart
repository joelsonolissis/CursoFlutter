import 'dart:ui';
import 'package:flutter/material.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';
  @override
  Widget _body(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          child: Image.asset('assets/img/j.jpg'),
        ),
        TextField(
          onChanged: (text) {
            email = text;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          onChanged: (text) {
            senha = text;
          },
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Senha',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 15),
        RaisedButton(
          onPressed: () {
            if (email == 'olissismorais1@outlook.com' && senha == '123') {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            } else {
              print('invalido');
            }
          },
          child: Text('Entrar'),
        ),
      ],
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.red),
          _body(),
        ],
      ),
    );
  }

}