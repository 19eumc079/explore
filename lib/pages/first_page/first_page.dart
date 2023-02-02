import 'package:explore/pages/first_page/first_page_components/chatbox.dart';
import 'package:explore/pages/home_page/home_page.dart';
import 'package:explore/styles/styles.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  final userMesController = TextEditingController();
  final userIdController = '1';
  late DatabaseReference ref;
  @override
  void initState() {
    ref = FirebaseDatabase.instance.ref().child('donechat');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 8, 8),
        appBar: AppBar(
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => MainPage()));
            },
          ),
          title: ListTile(
            leading: CircleAvatar(
              backgroundColor: AppColor.secondaryColor,
              radius: 27,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/g1.jpg'),
              ),
            ),
            title: Text(
              "WednesDay",
              style: HeaderFonts.secondaryText,
            ),
          ),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.more_vert_rounded))
          ],
          toolbarHeight: MediaQuery.of(context).size.height / 11,
          elevation: 0,
          backgroundColor: AppColor.teritaryColor,
        ),
        body: ChatBox(),
      ),
    );
  }
}
