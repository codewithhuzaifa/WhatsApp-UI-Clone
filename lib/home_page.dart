import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List names = [
      'Atif Aslam',
      'Ushna Shah',
      'Fawad Khan',
      'Mahira Khan',
      'Fahad Mustafa',
      'Maya Ali',
      'Humayun Saeed',
      'Kinza Hashmi',
      'Sajal Aly'
    ];
    List imageurls = [
      'https://www.njpac.org/wp-content/uploads/2022/02/800x600_Atif_Aslam_onsale.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLOpUUfqRYnnnvO-Uyg_tcyi1D8VsT7R_1D6NRj35U6ukMY3x0jYfa5ejg6-0CUwMeIu0&usqp=CAU',
      'https://images.inuth.com/2017/11/1Fawad-Khan-is-a-feast-to-the-eyes-in-his-latest-photoshoot.jpg',
      'https://i.dawn.com/primary/2022/12/29175003b613fcb.png',
      'https://img.wegreenkw.com/sites/3/2022/11/Fahad-Mustafa-1.webp',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Maya_Ali_%28Pexels-Act-erst-acting-jheel-jheel-saif-ul-malook-172719%29_%28cropped%29.jpg/1200px-Maya_Ali_%28Pexels-Act-erst-acting-jheel-jheel-saif-ul-malook-172719%29_%28cropped%29.jpg',
      'https://cdn.bolnews.com/wp-content/uploads/2022/01/392468_5108789_updates-635x380.jpg',
      'https://starsunfolded.com/wp-content/uploads/2023/01/Kinza-Hashmi.jpg',
      'https://e0.pxfuel.com/wallpapers/202/709/desktop-wallpaper-faysal-khan-on-sajal-ali-sajal-aly-thumbnail.jpg',
    ];
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
                subtitle: const Text('Assalam o alikum'),
                trailing: const Text('6:05 pm'),
              ),
            ),
            Column(),
            Column(),
          ],
        ),
      ),
    );
  }
}
