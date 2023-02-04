import 'dart:async';

import 'package:flutter/material.dart';

class ListTest extends StatefulWidget {
  const ListTest({super.key});

  @override
  State<ListTest> createState() => _ListTestState();
}

class _ListTestState extends State<ListTest> {
  static const timerTime = 1500;
  int totalSeconds = timerTime;
  bool isRunning = false;
  int totalCount = 0;
  Timer? timer;

  void onTick(Timer timer) {
    setState(() {});
    if (totalSeconds == 0) {
      totalCount++;
      isRunning = false;
      totalSeconds = timerTime;
      timer.cancel();
    } else {
      totalSeconds = totalSeconds - 1;
    }
  }

  void onStartPressed() {
    setState(() {});
    isRunning
        ? timer?.cancel()
        : timer = Timer.periodic(
            const Duration(seconds: 1),
            onTick,
          );
    isRunning = !isRunning;
  }

  void onRestartPressed() {
    setState(() {});

    timer?.cancel();
    totalSeconds = timerTime;
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
    isRunning = true;
  }

  void restCount() {
    setState(() {});
    totalCount = 0;
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return '$duration'.split('.').first.substring(2);
  }

  int index = 0;
  void changeScreen(int index) {
    setState(() {});
    this.index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('메인 화면'),
      ),
      body: ListView(
        children: [
          Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: ListTile(
              leading: const Icon(
                Icons.access_alarm,
                color: Colors.purple,
              ),
              title: Column(
                children: [
                  Container(
                    height: 100,
                    color: Colors.blue,
                    child: Image.asset('assets/images/car1.png'),
                  ),
                  const Text('안녕'),
                ],
              ),
              trailing: const Text('홍길동1'),
            ),
          ),
          const Card(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: ListTile(
              leading: Icon(
                Icons.access_alarm,
                color: Colors.purple,
              ),
              title: Text('안녕'),
              trailing: Text('홍길동1'),
            ),
          ),
          const Card(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: ListTile(
              leading: Icon(
                Icons.access_alarm,
                color: Colors.purple,
              ),
              title: Text('안녕'),
              trailing: Text('홍길동1'),
            ),
          ),
        ],
      ),
    );
  }
}
