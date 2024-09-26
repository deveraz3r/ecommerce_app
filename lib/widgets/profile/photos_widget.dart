import 'package:flutter/material.dart';

class PhotosWidget extends StatefulWidget {
  const PhotosWidget({super.key});

  @override
  State<PhotosWidget> createState() => _PhotosWidgetState();
}

class _PhotosWidgetState extends State<PhotosWidget> {
  List<Map> data = [
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLocation": "assets/frame.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLocation": "assets/frame.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLocation": "assets/frame.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLocation": "assets/frame.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLocation": "assets/frame.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLocation": "assets/frame.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLocation": "assets/frame.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLocation": "assets/frame.jpg",
    },
    {
      "title": "Header",
      "time": "8m ago",
      "subTitle":
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      "imageLocation": "assets/frame.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                data[index]['imageLocation'],
                fit: BoxFit.fitWidth,
                width: double.infinity,
                // height: 200,
              ),
              Container(
                height: 5,
              ),
              Text(
                data[index]["title"],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                height: 5,
              ),
              Text(
                data[index]["subTitle"],
              ),
              Container(
                height: 5,
              ),
              Text(
                data[index]["time"],
                style: TextStyle(color: Colors.grey),
              ),
            ],
          );
        },
      ),
    );
  }
}
