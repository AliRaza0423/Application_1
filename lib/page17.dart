import 'package:flutter/material.dart';

class Page17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        children: [
          //--------------------Edit button on top-----------------------------
          Row(
            children: [
              SizedBox(
                width: 285,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    child: Row(
                  children: [
                    Text('Edit', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 2),
                    Icon(Icons.edit),
                  ],
                )),
              ),
            ],
          ),
          //----------------------Card-----------------------
          ListTile(
            leading: CircleAvatar(
              radius: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/image/bil.jpg'),
              ),
            ),
            title: Text('Imployee ID # 12221'),
            subtitle: Text(
              'Front-end & UI',
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
