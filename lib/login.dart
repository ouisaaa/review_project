import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}
class LoginPage extends StatelessWidget {

  bool enabled = false;
  String stateText = "disable";

  void changeCheck() {
    if (enabled) {
      stateText = "disable";
      enabled = false;
    } else {
      stateText = "enable";
      enabled = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar:AppBar( title: Text("Stateless Test"),),
          body: TestScreen()
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
      return Column(
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
          ElevatedButton(onPressed: (){
            if(_formKey.currentState?.validate() ?? false){
              _formKey.currentState?.save();
              print('ID: $id, Password: $password');
            }
          }, child: Text('login')),
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
          }, child: Text('회원가입')),
        ],
      );
    }
}