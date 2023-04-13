import 'package:flutter/material.dart';
import 'package:get/get.dart';


class JoinPage extends StatelessWidget {
 // const JoinPage({Key? key}) : super(key: key);

 // final _formKey= GlobalKey<FormState>();
  //String? id,password,passwordCheck,userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar:AppBar( title: Text("JoinPage"),),
            body: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                          SizedBox(
                            width: 500, height: 500,
                            child: Column(
                            children: [
                              Form(
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                        labelText: 'ID'
                                    ),

                                  ),
                                  SizedBox(height: 10,),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        labelText: 'Password'
                                    ),
                                  ),

                                  SizedBox(height: 10,),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        labelText: 'Password_Check'
                                    ),

                                  ),
                                  SizedBox(height: 10,),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        labelText: 'User_Name'
                                    ),

                                  ),
                                  SizedBox(height: 10,),
                                ],
                              ),
                            ),
                            ElevatedButton(onPressed: ()=>Get.offAllNamed('/')
                              , child: Text('join'),
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