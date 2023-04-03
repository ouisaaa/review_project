import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}
class LoginPage extends StatelessWidget {

  bool enabled = false;
  String stateText = "disable";


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
  String? id,password,passwordCheck,userName;


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
                    return '비밀번호를 입력하시오';
                  }
                  return null;
                },
                onSaved: (String? value){
                  password = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password_Check'
                ),
                validator: (value){
                  if(value?.isEmpty ?? false){
                    return '비밀번호가 다릅니다';
                  }
                  return null;
                },
                onSaved: (String? value){
                  password = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'User_Name'
                ),
                validator: (value){
                  if(value?.isEmpty ?? false){
                    return '사용자 이름을 입럭하시오';
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
        }, child: Text('join')),
      ],
    );
  }
}