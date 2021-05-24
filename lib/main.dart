// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//   debugShowCheckedModeBanner:false,
//   theme: ThemeData(
//     brightness: Brightness.light,
//     primaryColor:Colors.orange
//    ),
//    home: MyApp(),
// ));

// class MyApp extends StatefulWidget{
//   @override 
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp>{
//   // ignore: deprecated_member_use
//   List todos = List();
//   String input = "";
//   @override
//   void initState(){
//     super.initState();
//     todos.add("Itme1");
//     todos.add("Itme2");
//     todos.add("Itme3");
//     todos.add("Itme4");

//   }
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("mytodos"),
//       ),
//       floatingActionButton:  FloatingActionButton(onPressed: () {
//         showDialog(
//           context: context, 
//           builder: (BuildContext context){
//             return AlertDialog(
//               title: Text("Add Todolist"),
//               content: TextField(
//                 onChanged: (String value){
//                   input = value;
//                 },
//               ),
//               actions: <Widget>[
//                 // ignore: deprecated_member_use
//                 FlatButton(onPressed: (){
//                   setState(() {
//                     todos.add(input);
//                   });          
//                 }, child: Text("Add")
//                 )
//               ],
//             );

//           });

//       },
//       child: Icon(Icons.add, color:Colors.white),),

//       body: ListView.builder(itemCount: todos.length ,
//       // ignore: missing_return
//       itemBuilder: (BuildContext context, int index){
//         return Dismissible(key: Key(todos[index]),       // ignore: unused_label
//         child: Card(
//           margin: EdgeInsets.all(8),
//           elevation: 4,
//           shape: RoundedRectangleBorder(borderRadius:
//           BorderRadius.circular(16)
//           ),
//           child: ListTile(
//             title: Text(todos[index]),
//             trailing: IconButton(
//               icon: Icon(
//               Icons.delete,
//                color:Colors.red,
//                ), 
//                onPressed: (){
//                  setState(() {
//                    todos.removeAt(index);
//                  });
//             }, ),
//             ),
//         )
//         );
//       }),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Circle Avatar';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            // buildMinMaxAvatar(),
            // CircleAvatar(
            //   radius: 80,
            //   child: CircleAvatar(
            //     backgroundColor: Colors.cyan[100],
            //     radius: 78,
            //   ),
            // ),
            buildListTile(
              title: 'Malik',

            ),
            buildListTile( title: 'Nabila',),
            buildListTile(title: 'Lala',),
            buildListTile(title: 'Asma'),
             buildListTile(title: 'Lara'),
              buildListTile(title: 'Nana'),
               buildListTile(title: 'Khea'),
          ],
        ),
      );

  Widget buildListTile({
    @required String title,
    ImageProvider image,
  }) =>
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: Colors.cyan[100],
          
          foregroundColor: Colors.white,
          radius: 48,
        
          child:  Text(
                  title[0].toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                )
       
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );

  
}
