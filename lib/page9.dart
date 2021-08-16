import 'package:flutter/material.dart';
import 'package:task_1/appbar.dart';
import 'package:task_1/page10.dart';
import 'page5.dart';

class Page9 extends StatelessWidget {
  String text1 = 'Anual Leaves';
  String text2 = 'Casual Leaves';
  String text3 = 'Sick Leaves';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Leave Management'),
      body: SingleChildScrollView(
        // ---------------Main body Display------------------------------
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //-------------Text button----------------------------------
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Page10()));
                  },
                  child: Text(
                    'Leaves History',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              //-----------------------Cards---------------------------
              MiniCardleave(text1),
              MiniCardleave(text2),
              MiniCardleave(text3),
            ],
          ),
        ),
      ),
    );
  }
}

//...............................Classes..............................................

class MiniCardleave extends StatelessWidget {
  String text;
  MiniCardleave(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 130,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Row(
        children: [
          //-----------leading image----------------------
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[100],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/image/ic.jpg"),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          //--------------text & button after imate---------------------
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text),
              SizedBox(
                height: 5,
              ),
              Text(
                '20 anual leaves pending',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  //-------------1st Dialog for apply button----------------
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.grey[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      title: Text('Apply Leave'),
                      content: SingleChildScrollView(
                        child: Container(
                          height: 320,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Dropdown('Date'),
                              Dropdown('Leave Type'),
                              TextField(
                                  maxLines: 2,
                                  decoration: InputDecoration(
                                      hintText: 'Comment',
                                      hintStyle:
                                          TextStyle(color: Colors.grey),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                          )))),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    //--------------2nd dialog for apply button----------------------- 
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
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
                                                Text(
                                                    'You have Applied for your leave'),
                                                Text(
                                                    'Waiting for approval'),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.red[800],
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  child: Text(
                                    'Apply Now',
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      // actions: [
                      //   TextButton(
                      //     onPressed: () {
                      //       Navigator.of(context).pop();
                      //     },
                      //     child: Text('Okay'),
                      //   )
                      // ],
                    ),
                  );
                },
                child: Text(
                  'Apply Now',
                  style: TextStyle(color: Colors.red[800], fontSize: 13),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//.................leave card used in home page....................................

class MiniCardleave1 extends StatelessWidget {
  String text;
  String text1;
  MiniCardleave1(this.text, this.text1);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[100],
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset("assets/image/ic.jpg"),
          ),
        ),
        title: Text(text),
        subtitle: Text(
          text1,
          style: TextStyle(color: Colors.grey, fontSize: 10),
        ),
      ),
    );
  }
}
