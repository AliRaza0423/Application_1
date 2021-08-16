import 'package:flutter/material.dart';
import 'page4.dart';

class Page40 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Personal Information'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: Image(
                            image: AssetImage('assets/image/bil.jpg')),
                      ),
                    ),
                    SizedBox(
                        height: 10,
                    ),
                    Text('Name Here'),
                    Text(
                      'Front end & UI',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    SizedBox(height: 15,),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    //-----------reused myformtextfield form page4--------------
                    myformTextfield('Usman ALi'),
                    myformTextfield('Toufeeq Butt'),
                    myformTextfield('H 75B, St 5 Miliatary account Society'),
                    myformTextfield('muhammadusman@gmail.com'),
                    myformTextfield('0301-2346567890'),
                    myformTextfield('Male'),
                    myformTextfield('Single'),
                    myformTextfield('35201-12164646-7'),
                    myformTextfield('03/07/1996'),
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
