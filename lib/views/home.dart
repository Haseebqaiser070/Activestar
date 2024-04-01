import 'package:activestar/controllers/appcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetX<AppController>(
        builder: (controller) => !controller.isLoading.value
            ? Scaffold(
                body: SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      children: [
                        Positioned(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  Icons.mail_outline,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.more_vert, color: Colors.black)
                              ],
                            ),
                          ),
                          right: 0,
                          top: 10,
                        ),
                        Positioned(
                          child: Image.asset(
                            'assets/logo.jpg',
                            width: 120,
                            height: 120,
                          ),
                          top: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 1.5,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                color: Colors.red,
                              )),
                          child: Image.network(
                            controller.items.itemslist[0].image,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }
}
