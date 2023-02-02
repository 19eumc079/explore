import 'package:explore/models/home_page_model/common_column_model.dart';
import 'package:flutter/material.dart';

import '../../../styles/styles.dart';
import '../../pages.dart';

class CommonColumn extends StatelessWidget {
  const CommonColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => FirstPage()));
      },
    );
  }
}
