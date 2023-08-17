import 'package:flutter/material.dart';
import 'package:whatsapp/data.dart';
import 'package:whatsapp/status.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("WhatsApp"),
              Row(
                children: const [
                  Icon(Icons.camera_alt),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.search),
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: PopupMenuButton(
                itemBuilder: (
                  context,
                ) =>
                    const [
                  PopupMenuItem(
                    child: Text('New group'),
                  ),
                  PopupMenuItem(
                    child: Text('New broadcast'),
                  ),
                  PopupMenuItem(
                    child: Text('Linked devices'),
                  ),
                  PopupMenuItem(
                    child: Text('Starred messages'),
                  ),
                  PopupMenuItem(
                    child: Text("Settings"),
                  ),
                ],
              ),
            ),
          ],
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.group)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text("Calls")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(),
            ListView.builder(
              itemCount: 9,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(imageurls[index]),
                ),
                title: Text(names[index]),
                subtitle: Text(messages[index]),
                trailing: Text(time[index]),
              ),
            ),
            const Status(),
            Column(),
          ],
        ),
      ),
    );
  }
}
