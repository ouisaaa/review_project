import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_project/controller/controller.dart';
import 'package:get/get.dart';

void main(){
  runApp(testScreen());
}

//테스트 코드
class testScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      title:"Demo",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MainPage(),
    );
  }
}
//테스트 코드

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar( title: Text('main'),),
        body:
        Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
          children: [
            Flexible( child:Text('음식점 추천 리스트',style: Theme.of(context).textTheme.bodyLarge,)),
            Flexible(child: GridView.builder(
          itemCount: 50,
          itemBuilder: (context,index){
            return Center(

                child: Column(
                    children: [
                      Text('index $index',style: Theme.of(context).textTheme.headlineSmall,)
                    ]
                )
            );
          },
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        ),),
            Flexible(child: Text('저장된 음식점 리스트',style: Theme.of(context).textTheme.bodyLarge)),
            Flexible( child: GridView.builder(
              itemCount: 50,
              itemBuilder: (context,index){
                return Center(
                    child: Column(
                        children: [
                          Text('Item $index',style: Theme.of(context).textTheme.headlineSmall,),
                        ]
                    )
                );
              },
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            )),
            Flexible( child: Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children:[
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){},
                  child: Text('검색'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(240,50)
                  ),

                ),
                SizedBox(width: 20,height: 10,),//간격
                ElevatedButton(onPressed: (){}
                  , child: Text('지도'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(240,50)
                  ),
                ),
              ],
            ))),
          ],
        )
        )
    );
    
  }
}
