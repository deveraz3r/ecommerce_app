import 'package:office_task/utils/app_urls.dart';
import 'package:office_task/utils/app_colors.dart';

class CongratulationsScreen extends StatefulWidget {
  const CongratulationsScreen({super.key});

  @override
  State<CongratulationsScreen> createState() => _CongratulationsScreenState();
}

class _CongratulationsScreenState extends State<CongratulationsScreen> {
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
              height: MediaQuery.of(context).size.height * 0.38,
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
                Text(
                  "Congratulations",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: 5,
                ),
                Text(
                  "Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. Consequat velit qui adipisicing sunt.",
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ReuseableElevatedbutton(buttonName: 'Click Me!'),
                ),
                Container(
                  height: 5,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ReusableTextbutton(
                    buttonName: "Secondary action",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
