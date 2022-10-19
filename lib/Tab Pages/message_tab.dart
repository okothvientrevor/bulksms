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
          ),
        ),
      ],
    );
  }
}
