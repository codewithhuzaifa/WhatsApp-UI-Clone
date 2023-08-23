import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/data.dart';
import 'package:whatsapp/status.dart';
import 'package:whatsapp/tabcontroller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    setState(() {
      _currentTabIndex = _tabController.index;
    });
  }

  Icon _getFloatingActionButtonIcon() {
    switch (_currentTabIndex) {
      case 0:
        return const Icon(Icons.group_add);
      case 1:
        return const Icon(Icons.message);
      case 2:
        return const Icon(Icons.photo_camera);
      case 3:
        return const Icon(Icons.add_call);
      default:
        return const Icon(Icons.chat); // Default icon
    }
  }

  @override
  Widget build(BuildContext context) {
    return TabControllerScope(
      tabController: _tabController,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          child: _getFloatingActionButtonIcon(),
        ),
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
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(child: Icon(Icons.group)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text("Calls")),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
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
            const Calls(),
          ],
        ),
      ),
    );
  }
}
