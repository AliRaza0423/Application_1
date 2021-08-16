import 'package:flutter/material.dart';
import 'package:task_1/navigationBar.dart';

class Page6 extends StatefulWidget {
  final TabController controller;

  Page6({Key key, this.controller});
  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  String text1 = 'School';
  String text2 = 'Degree';
  String text3 = 'Field of Study';
  String text4 = 'Start Date';
  String text5 = 'End Date';
  String text6 = 'Grade';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //---------------------main form display-----------------------
      child: Container(
        padding: EdgeInsets.all(20),
        child: Center(
            child: Column(
          children: [
            Form(text1),
            Form(text2),
            Form(text3),
            //------------------forms in row-----------------------
            Row(
              children: [
                Flexible(child: Form(text4)),
                SizedBox(
                  width: 20,
                ),
                Flexible(child: Form(text5)),
              ],
            ),
            Form(text6),
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
            //------------------------button--------------------------
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
                  onPressed: () => widget.controller.animateTo(widget.controller.index + 1),
                ),
              ),
            )
          ],
        )),
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
          //----------styling-------------------
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
