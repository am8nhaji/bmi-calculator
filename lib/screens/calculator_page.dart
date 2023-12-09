import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../themes/my_themes.dart';
import './body/metric_bmi.dart';
import './body/us_bmi.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  bool darkMode = false;

  void changeMode(bool value) {
    setState(() {
      darkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkMode ? myDarkTheme() : myLightTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'BMI Calculator',
          ),
          actions: <Widget>[
            Switch(
              value: darkMode,
              onChanged: changeMode,
            ),
          ],
        ),
        body: SingleChildScrollView(child: const MyAppBody()),
      ),
    );
  }
}

class MyAppBody extends StatefulWidget {
  const MyAppBody({super.key});

  @override
  State<MyAppBody> createState() => _MyAppBodyState();
}

class _MyAppBodyState extends State<MyAppBody> {
  int unit = 1;
  void setUnit(int? value) {
    setState(() {
      unit = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Unint: '),
            SizedBox(
              width: 145,
              child: RadioListTile(
                title: const Text('Metric'),
                value: 1,
                groupValue: unit,
                onChanged: setUnit,
              ),
            ),
            SizedBox(
              width: 145,
              child: RadioListTile(
                title: const Text('US'),
                value: 2,
                groupValue: unit,
                onChanged: setUnit,
              ),
            ),
          ],
        ),
        unit == 1 ? const MetricBmi() : const UsBmi(),
      ],
    );
  }
}
