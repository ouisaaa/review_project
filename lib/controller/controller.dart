import 'package:flutter_project/screen/main2.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../screen/login.dart';
import '../screen/signUp.dart';
import '../screen/search.dart';

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
        GetPage(name: '/', page: ()=>MainPage(),transition: Transition.zoom ),
        GetPage(name: '/login',page: ()=> LoginPage(),transition: Transition.zoom),
        GetPage(name: '/join', page: ()=>JoinPage(),transition: Transition.zoom),
        GetPage(name: '/search',page: ()=>SearchPage(),transition: Transition.zoom),
      ]
       ,
    );
  }

}