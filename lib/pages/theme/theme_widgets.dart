import 'package:flutter/material.dart';

class ThemeWidgets extends StatelessWidget {
  const ThemeWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextButton(
            child: const Text('TextButton'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text('ElevatedButton'),
            onPressed: () {},
          ),
          OutlinedButton(
            child: const Text('OutlinedButton'),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.adb),
          ),
          Slider(min: 1, max: 10, value: 5.0, onChanged: ((value) {})),
          Switch(value: true, onChanged: ((value) {})),
        ],
      ),
    );
  }
}
