import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {

  final String _title;
  final String _body;
  final Color _color;
  static const double _Pad = 5.0;

  TextSection(this._title, this._body, this._color);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_Pad, _Pad, _Pad, 4.0),
            child: Text(
                _title, style: TextStyle(fontFamily: 'Gum', fontSize: 55.0)),

          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_Pad, _Pad, _Pad, 10.0),
            child: Text(_body),
          ),
          Container(
              decoration: BoxDecoration(
                color: _color,
              ),
              child: Text("Before Night Night, Its time for some reflection"),
          )

        ]);
  }
}
/*
  fontFamily : FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: Colors.white

//Code used before styling


class TextSection extends StatelessWidget {
  final Color _color;
  TextSection(this._color);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: _color,
        ),
        child: Text('Before night night, Time to quiet time')
    );
  }
} */
