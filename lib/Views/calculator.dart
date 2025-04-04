import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

TextEditingController input = TextEditingController();

class _CalculatorState extends State<Calculator> {
  List number = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  List symbol = ['+', '-', '*', '/'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
        ),
        body: Column(children: [
          TextField(
            controller: input,
            decoration: InputDecoration(
              label: Text('Inputs'),
              // labelText: 'Enter number',
              // border: InputBorder.
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 140,
                height: 400,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1,
                    mainAxisExtent: 100,
                  ),
                  children: [
                    ...number
                        .map((element) => GridClass(title: element.toString()))
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 140,
                height: 400,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1,
                    mainAxisExtent: 100,
                  ),
                  children: [
                    ...symbol
                        .map((element) => GridClass(title: element.toString()))
                  ],
                ),
              ),
            ],
          ),
        ]));
  }
}

class GridClass extends StatelessWidget {
  String title;
  GridClass({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.indigoAccent),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))))),
      child: Text(title),
    );
  }
}

class SignButton extends GridClass {
  SignButton({super.key, required super.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.indigoAccent),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))))),
      child: Text(title),
    );
  }
}
