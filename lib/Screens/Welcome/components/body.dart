import 'package:flutter/material.dart';
import 'package:flutter_schoodule/Screens/Login/login_screen.dart';
import 'package:flutter_schoodule/Screens/Signup/signup_screen.dart';
import 'package:flutter_schoodule/Screens/Welcome/components/background.dart';
import 'package:flutter_schoodule/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Bem-vindo",
              style: TextStyle(fontWeight: FontWeight.bold)
            ),
            SizedBox(height: size.height * 0.3),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) { 
                      return LoginScreen(); 
                    }
                  )
                );
              },
              color: Colors.deepPurple,
              textColor: Colors.white,
            ),
            RoundedButton(
              text: "REGISTRAR-SE",
              press: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) { 
                      return SignupScreen(); 
                    }
                  )
                );
              },
              color: Colors.purple,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}