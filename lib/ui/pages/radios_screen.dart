import 'package:office_task/utils/app_urls.dart';
import 'package:office_task/utils/app_colors.dart';

class RadiosScreen extends StatefulWidget {
  const RadiosScreen({super.key});

  @override
  State<RadiosScreen> createState() => _RadiosScreenState();
}

class _RadiosScreenState extends State<RadiosScreen> {
  List<Map> radioButtons = [
    {'desc': "Radio options here...", 'isChecked': true},
    {'desc': "Radio options here...", 'isChecked': false},
    {'desc': "Radio options here...", 'isChecked': true},
    {'desc': "Radio options here...", 'isChecked': false},
    {'desc': "Radio options here...", 'isChecked': false},
    {'desc': "Radio options here...", 'isChecked': true},
  ];
  bool groupvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReuseableAppBar(
        titleText: "User Options",
        leadingButtonText: "Back",
        actionsButtonText: "next",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: radioButtons.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(radioButtons[index]['desc'],
                        style: TextStyle(color: textGreyColor)),
                    trailing: IconButton(
                      icon: radioButtons[index]['isChecked']
                          ? Image.asset('assets/radio_checked.png')
                          : Image.asset('assets/radio_unchecked.png'),
                      onPressed: () {
                        setState(() {
                          radioButtons[index]['isChecked'] =
                              !radioButtons[index]['isChecked'];
                        });
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ReuseableElevatedbutton(
                buttonName: "I Love it",
                buttonOnPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RattingScreen()));
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
