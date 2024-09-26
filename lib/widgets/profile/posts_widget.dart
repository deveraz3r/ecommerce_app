import 'package:flutter/material.dart';

class PostsWidget extends StatefulWidget {
  const PostsWidget({super.key});

  @override
  State<PostsWidget> createState() => _PostsWidgetState();
}

class _PostsWidgetState extends State<PostsWidget> {
  List<Map> data = [
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: data.length,
        itemBuilder: (context, item) {
          return ListTile(
            title: Text(data[item]['title']),
            subtitle: Text(data[item]['subTitle']),
            leading: Image.network(data[item]['imageLink']),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
