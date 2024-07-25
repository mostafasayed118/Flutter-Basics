import 'package:flutter/material.dart';
import 'package:session_code_flutter/basics_ui/components/custom_listtile.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.chat_bubble_outline,
              color: Colors.white,
            ),
            SizedBox(width: 10),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        drawer: const Drawer(),
        body: const TabBarView(children: [
          Text('Chats'),
          Text('Status'),
          Text('Calls'),
        ]),
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          backgroundColor: Colors.green,
          child: const Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class ScreenChat extends StatelessWidget {
  const ScreenChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomListTile(
          title: 'Mustafa Sayed',
          subtitle: 'Hi, How are you?',
          circleAvatar: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          trailing: const Column(
            children: [
              Text(
                '20:00 PM',
                style: TextStyle(color: Colors.green),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 12,
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        CustomListTile(
          title: 'Ahmed Sayed',
          subtitle: 'hello, How are you?',
          circleAvatar: CircleAvatar(
            backgroundColor: Colors.green[100],
            child: const Icon(Icons.person),
          ),
          trailing: const Column(
            children: [
              Text(
                '10:00 AM',
                style: TextStyle(color: Colors.green),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 12,
                child: Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        CustomListTile(
          title: 'Mustafa Saeed ',
          subtitle: 'Ok',
          circleAvatar: CircleAvatar(
            backgroundColor: Colors.red[100],
            child: const Icon(Icons.person),
          ),
          trailing: Text(
            'Friday',
            style: TextStyle(color: Colors.grey[600]),
          ),
          onTap: () {},
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        CustomListTile(
          title: 'Eman Aly',
          subtitle: 'Sorry, I am busy',
          circleAvatar: CircleAvatar(
            backgroundColor: Colors.blue[100],
            child: const Icon(Icons.person),
          ),
          trailing: const Column(
            children: [
              Text(
                '21:00 PM',
                style: TextStyle(color: Colors.green),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 12,
                child: Text(
                  '4',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        CustomListTile(
          title: 'Ibrahim Sayed',
          subtitle: 'Come to meet you',
          circleAvatar: CircleAvatar(
            backgroundColor: Colors.yellow[100],
            child: const Icon(Icons.person),
          ),
          trailing: const Column(
            children: [
              Text(
                '20:00 PM',
                style: TextStyle(color: Colors.green),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 12,
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        CustomListTile(
          title: 'Mustafa Sayed',
          subtitle: 'Hi, How are you?',
          circleAvatar: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          trailing: const Column(
            children: [
              Text(
                '20:00 PM',
                style: TextStyle(color: Colors.green),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 12,
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        CustomListTile(
          title: 'Mustafa Sayed',
          subtitle: 'Hi, How are you?',
          circleAvatar: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          trailing: const Column(
            children: [
              Text(
                '20:00 PM',
                style: TextStyle(color: Colors.green),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 12,
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        CustomListTile(
          title: 'Mustafa Sayed',
          subtitle: 'Hi, How are you?',
          circleAvatar: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          trailing: const Column(
            children: [
              Text(
                '20:00 PM',
                style: TextStyle(color: Colors.green),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 12,
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}
