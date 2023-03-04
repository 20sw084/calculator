import 'package:flutter/material.dart';

class MyCalc extends StatefulWidget {
  const MyCalc({super.key});

  @override
  State<MyCalc> createState() => _MyCalcState();
}

class _MyCalcState extends State<MyCalc> {
  var userInput = '0';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(
              vertical: 60,
              horizontal: 12,
            ),
            child: Text(
              userInput,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 12,
            ),
            child: Text(
              answer,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        // Todo: implement pop function here from userInput
                      });
                    },
                    backgroundColor: Colors.grey,
                    child: const Text(
                      'C',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (userInput.contains('-')) {
                          // ToDo: Remove minus from index 0 and store in userInput.
                          // print('contains minus');
                          var myInt = int.parse(userInput);
                          myInt *= -myInt;
                          userInput = myInt.toString();
                        } else {
                          userInput = '-$userInput';
                        }
                      });
                    },
                    backgroundColor: Colors.grey,
                    child: const Text(
                      '+/-',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        userInput += '%';
                      });
                    },
                    backgroundColor: Colors.grey,
                    child: const Text(
                      '%',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        userInput += '÷';
                      });
                    },
                    backgroundColor: Colors.orange,
                    child: const Text(
                      '÷',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (userInput.startsWith('0') &&
                            userInput.endsWith('0')) {
                          userInput = '7';
                        } else {
                          userInput += '7';
                        }
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 87, 86, 76),
                    child: const Text(
                      '7',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (userInput.startsWith('0') &&
                            userInput.endsWith('0')) {
                          userInput = '8';
                        } else {
                          userInput += '8';
                        }
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 87, 86, 76),
                    child: const Text(
                      '8',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (userInput.startsWith('0') &&
                            userInput.endsWith('0')) {
                          userInput = '9';
                        } else {
                          userInput += '9';
                        }
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 87, 86, 76),
                    child: const Text(
                      '9',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        userInput += 'x';
                      });
                    },
                    backgroundColor: Colors.orange,
                    child: const Text(
                      'x',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (userInput.startsWith('0') &&
                            userInput.endsWith('0')) {
                          userInput = '4';
                        } else {
                          userInput += '4';
                        }
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 87, 86, 76),
                    child: const Text(
                      '4',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (userInput.startsWith('0') &&
                            userInput.endsWith('0')) {
                          userInput = '5';
                        } else {
                          userInput += '5';
                        }
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 87, 86, 76),
                    child: const Text(
                      '5',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (userInput.startsWith('0') &&
                            userInput.endsWith('0')) {
                          userInput = '6';
                        } else {
                          userInput += '6';
                        }
                      });
                    },
                    // shape: BeveledRectangleBorder(
                    //     borderRadius: BorderRadius.circular()),
                    backgroundColor: const Color.fromARGB(255, 87, 86, 76),
                    child: const Text(
                      '6',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        userInput += '-';
                      });
                    },
                    backgroundColor: Colors.orange,
                    child: const Text(
                      '-',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (userInput.startsWith('0') &&
                            userInput.endsWith('0')) {
                          userInput = '1';
                        } else {
                          userInput += '1';
                        }
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 87, 86, 76),
                    child: const Text(
                      '1',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (userInput.startsWith('0') &&
                            userInput.endsWith('0')) {
                          userInput = '2';
                        } else {
                          userInput += '2';
                        }
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 87, 86, 76),
                    child: const Text(
                      '2',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (userInput.startsWith('0') &&
                            userInput.endsWith('0')) {
                          userInput = '3';
                        } else {
                          userInput += '3';
                        }
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 87, 86, 76),
                    child: const Text(
                      '3',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        userInput += '+';
                      });
                    },
                    backgroundColor: Colors.orange,
                    child: const Text(
                      '+',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        userInput = '0';
                        answer = '';
                      });
                    },
                    backgroundColor: Colors.red,
                    child: const Text(
                      'AC',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        userInput += '0';
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 87, 86, 76),
                    child: const Text(
                      '0',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        userInput += '.';
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 87, 86, 76),
                    child: const Text(
                      '.',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        equalsButtonActionPerformed();
                      });
                    },
                    backgroundColor: Colors.orange,
                    child: const Text(
                      '=',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void equalsButtonActionPerformed() {
    String finalUserInput = userInput;
    userInput = '';
    // Parser p = Parser();
    // Expression exp = p.parse(finalUserInput);
    // ContextModel cm = ContextModel();
    // double eval = exp.evaluate(EvaluationType.REAL, cm);
    // print(eval);
  }
}
