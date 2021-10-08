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

  double soma(double n1, double n2) {
    return n1 + n2;
  }

  double dividi(double n1, double n2) {
    return n1 / n2;
  }

  double multiplica(double n1, double n2) {
    return n1 * n2;
  }

  double subtrai(n1, n2, [int n3]) {
    return n1 - n2;
  }

  bool isNumericUsingRegularExpression(String string) {
    final numericRegex = RegExp(r'^-?(([0-9]*)|(([0-9]*)\.([0-9]*)))$');

    return numericRegex.hasMatch(string);
  }

  void formValidar(BuildContext context, String sinal) {
    print("aaaaaaaaaaaa");
    if (formKey.currentState.validate()) {
      String number = '0';
      if (sinal == "*") {
        number = multiplica(double.parse(controllerText1.text),
                double.parse(controllerText2.text))
            .toString();
      } else if (sinal == "/") {
        number = dividi(double.parse(controllerText1.text),
                double.parse(controllerText2.text))
            .toString();
      } else if (sinal == "-") {
        number = subtrai(double.parse(controllerText1.text),
                double.parse(controllerText2.text))
            .toString();
        ;
      } else if (sinal == "+") {
        number = soma(double.parse(controllerText1.text),
                double.parse(controllerText2.text))
            .toString();
      }
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("O resultado é $number"),
          );
        },
      );
    }
  }
}
