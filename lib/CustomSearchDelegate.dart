import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, "");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> list = [];
    if (query.isNotEmpty) {
      list = [
        "Android",
        "Android development",
        "Canva",
        "Dart",
        "Flutter",
        "Genymotion",
        "React Native",
        "Javascript"
      ]
          .where((text) => text.toLowerCase().startsWith(query.toLowerCase()))
          .toList();

      return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              close(context, list[index]);
            },
            title: Text(list[index]),
          );
        },
      );
    } else {
      return Center(
        child: Text(
          "Nenhum resultado para essa pesquisa",
        ),
      );
    }
    // return Container();
  }
}
