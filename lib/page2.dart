import 'package:flutter/material.dart';
import 'appbar.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Team History'),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DD(),
                ],
              ),
              MiniCard('late'),
              MiniCard('On time'),
              MiniCard('late'),
              MiniCard('On time')
            ],
          ),
        ),
      ),
    );
  }
}

//............................ Drop down.........................

class DD extends StatefulWidget {
  @override
  State<DD> createState() => _DDState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _DDState extends State<DD> {
  String dropdownValue = 'Today';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 40,
      elevation: 0,
      dropdownColor: Colors.white,
      style: const TextStyle(color: Colors.black),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Today', 'Yesterday', 'week', 'month']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

//..............................Mini Card Class...................................

class MiniCard extends StatelessWidget {
  MiniCard(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 350,
      height: 150,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        
        //----------------------Card-------------------
        
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/bil.jpg')),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 150,
                  height: 55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Member Name'),
                      SizedBox(
                        height: 15,
                      ),
                      Text('02-05-2021',style: TextStyle(
                        color: Color(0xffBF2634),),
                      ),
                    ],
                  ),
                ),
                Late_tag(text),
              ],
            ),
          ),

          //-----------------------Text after Card-------------------------

          Text(
              ' Checkin: 09:25am \tCheckout: 06:00pm\n Total Working Hours: 8hr 20min'),
        ],
      ),
    );
  }
}

//..........................Time Tag (late or on time).........................

class Late_tag extends StatelessWidget {
  const Late_tag(this.text,);
  
  final String text1 = 'On time';
  final String text2 = 'Late';
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: text == 'On time' ? Color(0xffD6FBE0) : Colors.red[100],
        ),
        child: Text(
          text == text1 ? text1 : text2,
          textAlign: TextAlign.center,
        ));
  }
}