import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static double _minHeight = 80, _maxHeight = 600;
  Offset _offset = Offset(0, _minHeight);
  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(backgroundColor: Color(0xFFF6F6F6), elevation: 0),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: FlatButton(
              onPressed: _handleClick,
              splashColor: Colors.transparent,
              textColor: Colors.grey,
              child: Text(_isOpen ? "Back" : ""),
            ),
          ),
          Align(child: FlutterLogo(size: 300)),
          GestureDetector(
            onPanUpdate: (details) {
              _offset = Offset(0, _offset.dy - details.delta.dy);
              if (_offset.dy < _HomePageState._minHeight) {
                _offset = Offset(0, _HomePageState._minHeight);
                _isOpen = false;
              } else if (_offset.dy > _HomePageState._maxHeight) {
                _offset = Offset(0, _HomePageState._maxHeight);
                _isOpen = true;
              }
              setState(() {});
            },
            child: AnimatedContainer(
              duration: Duration.zero,
              curve: Curves.easeOut,
              height: _offset.dy,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 10)
                  ]),
              child: Text("This is my Bottom sheet"),
            ),
          ),
          Positioned(
            bottom: 2 * _HomePageState._minHeight -
                _offset.dy -
                28, // 56 is the height of FAB so we use here half of it.
            child: FloatingActionButton(
              child: Icon(_isOpen ? Icons.keyboard_arrow_down : Icons.add),
              onPressed: _handleClick,
            ),
          ),
        ],
      ),
    );
  }

  // first it opens the sheet and when called again it closes.
  void _handleClick() {
    _isOpen = !_isOpen;
    Timer.periodic(Duration(milliseconds: 5), (timer) {
      if (_isOpen) {
        double value = _offset.dy +
            10; // we increment the height of the Container by 10 every 5ms
        _offset = Offset(0, value);
        if (_offset.dy > _maxHeight) {
          _offset =
              Offset(0, _maxHeight); // makes sure it does't go above maxHeight
          timer.cancel();
        }
      } else {
        double value = _offset.dy - 10; // we decrement the height by 10 here
        _offset = Offset(0, value);
        if (_offset.dy < _minHeight) {
          _offset = Offset(
              0, _minHeight); // makes sure it doesn't go beyond minHeight
          timer.cancel();
        }
      }
      setState(() {});
    });
  }
}
