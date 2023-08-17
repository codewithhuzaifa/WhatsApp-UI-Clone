import 'package:flutter/material.dart';
import 'package:whatsapp/data.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) => index == 0
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey.shade500,
                  ),
                  title: const Text('My Status'),
                  subtitle: const Text('Tap to add status'),
                ),
                const Padding(
                  padding: EdgeInsets.all(9),
                  child: Text(
                    'Recent Updates',
                  ),
                ),
              ],
            )
          : ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 3,
                    color: Colors.teal,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(imageurls[index]),
                ),
              ),
              title: Text(names[index]),
              subtitle: Text(time[index]),
            ),
    );
  }
}
    // Column(
    //   //crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
        // const ListTile(
        //   leading: CircleAvatar(),
        //   title: Text('My Status'),
        //   subtitle: Text('Tap to add status'),
        // ),
        // const Padding(
        //   padding: EdgeInsets.all(9),
        //   child: Text(
        //     'Recent Updates',
        //   ),
        // ),
        // ListView.builder(
        //   itemCount: 9,
        //   itemBuilder: (context, index) => ListTile(
        //     leading: CircleAvatar(
        //       backgroundImage: NetworkImage(imageurls[index]),
        //     ),
        //     title: Text(names[index]),
        //     subtitle: Text(time[index]),
        //   ),
        // )
//       ],
//     );
//   }
// }
