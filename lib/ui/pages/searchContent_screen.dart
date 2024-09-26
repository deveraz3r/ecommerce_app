import 'package:office_task/utils/app_urls.dart';
import 'package:office_task/utils/app_colors.dart';

class SearchContentScreen extends StatefulWidget {
  const SearchContentScreen({super.key});

  @override
  State<SearchContentScreen> createState() => _SearchContentScreen();
}

class _SearchContentScreen extends State<SearchContentScreen> {
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

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReuseableAppBar(
        titleText: "Content",
        leadingButtonText: "Back",
        actionsButtonText: "Filter",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                    hintText: "   Search",
                    hintStyle: TextStyle(color: textGreyColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            Container(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]['title']),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomnavigationbarWidget(),
    );
  }
}
