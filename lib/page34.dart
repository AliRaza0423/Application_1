import 'package:flutter/material.dart';
import 'package:task_1/page33.dart';
import 'page4.dart';

class Page34 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Edit'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                //------------- center image + icon using stack----------------------
                Container(
                  height: 250,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 100,
                        left: 100,
                        right: 100,
                        child: CircleAvatar(
                          radius: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: Image(
                                image: AssetImage('assets/image/bil.jpg')),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 160,
                          right: 100,
                          left: 170,
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
                ),
                //------------------------reused myformtextfield from page4-------------------------------
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      myformTextfield('Your Name'),
                      myformTextfield('Father Name'),
                      myDropdown('City'),
                      myformTextfield('Address'),
                      myformTextfield('Email'),
                      myformTextfield('Phone'),
                      myDropdown('Gender'),
                      myDropdown('Marital Status'),
                      myformTextfield('CNIC'),
                      myformTextfield('DateofBirth'),
                      SizedBox(
                        height: 10,
                      ),
                      // ---------------buttons--------------------------
                      SizedBox(
                        height: 60,
                        child: FractionallySizedBox(
                          widthFactor: 0.9,
                          child: ElevatedButton(
                            child: Text('Save'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red[800],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              print('pressed');
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page33()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
