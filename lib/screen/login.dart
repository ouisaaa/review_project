import 'package:flutter/material.dart';
import 'package:flutter_project/controller/controller.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _formKey= GlobalKey<FormState>();
    String? id,password;

    return Scaffold(
          appBar:AppBar( title: Text("로그인"),),
          body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                  SizedBox(
                  width: 350,
                  height: 500,
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
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){
                        if(_formKey.currentState?.validate() ?? false){
                          _formKey.currentState?.save();
                          print('ID: $id, Password: $password');
                        }
                      }, child: Text('로그인'),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            minimumSize: Size(500,50)
                        ),

                      ),
                      SizedBox(height: 10,),//간격
                      ElevatedButton(onPressed: ()=>Get.toNamed('/join')
                        , child: Text('회원가입'),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            minimumSize: Size(500,50)
                        ),),
                    ],
                  ),
                ),
                    ]
                ),
              ),
            )
          )
        );
  }
}
