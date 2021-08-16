import 'package:flutter/material.dart';
import 'page13.dart';

// import 'package:task_1/page11.dart';
class Page12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //--------------mian display-------------------
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              MiniCardperformance('This Month'),
              MiniCardperformance('January'),
              MiniCardperformance('December'),
              MiniCardperformance('November'),
            ],
          ),
        ),
      ),
    );
  }
}

//---------------------------Classes----------------------------------

class MiniCardperformance extends StatelessWidget {
  String text;
  MiniCardperformance(this.text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Page13()));
      },
      child: Container(
        //------------------body of caard----------------
        // width: 350,
        width: MediaQuery.of(context).size.width * 1,
        height: 80,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Row(
          children: [
            //--------------------Text---------------------------
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Evaluated byManager Name',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              width: 80,
            ),
            //------------------------trailing metere-----------------------------
            Container(
              height: 30,
              width: 30,
              child: FittedBox(fit: BoxFit.contain, child: Meter()),  // meter reused from page13
            )
          ],
        ),
      ),
    );
  }
}
