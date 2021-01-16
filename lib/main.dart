import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StopWatch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StopWatchPage(),
    );
  }
}

class StopWatchPage extends StatefulWidget {
  @override
  _StopWatchPageState createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  Timer _timer; // 타이머

  var _time = 0; // 0.01초마다 1씩 증가시킬 정수형 변수
  var _isRunning = false; // 현재 시작 상태를 나타낼 불리언 변수

  List<String> _lapTimes = []; // 랩타임에 표시할 시간을 저장할 리스트

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StopWatch'),
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _clickButton();
        }),
        child: Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0',
                      style: TextStyle(fontSize: 50.0),
                    ),
                    Text('0'),
                  ],
                ),
                Container(
                  width: 100,
                  height: 200,
                  child: ListView(
                    children: [],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 10,
              bottom: 10,
              child: FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                onPressed: () {},
                child: Icon(Icons.rotate_left),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: RaisedButton(
                onPressed: () {},
                child: Text('랩타임'),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  bottom: 50,
                  right: 25,
                  width: 75,
                  height: 75,
                  child: Container(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _clickButton() {}
}
