import 'package:bulk_sms/Tab%20Pages/message_tab.dart';
import 'package:bulk_sms/Tab%20Pages/recipients_tab.dart';
import 'package:bulk_sms/Tab%20Pages/send_tab.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kTabPages = <Widget>[
      const Center(
        child: RecipeientsPage(),
      ),
      const Center(
        child: MessageTab(),
      ),
      const Center(child: SendTab()),
    ];

    final kTabs = [
      const Tab(text: "RECIPIENTS"),
      const Tab(text: "MESSAGE"),
      const Tab(text: "SEND"),
    ];

    return DefaultTabController(
      length: kTabs.length,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 224, 222, 222),
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
          bottom: TabBar(tabs: kTabs),
        ),
        drawer: const CustomDrawer(),
        body: TabBarView(children: kTabPages),
      ),
    );
  }
}
