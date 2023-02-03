import 'package:explore/models/home_page_model/common_column_model.dart';
import 'package:explore/pages/attention_page/attention_page.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

import '../../../styles/styles.dart';
import '../../pages.dart';

class CommonColumn extends StatelessWidget {
  List<CommonColumnModel> person = [
    CommonColumnModel(
        id: "1",
        image1: "assets/g1.jpg",
        name: "Wednesday",
        status1: "Online",
        time: "7:00pm"),
    CommonColumnModel(
        id: "2",
        image1: "assets/a2.jpg",
        name: "Aadams",
        status1: "Recently Online",
        time: "Today"),
    CommonColumnModel(
        id: "3",
        image1: "assets/a3.jpg",
        name: "jenna",
        status1: "Recently Online",
        time: "Today"),
    CommonColumnModel(
        id: "4",
        image1: "assets/a4.jpg",
        name: "Ricci",
        status1: "Offline",
        time: "Yesterday"),
    CommonColumnModel(
        id: "5",
        image1: "assets/a6.jpg",
        name: "Dia",
        status1: "Offline",
        time: "Yesterday"),
    CommonColumnModel(
        id: "6",
        image1: "assets/a2.jpg",
        name: "Bali",
        status1: "Offline",
        time: "One day ago"),
    CommonColumnModel(
        id: "7",
        image1: "assets/a1.jpg",
        name: "Thursday",
        status1: "Offline",
        time: "One month ago")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: person.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: AppColor.secondaryColor,
              radius: 27,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(person[index].image1),
              ),
            ),
            title: Text(
              (person[index].name),
              style: HeaderFonts.teritaryText,
            ),
            trailing: Text(person[index].time),
            subtitle: Text(person[index].status1),
            onTap: () {
              if (person[index].id == '1') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => FirstPage()));
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => AttentionPage()));
              }
            },
          );
        });
  }
}

// class CommonColumn extends StatelessWidget {
//   Query ref = FirebaseDatabase.instance.ref().child("donechat");

//   @override
//   Widget build(BuildContext context) {
//     return FirebaseAnimatedList(
//       query: ref,
//       itemBuilder: (BuildContext context, DataSnapshot snapshot,
//           Animation<double> animation, int index) {
//         Map donechat1 = snapshot.value as Map;
//         donechat1["key"] = snapshot.key;
//         return ListTile(
//           leading: CircleAvatar(
//             backgroundColor: AppColor.secondaryColor,
//             radius: 27,
//             child: CircleAvatar(
//               radius: 25,
//               backgroundImage: AssetImage("assets/g1.jpg"),
//             ),
//           ),
//           title: Text(
//             "Wednesday",
//             style: HeaderFonts.teritaryText,
//           ),
//           trailing: Text("7:00pm"),
//           subtitle: Text(donechat1['mes']),
//           onTap: () {
//             if (donechat1['id'] == '1') {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (BuildContext context) => FirstPage()));
//             } else {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (BuildContext context) => AttentionPage()));
//             }
//           },
//         );
//       },
//     );
//   }
// }
