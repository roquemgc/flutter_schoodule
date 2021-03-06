import 'package:flutter/material.dart';
import 'package:flutter_schoodule/Screens/Login/components/background.dart';
import 'package:flutter_schoodule/Screens/Login/login_screen.dart';
import 'package:flutter_schoodule/Screens/Signup/components/signup_social_button.dart';
import 'package:flutter_schoodule/components/already_have_an_account_check.dart';
import 'package:flutter_schoodule/components/rounded_button.dart';
import 'package:flutter_schoodule/components/rounded_input_field.dart';
import 'package:flutter_schoodule/components/rounded_password_field.dart';

import 'or_divider.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "CADASTRO",
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
            text: "CADASTRO",
            press: () {},
            color: Colors.deepPurple,
            textColor: Colors.white,
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                })
              );
            }
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SignupSocialButton(
                imageUrl: "assets/icons/facebook.png",
              ),
              SignupSocialButton(
                imageUrl: "assets/icons/google.png",
              ),
            ],
          )
        ],
      )
    );
  }
}



