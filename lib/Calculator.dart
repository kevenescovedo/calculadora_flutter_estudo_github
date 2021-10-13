import 'package:calculadora/Button.dart';
import 'package:calculadora/Controller.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Controller controller = Controller();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: controller.formKey,
              child: Column(
                children: <Widget>[
                  Lottie.network(
                      'https://assets2.lottiefiles.com/private_files/lf30_yrjfqjmo.json'),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      controller: controller.controllerText1,
                      validator: controller.validator,
                      /*controller: _controller */
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "Digite o primeiro número:",
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  ValueListenableBuilder(
                      valueListenable: controller.operatorNofitifer,
                      builder: (context, value, _) {
                        return DropDown(
                          items: ["+", "-", "x", '/'],
                          hint: Text(value),
                          onChanged: (value) {
                            controller.operatorNofitifer.value = value;
                          },
                        );
                      }),

                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                      controller: controller.controllerText2,
                      validator: controller.validator,
                      /*controller: _controller */
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "Digite o segundo número:",
                      )),
                  // Add TextFormFields and ElevatedButton here.
                ],
              ),
            ),
            ButtonOperator(
              texto: '=',
              controller: controller,
            ),
          ],
        ),
      ),
    ));
  }
}
