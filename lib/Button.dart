import 'package:calculadora/Controller.dart';
import 'package:flutter/material.dart';

class ButtonOperator extends StatefulWidget {
  Controller controller;
  String sinal;
  String texto;
  ButtonOperator({this.controller, this.sinal, this.texto});

  @override
  _ButtonOperatorState createState() => _ButtonOperatorState();
}

class _ButtonOperatorState extends State<ButtonOperator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: InkWell(
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
          ),
          child: Center(
              child: Text(widget.texto,
                  style: TextStyle(color: Colors.white))),
        ),
        onTap: () {
          widget.controller.formValidar(context, widget.sinal);
        },
      ),
    );
  }
}
