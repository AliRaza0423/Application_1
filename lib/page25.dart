import 'package:flutter/material.dart';
import 'appbar.dart';

class Page25 extends StatefulWidget {
  // String dropdownValue;

  @override
  _Page25State createState() => _Page25State();
}

class _Page25State extends State<Page25> {
  String dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Create Request'),
      body: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownvalue,

                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                dropdownColor: Colors.white,

                hint: Text('Request Type'),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownvalue = newValue;
                  });
                },
                items: <String>['Assets', 'Proposal', 'Hiring', 'Hiring']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            )),
      ),
    );
  }
}
