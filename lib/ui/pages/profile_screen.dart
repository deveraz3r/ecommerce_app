import 'package:office_task/utils/app_colors.dart';
import 'package:office_task/utils/app_urls.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Map accountData = {
    'title': "Victoria Robertson",
    'subtitle': "A mantra goes here",
    'imageLocation': "assets/photo-2.png",
  };
  List<bool> _toggleTabs = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReuseableAppBar(
        titleText: 'Profile',
        actionsButtonText: "Login",
        leadingButtonText: "Setting",
        leadingOnPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RadiosScreen()));
        },
        actionsOnPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
      ),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("Profile",
      //       style: TextStyle(
      //         fontWeight: FontWeight.w800,
      //         fontSize: 30,
      //       )),
      //   leadingWidth: 75,
      //   leading: Container(
      //     width: 40,
      //     child: TextButton(
      //       onPressed: () {
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => RadiosScreen()));
      //       },
      //       child: Text(
      //         "Setting",
      //         overflow: TextOverflow.visible,
      //         maxLines: 1,
      //         style: TextStyle(
      //           color: Colors.green,
      //         ),
      //       ),
      //     ),
      //   ),
      //   actions: [
      //     TextButton(
      //       onPressed: () {
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => LoginScreen()));
      //       },
      //       child: Text(
      //         "LogIn",
      //         style: TextStyle(
      //           color: Colors.green,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            color: greenColor,
            height: MediaQuery.of(context).size.height * 0.22,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.40,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "Drawer Header",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color:
                                            Color.fromARGB(200, 102, 102, 102)),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Click Me"),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: greenColor,
                                        foregroundColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      width: double.infinity,
                                      child: ReusableTextbutton(
                                          buttonName: "Secondary Action")),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.20,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.19,
                      backgroundImage: AssetImage(
                        accountData['imageLocation'],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  accountData['title'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Container(
                  height: 5,
                ),
                Text(
                  accountData['subtitle'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Container(
                  height: 10,
                ),
                ToggleButtons(
                    borderRadius: BorderRadius.circular(30),
                    selectedColor: greenColor,
                    onPressed: (int index) {
                      setState(() {
                        for (int i = 0; i < _toggleTabs.length; i++) {
                          if (i == index) {
                            _toggleTabs[i] = true;
                          } else {
                            _toggleTabs[i] = false;
                          }
                        }
                      });
                    },
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Center(child: Text("Posts")),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Center(child: Text("Photos")),
                      )
                    ],
                    isSelected: _toggleTabs),
                Container(
                  height: 10,
                ),
                _toggleTabs[0] ? PostsWidget() : PhotosWidget(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ExpensesScreen()));
        },
        child: Icon(
          Icons.monetization_on,
          color: Colors.white,
        ),
        backgroundColor: greenColor,
      ),
      // bottomNavigationBar: BottomnavigationbarWidget(),
    );
  }
}
