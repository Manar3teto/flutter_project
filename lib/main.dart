import 'package:flutter/material.dart';

void main() {
  runApp(new Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
      appBar: new AppBar(
        title: new Text('Simple App'),
        leading: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
            )),
        actions: <Widget>[
          IconButton(
            onPressed: null,
            icon: new Icon(Icons.notifications, color: Colors.white),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Welcome! Let's Login",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              new TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(height: 10),
              new TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 150),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              )
            ]),
      ),
    ));
  }
}
