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
    return SingleChildScrollView(
      child: Column(
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
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Recipient List",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: TextField(
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "From Excel/CSV File ",
                                suffixIcon: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                        Container(
                          color: const Color.fromARGB(255, 219, 217, 217),
                          height: 100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: const [
                                    Text(
                                      "clients.xlsx",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 0, vertical: 10),
                                            child: Text(
                                              "Browse Device..",
                                              style: TextStyle(fontSize: 20),
                                            ))),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 9.0),
                          child: TextField(
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "From History ",
                                suffixIcon: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                )),
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: const [
                        Text(
                          "Status",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Row(
                      children: [
                        Image.asset("assets/images/greentick.png", height: 30),
                        const SizedBox(width: 10),
                        const Text("10,000 rows found in file")
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Row(
                      children: [
                        Image.asset("assets/images/greentick.png", height: 30),
                        const SizedBox(width: 10),
                        const Text("10,000 valid names found in file")
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Row(
                      children: [
                        Image.asset("assets/images/greentick.png", height: 30),
                        const SizedBox(width: 10),
                        const Text("10,000 complete contacts fond in file")
                      ],
                    ),
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
