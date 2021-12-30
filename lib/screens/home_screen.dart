import 'package:flutter/material.dart';
import 'package:integartion_test_simple/screens/second_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
      ),
      body: SingleChildScrollView(
        child:Column(
          children:  [
           const Text(
             "Title",style: TextStyle(fontSize: 22,color: Colors.black),
              key:Key("home_title_text"),
           ),
            const  SizedBox(height: 10,),
            const   Text(
              """
            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
             Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
              when an unknown printer took a galley of type and scrambled it to make a type specimen book.
               It has survived not only five centuries, but also the leap into electronic typesetting,
                remaining essentially unchanged. It was popularised in the 1960s with 
                the release of Letraset sheets containing Lorem Ipsum passages,
                 and more recently with desktop publishing software like Aldus PageMaker
                  including versions of Lorem Ipsum.
            """,style: TextStyle(fontSize: 16,color: Colors.black),

            key: Key("home_description_text"),),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Container(
                color: Colors.purple.shade300,
              ),
            ),
            const  SizedBox(height: 10,),
            ElevatedButton(
              key: const Key("home_navigate_second_screen"),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SecondScreen()));

            },
              child: Container(
                height: 15,
                width: 100,
                color: Colors.purple,
                child: const Center(child: Icon(Icons.navigate_next),),
              ),

            )

          ],
        ),
      ),
    );
  }
}
