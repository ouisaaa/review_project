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
      home: ReviewsPage(),
    );
  }
}
//테스트 코드

class ReviewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar:AppBar(
                title: Text('ㅁㅁ음식점'),
                bottom: TabBar(
                  tabs: [Tab(text: '정보'),Tab(text:'리뷰'),Tab(text:'길찾기'),Tab(text:'공유')],
                )
            ),

            body:
            TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      //리뷰페이지-> 현제 테스트 용도로 회원가입 컨테이너를 넣은 상태
                      children: [
                        Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                  Text(
                                    "test screen1",style: TextStyle(fontSize: 20),
                                  )
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "test screen2",style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ) ,
                        Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "test screen3",style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "test screen4",style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        ],)

                )
    );
  }
}
