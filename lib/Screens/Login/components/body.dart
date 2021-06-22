import 'package:flutter/material.dart';
import 'package:flutter_schoodule/Screens/Login/components/background.dart';
import 'package:flutter_schoodule/Screens/Signup/signup_screen.dart';
import 'package:flutter_schoodule/components/already_have_an_account_check.dart';
import 'package:flutter_schoodule/components/rounded_button.dart';
import 'package:flutter_schoodule/components/rounded_input_field.dart';
import 'package:flutter_schoodule/components/rounded_password_field.dart';
import 'package:flutter_schoodule/services/authentication_service.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  
  Body({
    Key key,
  }) : super(key: key);
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )
          ),
          SizedBox(height: size.height * 0.3),
          RoundedInputField(
            hintText: "Digte seu e-mail",
            onChanged: (value) {},
          ),
          PasswordFieldContainer(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {
              context.read<AuthenticationService>().signIn(
                email: emailController.text.trim(),
                password: passwordController.text.trim()
              );
            },
            color: Colors.deepPurple,
            textColor: Colors.white,
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            login: true,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignupScreen();
                })
              );
            }
          )
        ],
      )
    );
  }
}

