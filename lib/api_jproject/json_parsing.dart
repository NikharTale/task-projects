// import 'package:flutter/material.dart';

// class JsonParsing extends StatefulWidget {
//   const JsonParsing({Key? key}) : super(key: key);

//   @override
//   _JsonParsingState createState() => _JsonParsingState();
// }

// class _JsonParsingState extends State<JsonParsing> {
//   late Future data;
//   @override
//   void initState() {
//     // ignore: todo
//     // TODO: implement initState
//     super.initState();
//     data = getData();
//   }

//   Future getData() async {
//     var data;
//     String url = "https://jsonplaceholder.typicode.com/posts";
//     Netwoek network = Netwoek(url);
//     data = network.fetchData();
//     // data.then((value) {
//     //   print(value[0]['title']);
//     // });
//     return data;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("Hello"),
//       ),
//       body: Center(
//         child: FutureBuilder(
//             future: getData(),
//             builder: (context, AsyncSnapshot snapshot) {
//               if (snapshot.hasData) {
//                 return createListView(snapshot.data, context);
//               } else {
//                 return const CircularProgressIndicator();
//               }
//             }),
//       ),
//     );
//   }

//   Widget createListView(List data, BuildContext contex) {
//     return Container(
//       height: 1500,
//       width: 1500,
//       child: ListView.builder(
//           itemCount: data.length,
//           itemBuilder: (context, int index) {
//             return Column(
//               // crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ListTile(
//                     title: Text("${data[index]['title']}"),
//                     subtitle: Text("${data[index]['body']}"),
//                     leading: Column(
//                       children: [
//                         CircleAvatar(
//                           backgroundColor: Colors.grey,
//                           radius: 23,
//                           child: Text('${data[index]['id']}'),
//                         )
//                       ],
//                     ))
//               ],
//             );
//           }),
//     );
//   }
// }

