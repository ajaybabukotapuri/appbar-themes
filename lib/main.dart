import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AJAY BABU' ,
      theme: ThemeData(
          primarySwatch: Colors.indigo
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState()=> _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50)
                )
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text("HI AJAY BABU", style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white
                  ),),
                  subtitle: Text('GOOD MRNG', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white54
                  ),),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("image/1000_F_308697506_9dsBYHXm9FwuW0qcEqimAEXUvzTwfzwe.jpg"),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100)
                  )
              ),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount:2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashbord('videos', CupertinoIcons.play_rectangle, Colors.deepOrange),
                  itemDashbord('Analytics', CupertinoIcons.graph_circle, Colors.green),
                  itemDashbord('Audience', CupertinoIcons.person_2, Colors.purple),
                  itemDashbord('Comments', CupertinoIcons.chat_bubble, Colors.brown),
                  itemDashbord('Revenue', CupertinoIcons.money_dollar_circle, Colors.indigo),
                  itemDashbord('Upload', CupertinoIcons.add_circled, Colors.teal),
                  itemDashbord('About', CupertinoIcons.question_circle, Colors.blue),
                  itemDashbord('Contact', CupertinoIcons.phone, Colors.pinkAccent),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
  itemDashbord(String title, IconData iconData, Color background) => Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 5),
              color: Theme.of(context).primaryColor.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 5
          )
        ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: background,
              shape: BoxShape.circle
          ),
          child: Icon(iconData, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(title,style: Theme.of(context).textTheme.titleMedium,)
      ],
    ),
  );
}
