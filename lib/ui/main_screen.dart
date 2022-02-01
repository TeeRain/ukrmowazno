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
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [_gradientFirstColor, _secondaryColor])),
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
                            Padding(padding: EdgeInsets.all(10)),
                            Row(
                              children: [_buildButton("button", 0.75, 0.125)],
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                            Row(
                              children: [_buildButton("button", 0.75, 0.125)],
                            ),
                            Padding(padding: EdgeInsets.all(10)),
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
                            Padding(padding: EdgeInsets.all(10)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 100,
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    _buildButtonRounded("Text", 0.1, 0.05),
                                    Padding(padding: EdgeInsets.only(top: 5)),
                                    _buildButtonRounded("Text", 0.1, 0.05),
                                    Padding(padding: EdgeInsets.only(top: 5)),
                                    _buildButtonRounded("Text", 0.1, 0.05),
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
        ),
      ),
    );
  }
}
