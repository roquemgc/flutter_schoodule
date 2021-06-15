import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  
  const AlreadyHaveAnAccountCheck({
    Key key, this.login = true, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Ainda não possui uma conta? " : "Já possui uma conta? ",
          style: TextStyle(
            color: Colors.deepPurple
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Registre-se" : "Entrar",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple
            ),
          ),
        ),
      ],
    );
  }
}
