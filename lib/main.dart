
import 'package:flutter/material.dart';
import 'package:test1/category.dart';

import 'fashiondropdown.dart';


void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test1',
      home: MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {

  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar : AppBar(
          title : Text('Search for product, brands and more'),
         centerTitle: true,
          leading: Padding(
              padding:const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/logo.png'),
          ),
        ),
        body: Column(
            children:[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.black
                  ),
                ),
                child: Text(
                  'Category',
                  style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
                ),
              ),
              CategoryItem(
                  icon: 'assets/images/grocery.jpg',
                  label: 'Grocery',
              ),
              SizedBox(height: 10,),
              CategoryItem(
                  icon: 'assets/images/mobile.png',
                  label: 'Mobiles'
              ),
              SizedBox(height: 10,),
              FashiondropDown(),
            ]
        )
    );
  }
}





