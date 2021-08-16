import 'package:flutter/material.dart';
import 'package:task_1/page42.dart';
import 'page13.dart';
class Page41 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Performance'),
      ),
      body: Column(
        children: [
          MiniCardperformance1('This Month'),
          MiniCardperformance1('January'),
          MiniCardperformance1('December'),
          MiniCardperformance1('November')
        ],
      ),
    );
  }
}

//----------------------Classes----------------------------

class MiniCardperformance1 extends StatelessWidget {
  String text;
  MiniCardperformance1(this.text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Page42()));
      },
      child: Container(
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
        child: Column(
          children: <Widget>[
            Row(
              children: [
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
                Container(
                  height: 30,
                  width: 30,
                  child: FittedBox(fit: BoxFit.contain, child: Meter()),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
