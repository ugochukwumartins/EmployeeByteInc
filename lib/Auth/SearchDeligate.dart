import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final RecentSearch = ["Smart Tv", "Phones", "Laptops", "Bags"];
  final Products = [
    "Smart Tv",
    "Phones",
    "Laptops",
    "Bags",
    "Mp3",
    "Printers",
    "Fans",
    "Shoes",
    "Tables",
    "Lands",
    "Services",
    "Generators",
    "Watches",
    "Inverters",
    "Foods"
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        onPressed: () {
          query = " ";
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Card(
        child: Text(query.toString()),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggesstions = query.isEmpty
        ? RecentSearch
        : Products.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            showResults(context);
          },
          leading: Icon(Icons.local_airport_sharp),
          title: Text(suggesstions[index].toString()),
        );
      },
      itemCount: suggesstions.length,
    );
  }
}
