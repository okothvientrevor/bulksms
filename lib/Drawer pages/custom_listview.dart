import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          SizedBox(
            height: 400,
            width: 300,
            child: ListView(
              children: [
                ListTile(
                  minLeadingWidth: 10,
                  leading: Container(
                    color: Colors.green,
                    height: 160,
                    width: 10,
                  ),
                  title: const Text(
                    "Booth Invite",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Sending..." '\n' "1000 contacts"),
                  trailing: const Icon(Icons.more_horiz),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  minLeadingWidth: 10,
                  leading: Container(
                    color: Colors.blue,
                    height: 160,
                    width: 10,
                  ),
                  title: const Text(
                    "Happy Holidays (Mom's side)",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Waiting for previous job"
                      '\n'
                      "1000 contacts"),
                  trailing: const Icon(Icons.more_horiz),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  leading: Container(
                    color: Colors.yellow,
                    height: 160,
                    width: 10,
                  ),
                  title: const Text(
                    "Reminder",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Job ended successfully"
                      '\n'
                      "4 contacts"),
                  trailing: const Icon(Icons.more_horiz),
                  minLeadingWidth: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  minLeadingWidth: 10,
                  leading: Container(
                    color: Colors.purple,
                    height: 160,
                    width: 10,
                  ),
                  title: const Text(
                    "Parents notice",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Sending..." '\n' "1000 contacts"),
                  trailing: const Icon(Icons.more_horiz),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ])
      ],
    );
  }
}
