import 'package:flutter/material.dart';
import 'package:explore/styles/styles.dart';

class AttentionPage extends StatefulWidget {
  const AttentionPage({super.key});

  @override
  State<AttentionPage> createState() => _AttentionPageState();
}

class _AttentionPageState extends State<AttentionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.teritaryColor,
      body: InkWell(
        onDoubleTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Image.network(
            "https://media.giphy.com/media/qkJw3qIp92QbRBkhNj/giphy.gif",
            height: 190,
          ),
        ),
      ),
    );
  }
}
