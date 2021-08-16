import 'package:flutter/material.dart';
import 'navigationBar.dart';
import 'page36.dart';

class Page18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        children: [
          //-----------------main display-----------------------------
          SizedBox(height: 50,),
          ChipDropdown('Skills'),   // reused dropdown from class36
          Chipmaker(),              // reused chipmaker from class36
          Text('Suggested Skills'),
          Chipmaker(),              // reused chipmaker from class36
          SizedBox(height: 320,),
          //------------------------Buttons-------------------------
          TextButton(
            onPressed:() {
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
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (contax) => Nav(0)));
              },
            ),
          )
        ],
      ),
    );
  }
}
