import 'dart:core';

import 'package:flutter/material.dart';
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
      home: SearchPage(),
    );
  }
}
//테스트 코드
class storeList{
  String storeName;
  String location;
  storeList(this.storeName,this.location);
}
class SearchPage extends StatelessWidget {
  // const JoinPage({Key? key}) : super(key: key);

  // final _formKey= GlobalKey<FormState>();
  //String? id,password,passwordCheck,userName;
  List<storeList> store=[
    storeList('aa', '서울시 ㅁㅁㅁㅁ'), storeList('bb', '서울시 ssss'),
    storeList('cc', '서울시 ddddd'), storeList('dd', '서울시 fffff'),
    storeList('ee', '서울시 gggg'), storeList('ff', '서울시 hhhh'),
    storeList('aa', '서울시 ㅁㅁㅁㅁ'), storeList('bb', '서울시 ssss'),
    storeList('cc', '서울시 ddddd'), storeList('dd', '서울시 fffff'),
    storeList('ee', '서울시 gggg'), storeList('ff', '서울시 hhhh'),storeList('aa', '서울시 ㅁㅁㅁㅁ'), storeList('bb', '서울시 ssss'),
    storeList('cc', '서울시 ddddd'), storeList('dd', '서울시 fffff'),
    storeList('ee', '서울시 gggg'), storeList('ff', '서울시 hhhh'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar( title: Text("검색창"),),
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Form(child: TextFormField(decoration: InputDecoration(labelText: '찾고자하는 음식점을 검색해주세요')),),
                /** 검색 결과 창
                 * Expanded(
                    child:
                    ListView.separated(
                        itemCount: store.length,
                        itemBuilder: (context,index){
                          return ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                                backgroundColor: Colors.amberAccent,
                            ),
                            title: Text(store[index].storeName),
                            subtitle: Text(store[index].location),
                            onTap: (){

                            },
                          );
                        },
                      //리스트 경계선
                      separatorBuilder: (context, index) { return Divider(height: 2, color: Colors.black,); },
                    ),
                ),**/
                //SizedBox(height: 10,),
              ],
            ),
          ),
    );
  }
}