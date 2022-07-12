import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserinfoActivity extends StatefulWidget {
  const UserinfoActivity({Key? key}) : super(key: key);

  @override
  State<UserinfoActivity> createState() => _UserinfoActivityState();
}

class _UserinfoActivityState extends State<UserinfoActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 20),
            child: Center(
              child: CircleAvatar(
                maxRadius: 70,
                backgroundColor: Color.fromRGBO(2, 49, 200, 0.05),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/icon/logo.svg",
                    height: 68,
                    width: 71,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
            child: Text(
              "John Doe ",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color(0xFF0231C8)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          infoWidget(context)
        ],
      ),
    );
  }

  Widget infoWidget(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 25, bottom: 10),
              child: Text(
                "Email",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 25, bottom: 10),
              child: Text(
                "johndoe@immence.com",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xFF0231C8)),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 0.9,
          color: Color(0xFFCDD1E0),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 25, bottom: 10),
              child: Text(
                "Phone No.",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 25, bottom: 10),
              child: Text(
                "+91 8200237575",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xFF0231C8)),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 0.9,
          color: Color(0xFFCDD1E0),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25, bottom: 10),
              child: Text(
                "Log out",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 25, bottom: 10),
              child: SvgPicture.asset(
                "assets/icon/logout.svg",
                height: 25,
                width: 20,
              ),
            ),
          ],
        ),
        Divider(
          thickness: 0.9,
          color: Color(0xFFCDD1E0),
        ),
        SizedBox(
          height: 25,
        )
      ],
    );
  }
}
