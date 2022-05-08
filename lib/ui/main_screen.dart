import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    Color _gradientFirstColor = const Color(0x00beb490);
    Color _secondaryColor = const Color.fromARGB(255, 194, 185, 137);
    Color _textColor = const Color(0xff544911);
    Color _buttonColor = const Color(0xff9fbb88);

    Widget _buildButton(
        String _someText, double _buttonWidth, double _buttonHeight) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * _buttonHeight,
        width: MediaQuery.of(context).size.width * _buttonWidth,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_buttonColor)),
          child: Text(
            _someText,
            style: TextStyle(color: _textColor, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          onPressed: () {},
        ),
      );
    }

    Widget _buildButtonRounded(
        String _someText, double _buttonWidth, double _buttonHeight) {
      return Container(
        margin: const EdgeInsets.only(right: 7.5),
        height: MediaQuery.of(context).size.height * _buttonHeight,
        width: MediaQuery.of(context).size.width * _buttonWidth,
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              )),
              backgroundColor: MaterialStateProperty.all(_buttonColor)),
          child: Text(
            _someText,
            style: TextStyle(color: _textColor, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          onPressed: () {},
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                //app bar
                children: [
                  Container(
                    child: Row(children: [
                      InkWell(
                        onTap: () {}, //user interaction
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Icon(
                                Icons.ac_unit,
                                size: 40,
                                color: Colors.white,
                              ),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                            Text(
                              "user",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Row(
                        // buttons
                        children: [
                          InkWell(
                            onTap: () {
                              print("Button 1");
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              child: Icon(
                                Icons.ac_unit,
                                color: Colors.red,
                                size: 30,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                  border:
                                      Border.all(color: Colors.red, width: 2)),
                            ),
                          ),
                          InkWell(
                            onTap: (() {
                              print("Button 2");
                            }),
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              height: 40,
                              width: 40,
                              child: Icon(
                                Icons.ac_unit,
                                color: Colors.red,
                                size: 30,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                  border:
                                      Border.all(color: Colors.red, width: 2)),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              print("Button 3");
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 40,
                              width: 40,
                              child: Icon(
                                Icons.ac_unit,
                                color: Colors.red,
                                size: 30,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                  border:
                                      Border.all(color: Colors.red, width: 2)),
                            ),
                          )
                        ],
                      )
                    ]),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                  )
                ],
              ),
              Row(
                // main container
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                      border: Border.all(width: 0, color: Colors.transparent),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildButtonRounded("button", 0.375, 0.075),
                                _buildButtonRounded("button", 0.375, 0.075),
                                _buildButtonRounded("button", 0.375, 0.075),
                                _buildButtonRounded("button", 0.375, 0.075),
                                _buildButtonRounded("button", 0.375, 0.075),
                                _buildButtonRounded("button", 0.375, 0.075),
                                _buildButtonRounded("button", 0.375, 0.075),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.75,
                                child: Column(
                                  children: [
                                    const Padding(padding: EdgeInsets.all(10)),
                                    Row(
                                      children: [
                                        _buildButton("button", 0.75, 0.125)
                                      ],
                                    ),
                                    const Padding(padding: EdgeInsets.all(10)),
                                    Row(
                                      children: [
                                        _buildButton("button", 0.75, 0.125)
                                      ],
                                    ),
                                    const Padding(padding: EdgeInsets.all(10)),
                                    Row(
                                      children: [
                                        _buildButton("button", 0.33, 0.17),
                                        const Spacer(),
                                        Column(
                                          children: [
                                            _buildButton("button", 0.33, 0.075),
                                            const Divider(),
                                            _buildButton("button", 0.33, 0.075)
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.circle,
                                              size: 110,
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
