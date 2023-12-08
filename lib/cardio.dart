import 'package:flutter/material.dart';
import 'dart:io';


class protein extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Protein Intake Calculator'),
      ),
      body: ProteinCalculator(),
    );
  }
}

class ProteinCalculator extends StatefulWidget {
  @override
  _ProteinCalculatorState createState() => _ProteinCalculatorState();
}

class _ProteinCalculatorState extends State<ProteinCalculator> {
  TextEditingController weightController = TextEditingController();
  TextEditingController activityController = TextEditingController();

  double proteinPerKg = 2.0; // Recommended protein intake per kg of body weight
  double proteinIntake = 0.0;
  double averageprotein=0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('2-3	Sedentary lifestyle \n'
               '4-5	Slightly active \n'
              '6-7	Moderately active \n'
              '8-9	Active lifestyle \n'
              '10	  Very active lifestyle \n',
            style: TextStyle(color: Colors.white),

          ),
          TextField(
            controller: weightController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Enter your weight (kg)',),

          ),
          SizedBox(height: 10),
          TextField(
            controller: activityController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Enter your activity level'),
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _calculateProteinIntake();
            } ,
            child: Text('Calculate Protein Intake'),

          ),
          SizedBox(height: 20),
          Text(
            'Recommended Daily Protein Intake: ${proteinIntake.toStringAsFixed(2)} grams \n'
            'Your Average Protein Intake : ${averageprotein.toStringAsFixed(2)} grams ',

            style: TextStyle(fontSize: 20 , color: Colors.white),
          ),
        ],
      ),
    );
  }

  void _calculateProteinIntake() {
    double weight = double.tryParse(weightController.text) ?? 0.0;
    double activityLevel = double.tryParse(activityController.text) ?? 0.0;

    // Adjust protein intake based on activity level
    proteinIntake = weight * proteinPerKg * activityLevel;
    averageprotein = weight * .8;

    setState(() {});
  }
}


