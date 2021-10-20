import 'package:flutter/material.dart';

class MyDropDownScreen extends StatefulWidget {
  @override
  _MyDropDownScreenState createState() => _MyDropDownScreenState();
}

class _MyDropDownScreenState extends State<MyDropDownScreen> {

  int selectedValue = 1;
  List<Widget> listNickNames = [Text('CR7'), Text('Leo'), Text('Jola')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Dropdown Example')),
      body: Center(
        child: Container(
          child: DropdownButton(
            elevation: 10,
            dropdownColor: Colors.orangeAccent,
            style: TextStyle(color: Colors.black, fontSize: 18),
            hint: Text('Select Your Favourite Football Player'),
            icon: Icon(Icons.arrow_drop_down_circle),
            iconDisabledColor: Colors.grey,
            iconEnabledColor: Colors.black,
            value: selectedValue,
            selectedItemBuilder: (BuildContext context)
            {
              return listNickNames;
            },
            items: [
              DropdownMenuItem(
                child: Text("Cristiano Ronaldo"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Lionel Messi"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Neymar Jr."),
                value: 3,
              )
            ],

            onChanged: (int value) {
              setState(() {
                selectedValue = value;
              });
            },
          ),
        ),
      )
    );
  }
}
