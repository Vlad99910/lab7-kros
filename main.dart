import 'package:flutter/material.dart';

void main() {
  runApp(ColorPickerApp());
}

class ColorPickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RGB Color Picker',
      home: ColorPickerScreen(),
    );
  }
}

class ColorPickerScreen extends StatefulWidget {
  @override
  _ColorPickerScreenState createState() => _ColorPickerScreenState();
}

class _ColorPickerScreenState extends State<ColorPickerScreen> {
  double red = 0;
  double green = 0;
  double blue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RGB Color Picker'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Display the selected color
            Container(
              width: 200,
              height: 200,
              color: Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1),
            ),
            SizedBox(height: 20),

            Text('Red: ${red.toInt()}'),
            Slider(
              value: red,
              min: 0,
              max: 255,
              divisions: 255,
              activeColor: Colors.red,
              onChanged: (double value) {
                setState(() {
                  red = value;
                });
              },
            ),

            Text('Green: ${green.toInt()}'),
            Slider(
              value: green,
              min: 0,
              max: 255,
              divisions: 255,
              activeColor: Colors.green,
              onChanged: (double value) {
                setState(() {
                  green = value;
                });
              },
            ),

            Text('Blue: ${blue.toInt()}'),
            Slider(
              value: blue,
              min: 0,
              max: 255,
              divisions: 255,
              activeColor: Colors.blue,
              onChanged: (double value) {
                setState(() {
                  blue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
