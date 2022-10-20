import 'package:bulk_sms/Drawer%20pages/job_manager.dart';
import 'package:bulk_sms/homepage.dart';
import 'package:flutter/material.dart';

import 'Drawer pages/settings.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              title: Image.asset("assets/images/bulksms.png", height: 30)),
          const Divider(
            color: Colors.black,
          ),
          const ListTile(
            title: Text(
              "JOBS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.edit),
              title: Text("Create a Job"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const JobManager()));
            },
            child: const ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.timer),
              title: Text("Job Manager"),
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.black,
              )),
          const ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            title: Text(
              "PREFERENCES",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingsPage()));
            },
            child: const ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.black,
              )),
          const ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            leading: Icon(Icons.help),
            title: Text("Help"),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.black,
              )),
          const ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            title: Text(
              "LICENSE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          const ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            title: Text("Status: Pro License"),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 5,
                color: Colors.blue,
              )),
        ],
      ),
    );
  }
}
