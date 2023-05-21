import 'dart:html';
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
        appBar:AppBar(
          title: Text('main'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
              children:[
                UserAccountsDrawerHeader(accountName: Text("test"), accountEmail: Text("test_id")),
                ListTile(
                  leading: Icon(Icons.person),
                  iconColor: Colors.indigo,
                  focusColor: Colors.indigo,
                  title: Text('로그인'),
                  onTap: ()=>Get.toNamed('/login'),
                  trailing: Icon(Icons.navigate_next),
                ),
              ]
            ),
        ),
        body: Center(
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
                        Text('item $index',style: Theme.of(context).textTheme.headlineSmall,)
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
              Flexible(
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: ()=>Get.toNamed('/search'),
                          child: Text('음식점 검색'),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              minimumSize: Size(240,50)
                          ),
                        ),
                        SizedBox(width: 20,height: 10,),//간격
                        ElevatedButton(onPressed: (){}
                          , child: Text('지도로 찾아보기'),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              minimumSize: Size(240,50)
                          ),
                        ),
                      ],
                    )
                )
              ),
            ],
        )
      ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '홈화면',
                backgroundColor: Colors.indigo,
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.location_on),
                label: '위치 설정',
                backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.map),
                label: '지도 검색',
                backgroundColor: Colors.pink
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.search),
                label: '검색창',
                backgroundColor: Colors.purple
            ),
          ],
          //currentIndex: ,
          selectedItemColor: Colors.white,
          onTap:(int index){
            switch(index){
              case 0:
                Get.offAllNamed('/');
                break;
              case 1:
                Get.toNamed('/loaction');
                break;
              case 2:
                Get.toNamed('/map');
                break;
              case 3:
                Get.toNamed('/search');
                break;
            }
          }
        )
    );
  }
}
