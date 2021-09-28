import 'package:calculadora/Controller.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Controller controller = Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Form(
            key: controller.formKey,
            child: Column(
              children: <Widget>[
                Lottie.network(
                    'https://assets2.lottiefiles.com/private_files/lf30_yrjfqjmo.json'),
                SizedBox(height: 20,),
                TextFormField(
                  controller: controller.controllerText1,
                    validator: controller.validator,
                    /*controller: _controller */
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        hintText: "Digite o primeiro número:",
                    )
                ),
                SizedBox(height: 30,),
                TextFormField(
                    controller: controller.controllerText2,
                    validator: controller.validator,
                  /*controller: _controller */
                    keyboardType: TextInputType.number,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),),
                      hintText: "Digite o segundo número:",
                    )
                ),
                // Add TextFormFields and ElevatedButton here.
              ],
            ),
          ),
         Padding(padding: EdgeInsets.only(top: 30),
           child:  InkWell(
             child: Container(
                width: MediaQuery.of(context).size.width * 1,
               height: 60,
               decoration: BoxDecoration(
                 color: Colors.deepPurpleAccent,

                 
               ),
               child: Center(child:Text("Calcular", style: TextStyle(color: Colors.white))),

             ),
             onTap:(){ controller.formValidar(context);},
           ),
         )

        ],),
      ),
    ));
  }
}
