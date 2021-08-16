import 'package:flutter/material.dart';
import 'package:task_1/appbar.dart';
import 'page4.dart';

List<String> choosed = ['one'];

class Page36 extends StatefulWidget {
  @override
  _Page36State createState() => _Page36State();
}

class _Page36State extends State<Page36> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Experience'),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            width: MediaQuery.of(context).size.width * 0.30,
            height: 225,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/image/bil.jpg'),
                  // minRadius: 5,
                  maxRadius: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Name Here',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Front-End & UI',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          myformTextfield('Experience                                             YRS'),
          myformTextfield('Edcation'),
          ChipDropdown('Skill'),
          Chipmaker(),
          ChipDropdown('Interest'),
          TextField(
              maxLines: 5,
              decoration: InputDecoration(
                  hintText: 'About',
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
          SizedBox(
            height: 60,
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
              onPressed: () {
                Navigator.of(context).pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}

//------------------------Classes------------------------------------------

class Chipmaker extends StatefulWidget {
  @override
  _ChipmakerState createState() => _ChipmakerState();
}

class _ChipmakerState extends State<Chipmaker> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: List<Widget>.generate(choosed.length, (int index) {
        return Chip(
          label: Text(choosed[index]),
          onDeleted: () {
            setState(() {
              choosed.removeAt(index);
            });
          },
        );
      }),
    );
  }
}

class ChipDropdown extends StatefulWidget {
  ChipDropdown(this.hint);
  String hint;
  @override
  State<ChipDropdown> createState() => _ChipDropdownState();
}

class _ChipDropdownState extends State<ChipDropdown> {
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
                choosed.add(newValue);
                // dropdownValue = newValue;
              });
            },
            items: <String>['ali', 'ahmad', 'raza', 'gill']
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
