import 'package:flutter/material.dart';

class FlexTest extends StatefulWidget {
  const FlexTest({super.key});

  @override
  State<FlexTest> createState() => _FlexTestState();
}

class _FlexTestState extends State<FlexTest> {
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
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.lightBlueAccent),
              child: Stack(
                children: [
                  Visibility(
                    visible: (index == 0) ? true : false,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Visibility(
                    visible: (index == 1) ? true : false,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                  Visibility(
                    visible: (index == 2) ? true : false,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                  Visibility(
                    visible: (index == 3) ? true : false,
                    child: Container(
                      color: Colors.amber,
                    ),
                  ),
                  Visibility(
                    visible: (index == 4) ? true : false,
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.lightBlueAccent),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.home,
                    color: Theme.of(context).cardColor,
                  ),
                  onPressed: () {
                    changeScreen(0);
                  },
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.shop,
                    color: Theme.of(context).cardColor,
                  ),
                  onPressed: () {
                    changeScreen(1);
                  },
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.explore,
                    color: Theme.of(context).cardColor,
                  ),
                  onPressed: () {
                    changeScreen(2);
                  },
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.exit_to_app,
                    color: Theme.of(context).cardColor,
                  ),
                  onPressed: () {
                    changeScreen(3);
                  },
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.settings,
                    color: Theme.of(context).cardColor,
                  ),
                  onPressed: () {
                    changeScreen(4);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
