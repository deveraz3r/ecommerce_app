import 'package:office_task/utils/app_urls.dart';
import 'package:office_task/utils/app_colors.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
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
    return Scaffold(
      appBar: ReuseableAppBar(
        titleText: "Feed",
        leadingButtonText: "Back",
        actionsButtonText: "Filter",
      ),
      body: Column(
        children: [
          Container(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 343,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search bar",
                hintStyle: TextStyle(color: textGreyColor),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          Container(
            height: 10,
          ),
          Expanded(
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
          ),
          Container(
            height: 10,
          ),
          Image.asset(
            "assets/frame.jpg",
            fit: BoxFit.fill,
            height: 200,
            width: double.infinity,
          )
        ],
      ),
      // bottomNavigationBar: BottomnavigationbarWidget(),
    );
  }
}
