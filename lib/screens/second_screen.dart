import 'package:flutter/material.dart';
import 'package:integartion_test_simple/screens/third_screen.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Second"),
      ),
      body: SingleChildScrollView(
        key:const Key("second_listTile"),
        child:Column(
          children:  [
            const Text(
              "Second Title",style: TextStyle(fontSize: 22,color: Colors.black),
              key:Key("second_title_text"),
            ),
            const  SizedBox(height: 10,),
            ...List.generate(
              15, (index) =>
                ListTile(
                  key: Key("second_listTile_${index}"),
                  title: Text(
                    "Third Screen",style: TextStyle(fontSize: 18,color: Colors.purple.shade300),),
                  onTap: (){

                  },

                ),
            ),
            const  SizedBox(height: 10,),
            ElevatedButton(

              key: const Key("second_navigate_third_screen"),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ThirdScreen()));

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
