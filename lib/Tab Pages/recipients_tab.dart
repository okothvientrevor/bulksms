import 'package:flutter/material.dart';

class RecipeientsPage extends StatefulWidget {
  const RecipeientsPage({Key? key}) : super(key: key);

  @override
  State<RecipeientsPage> createState() => _RecipeientsPageState();
}

class _RecipeientsPageState extends State<RecipeientsPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: height * 0.4,
            width: width * 0.9,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 3,
                  offset: const Offset(2, 3))
            ], borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Row(
                        children: const [
                          Text(
                            "Recipient List",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(),
                Row()
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: height * 0.3,
            width: width * 0.9,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 3,
                  offset: const Offset(2, 3))
            ], borderRadius: BorderRadius.circular(5), color: Colors.white),
          ),
        ),
      ],
    );
  }
}
