
import 'package:flutter/material.dart';

class FashiondropDown extends StatefulWidget {

 FashiondropDown({super.key});

  @override
  State<FashiondropDown> createState() => _FashiondropDownState();

}

class _FashiondropDownState extends State<FashiondropDown> {
  String ? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset('assets/images/fashion.jpg',width:40,height: 40),
            SizedBox(width : 10),
            Text('Fashion',style:TextStyle(fontSize: 10),
            ),
          ],
        ),
    SizedBox(height: 8,),
   DropdownButtonFormField<String>(
     hint: Text('Select an option'),
   value: _selectedValue,
     items:<String>['Mens bottom wear','Women bottom wear','kids'].map((String value){
       return DropdownMenuItem<String>(
         value: value,
         child: Text(value),
       );
     }).toList(),
     onChanged: (value){
       setState(() {
         _selectedValue = value;
       });
     },
     decoration: InputDecoration(
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(10.0),
       ),
       labelText: 'fashion Category',
     ),
    )
      ],

    );
  }
}
