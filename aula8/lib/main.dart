import 'dart:ui';
import 'package:flutter/material.dart';
import 'app_controller.dart';
import 'login_page.dart';
main(){
  runApp(AppWidget(
    title: 'Flutterando 3'
  ));
}
class AppWidget extends StatelessWidget{
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (conext, child){
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: AppController.instance.darkTheme ? Brightness.light : Brightness.dark ,
        ),
        home: LoginPage(),
      );
    },
    );
  }
}


class HomePage extends StatefulWidget{

@override
State<StatefulWidget> createState(){
 return HomePageState();
}
}

class HomePageState extends State<HomePage>{
  int counter = 0;

Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text('Joelson Morais'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
       counter++;
     });
      },
      child: Icon(Icons.add),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
        children: [Switch(
          value: AppController.instance.darkTheme, 
          onChanged: (value){
            AppController.instance.changeTheme();
          }),
          Text('Contador: $counter'),
        ]),
      ),
    );
}
}
