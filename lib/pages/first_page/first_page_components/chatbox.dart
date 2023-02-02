import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:explore/styles/styles.dart';
import 'package:explore/pages/pages.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({super.key});

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  final userMesController = TextEditingController();
  final userIdController = '1';
  late DatabaseReference ref;
  @override
  void initState() {
    ref = FirebaseDatabase.instance.ref().child('donechat');
  }

////
  Query dbref = FirebaseDatabase.instance.ref().child("donechat");
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child("donechat");

  ///
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          flex: 2,
          child: FirebaseAnimatedList(
            controller: _scrollController,
            query: ref,
            itemBuilder: (BuildContext context, DataSnapshot snapshot,
                Animation<double> animation, int index) {
              Map donechat = snapshot.value as Map;

              // WidgetsBinding.instance.addPostFrameCallback((_) {
              //   if (_scrollController.hasClients) {
              //     _scrollController.jumpTo(
              //       _scrollController.position.maxScrollExtent,
              //     );
              //   } else {}
              // });
              donechat["key"] = snapshot.key;
              if (donechat['id'] != '0') {
                return ListTile(
                  trailing: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: AppColor.teritaryColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: InkWell(
                        child: Text(
                          donechat['mes'],
                          style: HeaderFonts.secondaryText,
                        ),
                        onLongPress: () {
                          reference.child(donechat['key']).remove();
                        },
                      ),
                    ),
                  ),
                );
              } else {
                return ListTile(
                  leading: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: AppColor.secondaryColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: InkWell(
                        child: Text(
                          donechat['mes'],
                          style: HeaderFonts.teritaryText,
                        ),
                        onLongPress: () {
                          reference.child(donechat['key']).remove();
                        },
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              height: MediaQuery.of(context).size.height / 18,
              width: MediaQuery.of(context).size.width / 1.3,
              child: TextField(
                controller: userMesController,
                style: TextStyle(color: TextColor.teritaryColor, fontSize: 20),
                decoration: InputDecoration(
                    fillColor: AppColor.secondaryColor,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: Icon(Icons.emoji_emotions_outlined),
                    hintText: "Expore your jutsu...."),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: InkWell(
                child: CircleAvatar(
                  backgroundColor: TextColor.teritaryColor,
                  child: Icon(
                    Icons.send,
                    color: TextColor.secondaryColor,
                  ),
                  radius: 25,
                ),
                onTap: () {
                  _scrollController.animateTo(
                      _scrollController.position.maxScrollExtent,
                      duration: Duration(microseconds: 300),
                      curve: Curves.easeOut);
                  Map<String, String> data = {
                    'mes': userMesController.text,
                    'id': userIdController,
                  };

                  ref.push().set(data);
                  userMesController.clear();
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
