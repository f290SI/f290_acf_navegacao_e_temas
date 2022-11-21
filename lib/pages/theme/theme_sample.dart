import 'package:f290_acf_navegacao_e_temas/pages/theme/widgets/feed_widget.dart';
import 'package:flutter/material.dart';

class ThemeExample extends StatefulWidget {
  const ThemeExample({super.key});

  @override
  State<ThemeExample> createState() => _ThemeExampleState();
}

class _ThemeExampleState extends State<ThemeExample> {
  int _selectedIndex = 0;
  var pages = [
    FeedWidget(),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.pink,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Example'),
      ),
      drawer: Drawer(
          child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('Esdras B SIlva'),
            accountEmail: Text('bzr4@icloud.com'),
          ),
        ],
      )),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
    );
  }
}

class DetailWidget extends StatelessWidget {
  const DetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Page')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            Placeholder(
              fallbackHeight: 300,
            ),
            Text('Lorem ipsum dolor sit amet')
          ],
        ),
      ),
    );
  }
}

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
