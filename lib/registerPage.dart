import 'package:flutter/material.dart';

class registerPage extends StatefulWidget {
  const registerPage({Key? key}) : super(key: key);

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFFf1dcdc),
          title: Text('Register'),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 60, 8, 8),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.45,
                child: Image.asset(
                  'assets/logo-mobile.png',
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 395,
                child: (TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  labelText: 'first name',
                  fillColor: Colors.white,
                  filled: true,
                ))),
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 395,
                child: (TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  labelText: 'Last name',
                  fillColor: Colors.white,
                  filled: true,
                ))),
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 395,
                child: (TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  labelText: 'Email',
                  fillColor: Colors.white,
                  filled: true,
                ))),
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 14),
              child: Container(
                width: 395,
                child: (TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  labelText: 'Password must contains 6 letters',
                  fillColor: Colors.white,
                  filled: true,
                ))),
              ),
            ),
          ]),
          SizedBox(
              width: 390,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/home',
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.black),
                child: Text('Register'),
              )),
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {},
              child: Text('Have an account? Login',
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
          ),
        ])));
  }
}
