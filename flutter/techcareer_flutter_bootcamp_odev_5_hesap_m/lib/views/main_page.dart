import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:techcareer_flutter_bootcamp_odev_5_hesap_m/widgets/my_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String userInput = "";
  String result = '0';
  List<String> buttonList = [
    'AC',
    '(',
    ')',
    '÷',
    '7',
    '8',
    '9',
    '×',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    'C',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * .30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userInput,
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      result,
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.black),
            Expanded(
              child: GridView.builder(
                itemCount: buttonList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return MyButton(
                    onTap: () {
                      buttonClicled(context, buttonList[index]);
                    },
                    text: buttonList[index],
                    shadowColor: getShadowColor(buttonList[index]),
                    bgColor: getBgColor(buttonList[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color getShadowColor(String text) {
    if (text == '÷' ||
        text == '×' ||
        text == '-' ||
        text == '+' ||
        text == '=') {
      return Colors.red.shade700;
    } else if (text == 'AC' || text == 'C') {
      return Colors.blue.shade700;
    } else {
      return Colors.grey.shade800;
    }
  }

  Color getBgColor(String text) {
    if (text == '÷' ||
        text == '×' ||
        text == '-' ||
        text == '+' ||
        text == '=') {
      return Colors.red;
    } else if (text == 'AC' || text == 'C') {
      return Colors.blue;
    } else {
      return Colors.grey.shade600;
    }
  }

  buttonClicled(BuildContext context, String text) {
    setState(() {
      if (text == 'AC') {
        userInput = "";
        result = '0';
        return;
      }
      if (text == 'C') {
        if (userInput.isNotEmpty) {
          userInput = userInput.substring(0, userInput.length - 1);
          return;
        } else {
          return null;
        }
      }

      if (text == '=') {
        userInput = userInput.replaceAll('×', '*');
        userInput = userInput.replaceAll('÷', '/');
        result = calculateIt();
        userInput = result;
        if (result.endsWith('.0')) {
          result = result.replaceAll('.0', '');
        }
        if (userInput.endsWith('.0')) {
          userInput = userInput.replaceAll('.0', '');
          return;
        }

        return;
      }
      userInput = userInput + text;
    });
  }

  calculateIt() {
    try {
      var inputExp = Parser().parse(userInput);
      var resultEva = inputExp.evaluate(EvaluationType.REAL, ContextModel());
      return resultEva.toString();
    } catch (e) {
      return 'Error: $e';
    }
  }
}
