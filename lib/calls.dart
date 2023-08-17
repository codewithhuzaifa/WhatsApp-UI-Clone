import 'package:flutter/material.dart';
import 'package:whatsapp/data.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    List calltimedate = [
      'Yesterday, 11:57 pm',
      'Yesterday, 10:40 pm',
      '16 August, 03:09 pm',
      '15 August, 10:40 pm',
      '15 August, 06:19 pm',
      '14 August, 05:09 pm',
      '13 August, 07:49 pm',
      '12 August, 07:09 pm',
      '12 August, 04:59 pm',
    ];
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) => index == 0
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal.shade800,
                    child: const Icon(Icons.link),
                  ),
                  title: const Text('Create call link'),
                  subtitle: const Text('Share a linkfor your WhatsApp call'),
                ),
                const Padding(
                  padding: EdgeInsets.all(9),
                  child: Text('Recent'),
                ),
              ],
            )
          : ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imageurls[index]),
              ),
              title: Text(names[index]),
              subtitle: Row(
                children: [
                  index % 2 == 0
                      ? Icon(
                          Icons.call_received_rounded,
                          color: index % 3 == 0 ? Colors.red : Colors.green,
                        )
                      : Icon(
                          Icons.arrow_outward_rounded,
                          color: index % 3 == 0 ? Colors.red : Colors.green,
                        ),
                  Text(calltimedate[index]),
                ],
              ),
              trailing: index % 2 == 0
                  ? const Icon(Icons.videocam_rounded)
                  : const Icon(Icons.call),
            ),
    );
  }
}
