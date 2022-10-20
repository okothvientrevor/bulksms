import 'package:flutter/material.dart';

import '../custom_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset(
              "assets/images/bulksms.png",
              height: 30,
            )
          ],
        ),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.8,
            child: ListView(
              children: [
                const ListTile(
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "APPLICATION SETTINGS",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(Icons.vibration),
                    title: Text("Haptic feedback"),
                    subtitle: Text("Gently vibrate on touch"),
                    trailing: Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(
                        Icons.task_alt,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(Icons.schedule),
                    title: Text("Delay between messages"),
                    subtitle: Text("Wait 2 seconds between messages"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(Icons.lock_open),
                    title: Text("Perform limit unlock"),
                    subtitle: Text("Remove Android's SMS limit"),
                  ),
                ),
                const ListTile(
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "PRO SUBSCRIPTION",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4),
                  leading: Image.asset("assets/images/prologo.png", height: 30),
                  title: const Text(
                    "Pro license purchased",
                    style: TextStyle(color: Colors.grey),
                  ),
                  subtitle: const Text(
                    "You already purchased the Pro version",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Colors.black,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
