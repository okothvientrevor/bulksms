import 'package:flutter/material.dart';

class MessageTab extends StatelessWidget {
  const MessageTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    //var width = size.width;
    return Column(
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
                        "Recipient List",
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
    );
  }
}
