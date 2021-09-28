import 'package:flutter/cupertino.dart';


class Controller {
  TextEditingController controllerText1 = TextEditingController();
  TextEditingController controllerText2 = TextEditingController();
  GlobalKey<FormState> formKey =   GlobalKey<FormState>();

  String validator(String number) {
    if(number == null || number == '') {
      return 'Digite um número válido';
    }
   else {
     return null;
    }

  }
  void formValidar() {
    print("aaaaaaaaaaaa");
    if(formKey.currentState.validate()) {

    }
  }

}