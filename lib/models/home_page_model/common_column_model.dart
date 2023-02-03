import 'dart:ui';

import 'package:explore/models/home_page_model/home_page_model.dart';
import 'package:firebase_database/firebase_database.dart';

class CommonColumnModel {
  String id;
  String image1;
  String name;
  String status1;
  String time;
  CommonColumnModel({
    required this.id,
    required this.image1,
    required this.name,
    required this.status1,
    required this.time,
  });
}
