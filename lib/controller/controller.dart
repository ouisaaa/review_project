import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../screen/login.dart';
import '../screen/signUp.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      title:"Demo",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/',page: ()=> LoginPage(),transition: Transition.zoom),
        GetPage(name: '/join', page: ()=>JoinPage(),transition: Transition.zoom),
      ]
       ,
    );
  }

}