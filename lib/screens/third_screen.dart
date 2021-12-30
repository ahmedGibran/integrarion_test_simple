import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Third"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "Third Title",
              style: TextStyle(fontSize: 22, color: Colors.black),
              key: Key("third_title_text"),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Container(
                color: Colors.purple.shade300,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              key: const Key("third_pop_screen"),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 15,
                width: 100,
                color: Colors.purple,
                child: const Center(
                  child: Icon(Icons.arrow_back_outlined),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
