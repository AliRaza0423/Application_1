import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:task_1/appbar.dart';
import 'package:task_1/page15.dart';

class Page14 extends StatelessWidget {
  final orange = Colors.orange[400];
  final green = Colors.green[400];
  final red = Colors.red[400];
  final white = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Performance'),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Center(
              child: Text(
                'Learning',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            //----------------progress bars-----------------------------
            Progressbar1('On Job Learing', orange, orange),
            Progressbar1('Functional', green, green),
            Progressbar1('Softskills', red, red),
            SizedBox(height: 90),
            //---------------------button------------------------
            SizedBox(
              height: 60,
              child: ElevatedButton(
                child: Text('Next'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[800],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                ),
                onPressed: () {
                  print('pressed');
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page15()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//---------------------------Classes----------------------------------------------
// custom plugin bar
class Progressbar1 extends StatelessWidget {
  String text;
  var textColor;
  var colors;

  Progressbar1(this.text, this.colors, this.textColor);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(12.0),
        height: 120,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            //------------------colored vertical line------------
            Container(
              decoration: BoxDecoration(
                color: colors,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 80,
              width: 10,
            ),
            //-------------------Text & Ratingbar-------------------------
            SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
                SizedBox(height: 10),
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 6.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
