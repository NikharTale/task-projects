import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'api_model_class.dart';

class ApiProject extends StatefulWidget {
  const ApiProject({Key? key}) : super(key: key);

  @override
  _ApiProjectState createState() => _ApiProjectState();
}

class _ApiProjectState extends State<ApiProject> {
  late Future<PostList> data;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Netwoek network = Netwoek("https://jsonplaceholder.typicode.com/posts");
    data = network.fetData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("api project"),
      ),
      body: Center(
        child: FutureBuilder<PostList>(
            future: data,
            builder: (context, AsyncSnapshot<PostList> snapshot) {
              List<Post> allPosts;
              if (snapshot.hasData) {
                allPosts = snapshot.data!.posts;
                return createListView(allPosts, context);
              } else {
                return const CircularProgressIndicator();
              }
            }),
      ),
    );
  }

  Widget createListView(List data, BuildContext contex) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, int index) {
          return InkWell(
            onTap: () {},
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Divider(
                  height: 5.0,
                ),
                ListTile(
                    title: Text("${data[index].title}"),
                    subtitle: Text("${data[index].body}"),
                    leading: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 23,
                          child: Text('${data[index].id}'),
                        )
                      ],
                    ))
              ],
            ),
          );
        });
  }
}

class Netwoek {
  final String url;
  Netwoek(this.url);

  Future<PostList> fetData() async {
    final response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return PostList.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
