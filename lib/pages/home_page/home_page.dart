import 'package:explore/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:explore/pages/pages.dart';

import '../../models/first_page_model/common_row_model.dart';
import 'home_page_components/common_row.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  List<CommonRowModel> name1 = [
    CommonRowModel(
        id: "2", name: "wed..", status1: "Online", image1: "assets/a1.jpg"),
    CommonRowModel(
        id: "3", name: "aadams", status1: "Online", image1: "assets/a2.jpg"),
    CommonRowModel(
        id: "4", name: "Jenna", status1: "Online", image1: "assets/a3.jpg"),
    CommonRowModel(
        id: "1", name: "Ricci", status1: "Offline", image1: "assets/a4.jpg"),
    CommonRowModel(
        id: "1", name: "Dia", status1: "Offline", image1: "assets/a6.jpg"),
    CommonRowModel(
        id: "1", name: "Bali", status1: "Online", image1: "assets/a2.jpg"),
    CommonRowModel(
        id: "1", name: "Wed..", status1: "Offline", image1: "assets/a1.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.teritaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Done Chat",
                style: HeaderFonts.quadinary,
              ),
            ),
            Text(
              "Explore your jutsu !!",
              style: HeaderFonts.primaryText,
            ),
            Container(
              margin: EdgeInsets.only(top: 70),
              height: MediaQuery.of(context).size.height / 6,
              child: CommonRow(
                name: name1,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    ListTile(
                      leading: Text(
                        "Chat Peoples",
                        style: HeaderFonts.teritaryText,
                      ),
                      trailing: CircleAvatar(
                          backgroundColor: AppColor.teritaryColor,
                          radius: 20,
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                              color: AppColor.secondaryColor,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          FirstPage()));
                            },
                          )),
                    ),

                    ///////List View
                    Expanded(
                      flex: 2,
                      child: ListTile(
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
                          style: HeaderFonts.teritaryText,
                        ),
                        trailing: Text("2:56pm"),
                        subtitle: Text("Recently online"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      FirstPage()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
