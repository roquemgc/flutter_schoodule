import 'package:flutter/material.dart';
import 'package:flutter_schoodule/components/text_field_container.dart';

class PasswordFieldContainer extends StatelessWidget {
  final ValueChanged<String> onChanged;
  
  const PasswordFieldContainer({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Digite sua senha",
          icon: Icon(
            Icons.lock,
            color: Colors.deepPurple
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.deepPurple
          ),
          border: InputBorder.none
        ),
      ),
    );
  }
}
