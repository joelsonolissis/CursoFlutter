import 'dart:ui';
import 'package:flutter/material.dart';

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
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: HomePage(),
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
 return Container(
   child: Center(child: GestureDetector(child: Text('Contador: $counter'),
   onTap: () {
     setState(() {
       counter++;
     });
     
   },
   ),
   ),
 );
}
}
