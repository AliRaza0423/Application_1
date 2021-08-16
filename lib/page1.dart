import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:task_1/tabBar1.dart';
import 'navigationBar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            SizedBox(height: 80,),
    
//.....................Logo.....................................

            CircleAvatar(
              backgroundColor: Colors.white10,
              radius: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/image/logo2.png"),
              ),
            ),
            SizedBox(height: 90,),

//..........................Text fields......................................

            TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    // borderSide: BorderSide(color: Colors.blue, width: 5),
                  ),
                ),
                onChanged: (value) {
                  data = value;
                }),

            SizedBox(
              height: 10,
            ),
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onChanged: (value) {
                  data = value;
                }),

//....................................Log in Buttons......................................

            SizedBox(height: 40),
            SizedBox(
              height: 60.0,
              child: ElevatedButton(
                child: Text('Log In'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[800],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  // print('pressed');
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Tabbar1()));
                },
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      
                      print('Pressed');
                    },
                  ),
                  SizedBox(width: 100),
                  TextButton(
                    child: Text('Forget Password'),
                    onPressed: () {
                      print('Pressed');
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            // with custom text
            SizedBox(
              height: 60,
              child: FractionallySizedBox(
                widthFactor: 0.9,
                child: SignInButton(
                  Buttons.Google,
                  text: "Log In with Google",
                  onPressed: () {
                    Navigator.of(context).push(
                          MaterialPageRoute(builder: (contex) => Nav(0)));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
