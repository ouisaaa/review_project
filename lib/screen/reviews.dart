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
      home: ReviewPage(),
    );
  }
}
//테스트 코드

class ReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar:AppBar(
                title: Text('main'),
                bottom: TabBar(
                  tabs: [Tab(text: 'test1'),Tab(text:'test2'),Tab(text:'text3'),Tab(text:'text4')],
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
                                SizedBox(
                                  width: 350, height: 500,
                                  child: Column(
                                    children: [
                                      Form(
                                        child: Column(
                                          children: [
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '아이디'
                                              ),

                                            ),
                                            SizedBox(height: 10,),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '비밀번호'
                                              ),
                                            ),

                                            SizedBox(height: 10,),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '비밀번호 확인'
                                              ),

                                            ),
                                            SizedBox(height: 10,),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '닉네임'
                                              ),

                                            ),
                                            SizedBox(height: 10,),
                                          ],
                                        ),
                                      ),
                                      ElevatedButton(onPressed: ()=>Get.offAllNamed('/')
                                        , child: Text('회원가입'),
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                            minimumSize: Size(500,50)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 350, height: 500,
                                  child: Column(
                                    children: [
                                      Form(
                                        child: Column(
                                          children: [
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '아이디'
                                              ),

                                            ),
                                            SizedBox(height: 10,),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '비밀번호'
                                              ),
                                            ),

                                            SizedBox(height: 10,),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '비밀번호 확인'
                                              ),

                                            ),
                                            SizedBox(height: 10,),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '닉네임'
                                              ),

                                            ),
                                            SizedBox(height: 10,),
                                          ],
                                        ),
                                      ),
                                      ElevatedButton(onPressed: ()=>Get.offAllNamed('/')
                                        , child: Text('회원가입'),
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                            minimumSize: Size(500,50)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ) ,
                        Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 350, height: 500,
                                  child: Column(
                                    children: [
                                      Form(
                                        child: Column(
                                          children: [
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '아이디'
                                              ),

                                            ),
                                            SizedBox(height: 10,),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '비밀번호'
                                              ),
                                            ),

                                            SizedBox(height: 10,),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '비밀번호 확인'
                                              ),

                                            ),
                                            SizedBox(height: 10,),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '닉네임'
                                              ),

                                            ),
                                            SizedBox(height: 10,),
                                          ],
                                        ),
                                      ),
                                      ElevatedButton(onPressed: ()=>Get.offAllNamed('/')
                                        , child: Text('회원가입'),
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                            minimumSize: Size(500,50)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 350, height: 500,
                                  child: Column(
                                    children: [
                                      Form(
                                        child: Column(
                                          children: [
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '아이디'
                                              ),

                                            ),
                                            SizedBox(height: 10,),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '비밀번호'
                                              ),
                                            ),

                                            SizedBox(height: 10,),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '비밀번호 확인'
                                              ),

                                            ),
                                            SizedBox(height: 10,),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '닉네임'
                                              ),

                                            ),
                                            SizedBox(height: 10,),
                                          ],
                                        ),
                                      ),
                                      ElevatedButton(onPressed: ()=>Get.offAllNamed('/')
                                        , child: Text('회원가입'),
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                            minimumSize: Size(500,50)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ],)

                )
    );
  }
}
