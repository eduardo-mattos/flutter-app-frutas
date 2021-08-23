import 'package:desafio_framework/pages/login/widgets/LoginFormWidget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.pinimg.com/originals/89/fd/9a/89fd9ab1b14084651a9ee08a9a9d9b77.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.all(Radius.circular(20.0))
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
                child: LoginFormWidget(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}