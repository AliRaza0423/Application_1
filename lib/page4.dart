import 'dart:ui';

import 'package:flutter/material.dart';
import 'navigationBar.dart';

class Page4 extends StatelessWidget {
  final TabController controller;
  String text1 = 'Name';
  String text2 = 'Father Name';
  String text3 = 'Email';
  String text4 = 'Phone';
  String text5 = 'Date of Birth';
  String drop1 = 'Gender';
  String drop2 = 'Marital Status';

  Page4({Key key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //----------Center Image --------------
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: Image(
                                image: AssetImage('assets/image/bil.jpg')),
                          ),
                        ),
                        //-------------Icon on Image----------------
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red[800],
                              ),
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //----------------Name below image-----------------
                    Text('Name Here'),
                    Text(
                      'Front end & UI',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),

//----------------------------Form-------------------------------------------------------------------

            Container(
              padding: EdgeInsets.all(10),
              child: FractionallySizedBox(
                widthFactor: 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myformTextfield(text1),
                    myformTextfield(text2),
                    myformTextfield(text3),
                    myformTextfield(text4),
                    myDropdown(drop1),
                    myDropdown(drop2),
                    myformTextfield(text5),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (contax) => Nav(0)));
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      child: FractionallySizedBox(
                        widthFactor: 0.9,
                        child: ElevatedButton(
                          child: Text(
                            'Next',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red[800],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          onPressed: () =>
                              controller.animateTo(controller.index + 1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//classes-----------------------------------------------------------------------------------------------

class myformTextfield extends StatelessWidget {
  var next;
  String text;
  myformTextfield(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: TextField(
            decoration: InputDecoration(
                hintText: text,
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    )))),
      ),
    );
  }
}

class myDropdown extends StatefulWidget {
  myDropdown(this.hint);
  String hint;
  @override
  State<myDropdown> createState() => _myDropdownState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _myDropdownState extends State<myDropdown> {
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.keyboard_arrow_down),
            elevation: 0,
            isExpanded: true,
            dropdownColor: Colors.white,
            hint: Text(
              widget.hint,
              style: TextStyle(color: Colors.grey),
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['1', '2']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
