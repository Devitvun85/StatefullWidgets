import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
      
        child: Column(
          children: [
            SelectableButton(),
            SizedBox(height: 5,),
            SelectableButton(),
            SizedBox(height: 5,),

            SelectableButton(),
          ],
        )
      ),
    ),
  ),
);

class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  bool isSelect = false;

  //Create getters to get the text, text color and background color depending on the state:
  String get text => isSelect ? 'Selected' : 'not selected';
  Color get textColor => isSelect ? Colors.white : Colors.black;
  Color get backgroundColor => isSelect ? Colors.blue[500]! : Colors.blue[50]!;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: 400,
          height: 100,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                isSelect = !isSelect;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,

            ),
            child: Center(
                child: Text(text),
            ) ,
          ),
    );
  }
  
}
