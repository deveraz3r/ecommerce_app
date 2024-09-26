import 'package:office_task/utils/app_urls.dart';
// import 'package:office_task/utils/app_colors.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  List<String> ImageAdress = [
    "assets/images/image_1.png",
    "assets/images/image_2.png",
    "assets/images/image_3.png",
    "assets/images/image_4.png",
    "assets/images/image_5.png",
    "assets/images/image_6.png",
    "assets/images/image_7.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReuseableAppBar(
        titleText: "Images",
        leadingButtonText: "Back",
        actionsButtonText: "Next",
      ),
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemCount: ImageAdress.length,
          itemBuilder: (context, index) {
            return Image.asset(
              ImageAdress[index],
              fit: BoxFit.cover,
            );
          },
        ),
      ),
      // bottomNavigationBar: BottomnavigationbarWidget(),
    );
  }
}
