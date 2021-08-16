import 'package:flutter/material.dart';
import 'package:task_1/appbar.dart';
import 'page4.dart';

class Page26 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Create Request'),
      body: Container(
        //----------------------------mian display------------------
        padding: EdgeInsets.all(30),
        //---------------------dropdown & textfields-----------------
        child: Column(
          children: [
            myDropdown('Assets'), // reused drop down from page4
            myDropdown('Set Assets'), // reused drop down from page4
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Comment',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  )),
              maxLines: 5,
            ),
            SizedBox(
              height: 20,
            ),
            //------------button---------------------
            SizedBox(
              height: 60,
              child: FractionallySizedBox(
                widthFactor: 0.9,
                child: ElevatedButton(
                  child: Text('Create Request'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[800],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        title: Row(
                          children: [
                            SizedBox(
                              width: 210,
                            ),
                            IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                        content: SingleChildScrollView(
                          child: Container(
                            // height: 320,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  size: 60,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Text('You have Applied for your leave'),
                                Text('Waiting for approval'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
