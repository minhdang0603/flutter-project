import 'package:flutter/material.dart';
import 'package:hello_world/widgets/normal_text_widget.dart';

class HelloScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello everyone", style: TextStyle(
          color: Colors.orange,
          fontSize: 40,
          fontWeight: FontWeight.w500
        ),),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search, color: Colors.blue, size: 30,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Text("This is body" , style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
                fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: const Center(
                child: Text("This is container"),
              )
            ),
            const SizedBox(height: 10,),
            normalText("This is first widgets", Colors.blueGrey)
          ],
        ),
      ),
        bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.home_rounded)
            ),
            IconButton(
                onPressed: (){}, icon:
            const Icon(Icons.newspaper)
            ),
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.person)
            ),
          ],
        ),
      )
    );
  }

}