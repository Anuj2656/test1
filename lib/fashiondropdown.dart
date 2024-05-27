import 'package:flutter/material.dart';

class FashionDropDownOptions extends StatefulWidget {
  final String selectedFashion;

  const FashionDropDownOptions({Key? key, required this.selectedFashion}) : super(key: key);

  @override
  _FashionDropDownOptionsState createState() => _FashionDropDownOptionsState();
}

class _FashionDropDownOptionsState extends State<FashionDropDownOptions> {
  String? selectedOption;
  List<String> menOptions = ['Men1', 'Men2', 'Men3'];
  List<String> womenOptions = ['Women1', 'Women2', 'Women3'];
  List<String> kidOptions = ['Kid1', 'Kid2', 'Kid3'];
  bool showMenOptions = false;
  bool showWomenOptions = false;
  bool showKidOptions = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              showMenOptions = false;
              showWomenOptions = false;
              showKidOptions = false;
            });
          },
          child: Row(
            children: [
              Text(
                'Select Category',
                style: TextStyle(fontSize: 18),
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 30,
                color: Colors.black,
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: () {
            setState(() {
              showMenOptions = !showMenOptions;
              showWomenOptions = false;
              showKidOptions = false;
            });
          },
          child: ListTile(
            title: Text('Men'),
            trailing: Icon(showMenOptions ? Icons.arrow_drop_up : Icons.arrow_drop_down),
          ),
        ),
        if (showMenOptions)
          ListView.builder(
            shrinkWrap: true,
            itemCount: menOptions.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(menOptions[index]),
              );
            },
          ),
        InkWell(
          onTap: () {
            setState(() {
              showWomenOptions = !showWomenOptions;
              showMenOptions = false;
              showKidOptions = false;
            });
          },
          child: ListTile(
            title: Text('Women'),
            trailing: Icon(showWomenOptions ? Icons.arrow_drop_up : Icons.arrow_drop_down),
          ),
        ),
        if (showWomenOptions)
          ListView.builder(
            shrinkWrap: true,
            itemCount: womenOptions.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(womenOptions[index]),
              );
            },
          ),
        InkWell(
          onTap: () {
            setState(() {
              showKidOptions = !showKidOptions;
              showMenOptions = false;
              showWomenOptions = false;
            });
          },
          child: ListTile(
            title: Text('Kid'),
            trailing: Icon(showKidOptions ? Icons.arrow_drop_up : Icons.arrow_drop_down),
          ),
        ),
        if (showKidOptions)
          ListView.builder(
            shrinkWrap: true,
            itemCount: kidOptions.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(kidOptions[index]),
              );
            },
          ),
      ],
    );
  }
}
