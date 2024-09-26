import 'package:office_task/utils/app_urls.dart';
import 'package:office_task/utils/app_colors.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({super.key});

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  List<Map> data = [
    {
      "itemName": "item #1 name goes here",
      "price": 19.99,
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "itemName": "item #1 name goes here",
      "price": 19.99,
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "itemName": "item #1 name goes here",
      "price": 19.99,
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "itemName": "item #1 name goes here",
      "price": 19.99,
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "itemName": "item #1 name goes here",
      "price": 19.99,
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
    {
      "itemName": "item #1 name goes here",
      "price": 19.99,
      "imageLink":
          "https://t3.ftcdn.net/jpg/04/60/01/36/360_F_460013622_6xF8uN6ubMvLx0tAJECBHfKPoNOR5cRa.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReuseableAppBar(
        titleText: 'Market',
        actionsButtonText: "Filter",
        leadingButtonText: "Back",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: 250,
                // color: greenColor,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2), color: greenColor),
                child: Center(
                  child: Container(
                    width: double.infinity - 20,
                    color: Colors.white,
                  ),
                ),
              ),
              // Container(
              //   height: 20,
              // ),
              // SizedBox(
              //   height: 50,
              //   child: TextField(
              //     decoration: InputDecoration(
              //         hintText: "   Search",
              //         hintStyle: TextStyle(color: Colors.grey),
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(30),
              //         )),
              //   ),
              // ),
              // Container(
              //   height: 20,
              // ),
              const Text(
                "Hot deals",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter'),
                textAlign: TextAlign.left,
              ),
              Container(
                height: 20,
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 110,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/frame.jpg',
                                height: 110,
                                width: 110,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              height: 5,
                            ),
                            Text(
                              data[index]["itemName"],
                              // style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 5,
                            ),
                            Text(
                              "\$${data[index]["price"]}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        width: 5,
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              const Text(
                "Trending",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
              Container(
                height: 20,
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 110,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/frame.jpg',
                                height: 110,
                                width: 110,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              height: 5,
                            ),
                            Text(
                              data[index]["itemName"],
                              // style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 5,
                            ),
                            Text(
                              "\$${data[index]["price"]}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        width: 5,
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              const Text(
                "Deals",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
              Container(
                height: 20,
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 110,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/frame.jpg',
                                height: 110,
                                width: 110,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              height: 5,
                            ),
                            Text(
                              data[index]["itemName"],
                              // style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 5,
                            ),
                            Text(
                              "\$${data[index]["price"]}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        width: 5,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomnavigationbarWidget(),
    );
  }
}
