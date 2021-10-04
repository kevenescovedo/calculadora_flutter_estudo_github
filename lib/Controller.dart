import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Controller {
  TextEditingController controllerText1 = TextEditingController();
  TextEditingController controllerText2 = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String validator(String number) {
    if (number == null || number == '') {
      return 'Campo está vazio, por favor digite um valor';
    } else if (!isNumericUsingRegularExpression(number)) {
      return 'Campo inválido';
    } else {
      return null;
    }
  }

  soma(double n1, double n2) {
    return n1 + n2;
  }

  dividi(double n1, double n2) {
    return n1 / n2;
  }

  multiplica(double n1, double n2) {
    return n1 * n2;
  }
 
  subtrai(n1, n2, [int n3]) {
    return n1 - n2;
  }
  bool isNumericUsingRegularExpression(String string) {
    final numericRegex = RegExp(r'^-?(([0-9]*)|(([0-9]*)\.([0-9]*)))$');

    return numericRegex.hasMatch(string);
  }

  void formValidar(BuildContext context) {
    print("aaaaaaaaaaaa");
    if (formKey.currentState.validate()) {
      showDialog(

        context:  context,
        builder:  (BuildContext context) {
          return AlertDialog(title: Text("O resultado é ${subtrai(double.parse(controllerText1.text), double.parse(controllerText2.text))}"),
    
          );

        },
      );
    }
  }
}
