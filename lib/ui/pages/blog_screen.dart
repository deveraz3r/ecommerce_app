import 'package:office_task/utils/app_urls.dart';
import 'package:office_task/utils/app_colors.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  Map data = {
    "title": "Post Title Here...",
    "author": "Author",
    "desc":
        "Labore sunt veniam amet est. Minim nisi dolor eu ad incididunt cillum elit ex ut. Dolore exercitation nulla tempor consequat aliquip occaecat. Nisi id ipsum irure aute. Deserunt sit aute irure quis nulla eu consequat fugiat Lorem sunt magna et consequat labore. Laboris incididunt id Lorem est duis deserunt nisi dolore eiusmod culpa exercitation consectetur. Fugiat do aliqua laboris cillum sint dolor officia adipisicing excepteur fugiat officia. Cupidatat ut elit consequat ea laborum occaecat laborum aute consectetur Lorem exercitation. Lorem anim minim officia aliquip commodo deserunt mollit. Duis deserunt quis cillum voluptate duis ipsum quis incididunt elit excepteur excepteur labore duis cillum. Voluptate sint nulla minim eiusmod in nulla. Ea id ad duis esse adipisicing culpa ex esse ea dolore consequat. Reprehenderit eu minim veniam aliquip do ipsum duis do qui adipisicing aliquip ad occaecat. Enim reprehenderit sunt do do. Ex fugiat nisi sit anim culpa nisi. Non labore fugiat culpa magna. Commodo esse Lorem ex duis do et do. Est laboris cupidatat ad est anim adipisicing sit labore do dolor officia. Fugiat consequat in excepteur reprehenderit id aliquip voluptate sint enim proident aliquip occaecat quis non. Ad nulla aliqua est amet aliqua sint est occaecat amet sunt. Ullamco laborum qui sint officia officia ad Lorem culpa minim voluptate occaecat id duis esse. Ullamco sunt magna consectetur excepteur. Id cupidatat proident ex ad elit laboris. Nulla aute sit occaecat laboris. Laboris minim aliquip exercitation elit commodo ipsum et fugiat sit anim laborum proident cillum laboris. Et cillum tempor esse sit anim et veniam. Tempor magna irure ex ea id fugiat. Ex eu sint tempor quis exercitation amet ut deserunt sit fugiat aliquip nostrud nulla. Eu sunt laborum elit consectetur tempor sunt dolore in sunt reprehenderit voluptate dolore adipisicing. Proident eiusmod reprehenderit quis sint exercitation voluptate non labore. Sunt non sint in Lorem occaecat dolore tempor ipsum et proident sit Lorem ipsum officia.",
    "imageLocation": "assets/frame.jpg",
  };

  @override
  Widget build(BuildContext context) {
    final deviceInfo = MediaQuery.of(context);
    double h = deviceInfo.size.height;
    double w = deviceInfo.size.width;
    return Scaffold(
      appBar: ReuseableAppBar(
          titleText: "Blog",
          enableActionButton: false,
          enableLeadingButton: false),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: w * 0.05,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10,
              ),
              Image.asset(
                data['imageLocation'],
                fit: BoxFit.fitWidth,
                // height: MediaQuery.of(context).size.height * 0.40,
                width: double.infinity,
              ),
              Container(
                height: h * 0.02,
              ),
              Text(
                data["title"],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Container(
                height: 5,
              ),
              Text(
                data['author'],
                style: TextStyle(fontSize: 16),
              ),
              Container(
                height: 20,
              ),
              Text(
                data['desc'],
                style: TextStyle(fontSize: 16, color: blogTextGreyColor),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomnavigationbarWidget()
    );
  }
}
