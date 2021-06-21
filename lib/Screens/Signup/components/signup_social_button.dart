import 'package:flutter/material.dart';

class SignupSocialButton extends StatelessWidget {

  final String imageUrl;

  const SignupSocialButton({
    Key key, this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.purpleAccent
        ),
        shape: BoxShape.circle, 
      ),
      child: new Image.asset(
        imageUrl,
        height: 25,
        width: 25,
        fit: BoxFit.cover,
      )
    );
  }
}
