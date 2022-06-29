import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFFf1dcdc),
          title: Text(
            "Login",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: GestureDetector(
            onTap: () {/* Write listener code here */},
            child: Icon(
              Icons.arrow_back, // add custom icons also
            ),
          ),
        ),
        backgroundColor: Color(0xffFAF9F9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                child: Image.asset(
                  'assets/logo-mobile.png',
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Theme(
                    data: ThemeData(
                      primarySwatch: Colors.grey,
                      primaryColorDark: Colors.black,
                    ),
                    child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal)),
                          labelText: 'Email',
                          fillColor: Colors.white,
                          filled: true,
                        ))),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Theme(
                    data: ThemeData(
                      primarySwatch: Colors.grey,
                      primaryColorDark: Colors.black,
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                    ))),
              ),
              new SizedBox(
                width: 390,
                height: 45,
                child: ElevatedButton(
                  child: Text(
                    'Se connecter',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Raleway'),
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0XFFf1dcdc)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Having trouble? Reset your password',
                  ),
                ),
              ),
              Center(
                child: Text(
                  '---------- Or login with ----------',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 20, 0),
                    width: 180,
                    height: 50,
                    child: (ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0XFF3b5998)),
                      ),
                      child: Text('Facebook'),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    width: 180,
                    height: 50,
                    child: (ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0XFFf1dcdc)),
                      ),
                      child: Text('Google'),
                    )),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 80, 0, 10),
                  width: 390,
                  height: 45,
                  child: (ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/register',
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffFAF9F9),
                        side: BorderSide(
                          width: 1,
                          color: Colors.black,
                        )),
                    child: Text(
                      "Don't have an account? REGISTER",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Raleway'),
                    ),
                  ))),
            ],
          ),
        ));
  }
}
