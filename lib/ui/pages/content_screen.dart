import 'package:office_task/utils/app_urls.dart';
import 'package:office_task/utils/app_colors.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({super.key});

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {

  List<Map> data = [
    {
      "title": "News",
      "time": "5m ago",
      "subTitle": "Breaking news: Major event happening right now!",
      "imageLink": "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    },
    {
      "title": "Sports",
      "time": "10m ago",
      "subTitle": "Exciting match results are in, check it out!",
      "imageLink": "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Entertainment",
      "time": "20m ago",
      "subTitle": "New movie release breaking box office records.",
      "imageLink": "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Technology",
      "time": "15m ago",
      "subTitle": "Latest tech trends you need to know.",
      "imageLink": "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Health",
      "time": "30m ago",
      "subTitle": "Tips for maintaining a healthy lifestyle.",
      "imageLink": "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Finance",
      "time": "40m ago",
      "subTitle": "Stock market updates and analysis.",
      "imageLink": "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Travel",
      "time": "50m ago",
      "subTitle": "Top destinations to visit this year.",
      "imageLink": "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "title": "Education",
      "time": "1h ago",
      "subTitle": "New learning methods revolutionizing education.",
      "imageLink": "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg",
    },
    {
      "title": "Weather",
      "time": "2h ago",
      "subTitle": "Forecast for the week ahead.",
      "imageLink": "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
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
                    fillColor: textFeildBackgroundColor,
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
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlogScreen()));
                        },
                        child: Image.network(
                          data[index]['imageLink'],
                          fit: BoxFit.cover,
                          height: 200,
                        ),
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
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomnavigationbarWidget(),
    );
  }
}
