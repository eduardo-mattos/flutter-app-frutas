import 'package:flutter/material.dart';

class LoginFormFieldWidget extends StatelessWidget {
  var setField;
  String hint;

  LoginFormFieldWidget(this.setField, this.hint);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hint
      ),
      onChanged: (text){
        setField(text);
      },
    );
  }
}
