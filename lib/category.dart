import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String icon;
  final String label;
  const CategoryItem({required this.icon,required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon,width:40,height: 40,),
        SizedBox(width : 10),
        Text(label,style:TextStyle(fontSize: 10))
      ]
    );
  }
}
