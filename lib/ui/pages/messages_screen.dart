import 'package:office_task/utils/app_urls.dart';
import 'package:office_task/utils/app_colors.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  TextEditingController _messagesController = TextEditingController();
  List<Map> messages = [
    {'message': "this is my message", 'time': DateTime.now(), 'isSent': true},
    {
      'message': "this is your message 🌎🌎",
      'time': DateTime.now(),
      'isSent': false
    },
    {
      'message': "this is my message 2222222",
      'time': DateTime.now(),
      'isSent': true
    },
    {
      'message': "this is your message 22222222222",
      'time': DateTime.now(),
      'isSent': false
    },
  ];

  void sendMessage({required String message}) {
    Map newMessage = {
      'message': message,
      'time': DateTime.now(),
      'isSent': true,
    };

    setState(() {
      _messagesController.clear();
      messages.add(newMessage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReuseableAppBar(
        titleText: "Messages",
        leadingButtonText: "Back",
        actionsButtonText: "Filter",
        leadingOnPressed: () {},
        actionsOnPressed: () {},
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: messages[index]['isSent']
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.start,
                    children: [
                      Card(
                        child: Container(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.6),
                            // alignment: messages[index]['isSent']
                            //     ? Alignment.centerRight
                            //     : Alignment.centerLeft,
                            padding: EdgeInsets.all(10),
                            // width: MediaQuery.of(context).size.width * 0.6,
                            // width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: messages[index]['isSent']
                                  ? greenColor
                                  : Color.fromARGB(150, 196, 196, 196),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  messages[index]['message'],
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: messages[index]['isSent']
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${messages[index]['time'].hour}:${messages[index]['time'].minute}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: messages[index]['isSent']
                                          ? Colors.white70
                                          : Colors.blueGrey),
                                ),
                              ],
                            )),
                      )
                    ],
                  );
                },
                separatorBuilder: (contex, index) {
                  return Container(
                    height: 20,
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextField(
                controller: _messagesController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(150, 230, 230, 230),
                  hintText: " Message here...",
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: IconButton(
                      onPressed: () {
                        sendMessage(message: _messagesController.text);
                      },
                      icon: Image.asset('assets/Send.png')),
                  suffixIconColor: greenColor,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
