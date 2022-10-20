import 'package:flutter/material.dart';

class MessageTab extends StatelessWidget {
  const MessageTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    //var width = size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: height * 0.5,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 3,
                    offset: const Offset(2, 3))
              ], borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Message",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Type your message here ",
                          contentPadding: EdgeInsets.only(bottom: 200, top: 0)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 3, 20, 20),
                    child: Row(
                      children: const [
                        Text(
                          "200 characters to next message",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              child: Text(
                                "Add Field..",
                                style: TextStyle(fontSize: 20),
                              ))),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              child: Text(
                                "Preview",
                                style: TextStyle(fontSize: 20),
                              ))),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: height * 0.2,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 3,
                    offset: const Offset(2, 3))
              ], borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Templates",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: Text(
                                "Load..",
                                style: TextStyle(fontSize: 20),
                              ))),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: Text(
                                "Save..",
                                style: TextStyle(fontSize: 20),
                              ))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
