import 'package:flutter/material.dart';

import 'fashiondropdown.dart';


class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String? selectedFashion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/logo.png'),
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search for product, brands and more',
            hintStyle: TextStyle(color: Colors.black),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.black),
          ),
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
            ),
            child: Text(
              'Category',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset('assets/images/grocery.jpg', width: 100, height: 100),
                  SizedBox(height: 5),
                  Text('Grocery', style: TextStyle(fontSize: 18)),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/mobile.png', width: 100, height: 100),
                  SizedBox(height: 5),
                  Text('Mobile', style: TextStyle(fontSize: 18)),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedFashion = selectedFashion == null ? 'Fashion' : null;
                  });
                },
                child: Column(
                  children: [
                    Image.asset('assets/images/fashion.jpg', width: 100, height: 100),
                    SizedBox(height: 5),
                    Text(
                      'Fashion',
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(
                      selectedFashion == null ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      size: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          if (selectedFashion != null)
            StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return FashionDropDownOptions(selectedFashion: selectedFashion!);
              },
            ),
        ],
      ),
    );
  }
}