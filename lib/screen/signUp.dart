import 'package:flutter/material.dart';
import 'package:get/get.dart';


class JoinPage extends StatelessWidget {
 // const JoinPage({Key? key}) : super(key: key);

 // final _formKey= GlobalKey<FormState>();
  //String? id,password,passwordCheck,userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar:AppBar( title: Text("회원가입"),),
            body: SafeArea(
              child: Center(
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
            ),
        );
  }
}