import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar:AppBar( title: Text("로그인"),),
          body: Center(
             child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[ TestScreen(),]
             ),
          )
        )
    );
  }
}

class TestScreen extends StatefulWidget{
  @override
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<TestScreen>{
  final _formKey= GlobalKey<FormState>();
  String? id,password;


    @override
    Widget build(BuildContext context){
      return SizedBox(
        width: 500,
        height: 500,
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'ID'
                    ),
                    validator: (value){
                      if(value?.isEmpty ?? false){
                        return '아이디를 입력하시오';
                      }
                      return null;
                    },
                    onSaved: (String? value){
                      id = value;
                    },
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password'
                    ),
                    validator: (value){
                      if(value?.isEmpty ?? false){
                        return '아이디를 입력하시오';
                      }
                      return null;
                    },
                    onSaved: (String? value){
                      password = value;
                    },
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
            }, child: Text('login'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  minimumSize: Size(500,50)
              ),

            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              //테스트용 알림창 코드
              showDialog(context: context,barrierDismissible: false, builder: (BuildContext Context){
                return AlertDialog(
                  title: Text("Dialog title"),
                  content: Text("회원가입 클릭"),
                  actions: [
                    TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("OK"))
                  ],
                );
              });//테스트용 알림창 코드
            }, child: Text('회원가입'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                minimumSize: Size(500,50)
            ),),
          ],
        ),
      );

    }
}