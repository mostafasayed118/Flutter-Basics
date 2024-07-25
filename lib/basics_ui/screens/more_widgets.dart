import 'package:flutter/material.dart';

class MoreWidgets extends StatefulWidget {
  const MoreWidgets({super.key});

  @override
  State<MoreWidgets> createState() => _MoreWidgetsState();
}

class _MoreWidgetsState extends State<MoreWidgets> {
  List screen = [
    const Center(child: Text('Home')),
    const Center(child: Text('Profile')),
    const Center(child: Text('Settings'))
  ];

  int currentIndex = 0;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Widgets'),
      ),
      body: slider(),
    );
  }

  Center slider() {
    return Center(
      child: Slider(
        activeColor: Colors.red,
        divisions: 10,
        min: 0,
        max: 10,
        value: sliderValue,
        onChanged: (value) {
          setState(() {
            sliderValue = value;
          });
        },
      ),
    );
  }

  Center circularProgressIndicator() {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.red[200],
      ),
    );
  }

  Scaffold bottomNavigationBar() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Widgets'),
      ),
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.green[100],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            activeIcon: Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            activeIcon: Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            activeIcon: Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  DefaultTabController defaultTabController() {
    //tab bar
// 1. --> add DefaultTabController
// 2. --> add TabBar in bottom of AppBar
// 3. --> add TabBarView in body in scaffold
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.person),
              text: 'Profile',
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Settings',
            ),
          ]),
          title: const Text('More Widgets'),
          backgroundColor: Colors.green[100],
        ),
        body: const Center(
          child: TabBarView(
            children: [
              Center(child: Text('Home')),
              Center(child: Text('Profile')),
              Center(child: Text('Settings')),
            ],
          ),
        ),
      ),
    );
  }

  Drawer drawer() {
    return Drawer(
      backgroundColor: Colors.green[100],
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
        ),
      ),
      width: 250,
      child: const Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Flutter'),
            accountEmail: Text('XJt8k@example.com'),
            decoration: BoxDecoration(color: Colors.green, boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(0, 0),
              )
            ]),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }

  SizedBox customStack() {
    return SizedBox(
      height: 300,
      width: 300,
      child: Stack(
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.green[100],
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: Text('topCenter'),
          ),
          const Positioned(
            bottom: 10,
            right: 10,
            child: Text('Positioned'),
          ),
        ],
      ),
    );
  }

  Container customAlign() {
    return Container(
      height: 200,
      width: 200,
      color: Colors.red,
      child: const Align(
          // to control the alignment of the child
          alignment: Alignment.topCenter,
          child: Text('Container')),
    );
  }

  ListTile customListTile() {
    return const ListTile(
      title: Text('ListTile'),
      subtitle: Row(
        children: [
          Icon(Icons.check),
          SizedBox(width: 5),
          Text('ListTile Subtitle'),
        ],
      ),
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      trailing: Text('Friday'),
    );
  }

  Center customListView() {
    return Center(
      // listView = Column + SingleChildScrollView
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Text(
            'Item  - $index',
            textAlign: TextAlign.center,
          );
        },
      ),
    );
  }
}
