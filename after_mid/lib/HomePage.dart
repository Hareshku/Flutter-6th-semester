import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List? users;
  Future<String> fetchData() async {
    // final url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    try {
      var data = await http.get(url);
      users = json.decode(data.body.toString());
      print(users);
      return "success";
    } catch (e) {
      print(e);
      return "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else {
              return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: users?.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(
                        "${users?[index]["title"]}",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text("${users?[index]["body"]}"),
                      // leading:  Text("${users?[index]["id"]}"),
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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'),
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
