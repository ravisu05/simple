import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double bmi = 0;
  double hValue = 0;
  double wValue = 0;
  void calculate() {
    hValue = double.parse(height.text);
    wValue = double.parse(weight.text);

    bmi = wValue / (hValue * hValue);
  }
  TextEditingController bmi = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //height
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(filled: true),
              controller: height,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //weight
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(filled: true),
              controller: weight,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //button to be clicked
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(20),
              textStyle: TextStyle(fontSize: 20),
            ),
            onPressed: setState(() {
              return bmi;
            });
            child: Text(
              'calculate',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(20),

          )
        ],
      ),
    );
  }
}
