import 'package:office_task/utils/app_urls.dart';
import 'package:office_task/utils/app_colors.dart';

class RattingScreen extends StatefulWidget {
  const RattingScreen({super.key});

  @override
  State<RattingScreen> createState() => _RattingScreenState();
}

class _RattingScreenState extends State<RattingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: greenColor,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 32,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.star, color: Colors.amber, size: 32),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.star, color: Colors.amber, size: 32),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.star, color: Colors.amber, size: 32),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.star, color: Colors.amber, size: 32),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Rate our app",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. Consequat velit qui adipisicing sunt.",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(200, 102, 102, 102)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ReuseableElevatedbutton(
                      buttonName: "I love it",
                    )),
                SizedBox(
                  width: double.infinity,
                  child: ReusableTextbutton(
                      buttonName: "Don't like the app? Let us know!"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
