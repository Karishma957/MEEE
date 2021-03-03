import './Home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String name = '';
  String password = '';
  String error = '';
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              List: [
                Colors.blueAccent,
                Colors.white,
              ],
            ),
          ),
          height: height,
          width: width,
          child: Stack(
            children: [
              Column(
                children: [
                  Spacer(),
                  Container(
                    height: width * 1.78,
                    width: width,
                    child: FlareActor(
                      'assets/animations/animals.flr',
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      animation: 'login page',
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: height * 0.45,
                  ),
                  Container(
                    height: height * 0.1,
                    width: width * 0.7,
                    child: TextFormField(
                      validator: (val) => val.isEmpty ? 'Enter an email' : null,
                      onChanged: (val) {
                        setState(() {
                          name = val;
                        });
                      },
                      autocorrect: true,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                        hintText: 'Enter username',
                        hintStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                            fontWeight: FontWeight.w500),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        filled: true,
                        fillColor: Colors.black38,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: height * 0.1,
                    width: width * 0.7,
                    child: TextFormField(
                      validator: (val) => val.length <= 2
                          ? 'Enter password 2+ characters long'
                          : null,
                      obscureText: hidePassword,
                      onChanged: (val) {
                        setState(() {
                          password = val;
                        });
                      },
                      autocorrect: true,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        prefixIcon: GestureDetector(
                          child: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                        ),
                        suffixIcon: GestureDetector(
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                          ),
                          onTap: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                        ),
                        border: InputBorder.none,
                        hintText: 'Enter password',
                        hintStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                            //lightGreenAccent.withOpacity(0.8),
                            fontWeight: FontWeight.w500),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        filled: true,
                        fillColor: Colors.black38,
                      ),
                    ),
                  ),
                  Container(
                      height: 30,
                      child: Center(
                          child: Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 17),
                      ))),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    color: Color.fromRGBO(224, 118, 108, 1),
                    onPressed: () {
                      if (name == 'Gayatri Himani Vinayak Godbole' &&
                          password == 'Gayatri@19') {
                        setState(() {
                          error = '';
                        });
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    HomeScreen()));
                      } else {
                        setState(() {
                          error = 'Invalid credentials!';
                        });
                      }
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
