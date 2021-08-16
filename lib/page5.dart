import 'package:flutter/material.dart';

import 'navigationBar.dart';

class Page5 extends StatefulWidget {
  final TabController controller;

  Page5({Key key, this.controller});
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  String text1 = 'Title';
  String text2 = 'Company Name';
  String text3 = 'Location';
  String text4 = 'Start Date';
  String text5 = 'End Date';
  String drop = 'Employ Type';

  bool _iscchecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //---------------msin form display--------------
        child: Container(
          padding: EdgeInsets.all(20),
          child: Center(
              child: Column(
            children: [
              Form(text1),
              Dropdown(drop),
              Form(text2),
              Form(text3),
              //------------textfiellds in Row--------------
              Row(
                children: [
                  Flexible(child: Form(text4)),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(child: Form(text5)),
                ],
              ),
              //-----------------check box------------------
              Row(
                children: [
                  Checkbox(
                      value: _iscchecked,
                      activeColor: Colors.green,
                      onChanged: (bool value) {
                        setState(() {
                          _iscchecked = value;
                        });
                      }),
                  Text('I currently worked in this role')
                ],
              ),
              // ---------------Description box-------------------
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    hintText: 'Discription',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.transparent,
                    ))),
              ),
              // ------------------Buttons---------------------
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (contax) => Nav(0)));
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
                    onPressed: () => widget.controller
                        .animateTo(widget.controller.index + 1),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}

//classes-----------------------------------------------------------------------------------------------

class Form extends StatelessWidget {
  var next;
  String text;
  Form(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: TextField(
            decoration: InputDecoration(
                hintText: text,
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

class Dropdown extends StatefulWidget {
  Dropdown(this.hint);
  String hint;
  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
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
            hint: Text(widget.hint),
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
