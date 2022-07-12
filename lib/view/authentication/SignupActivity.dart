import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:immence/view/authentication/LoginActivity.dart';

class SignupActivity extends StatefulWidget {
  const SignupActivity({Key? key}) : super(key: key);

  @override
  State<SignupActivity> createState() => _SignupActivityState();
}

class _SignupActivityState extends State<SignupActivity> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.fromLTRB(25, 60, 25, 20),
                child: Text(
                  "immence",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color(0xFF0231C8)),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 25),
                child: Text(
                  "Create an account",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
                child: emailWidget(context),
              ),
               Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
                child: phoneNumberWidget(context),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
                child: passwordWidget(context),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
                child: rememberMeBoxWidget(context),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
                child: loginButtonWidget(context),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: signupWidget(context),
            ),
          )
        ],
      ),
    );
  }
  
  Widget emailWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Email",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFF0231C8)),
        ),
        const SizedBox(
          height: 7,
        ),
        SizedBox(
          height: 41,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: "Enter your email",
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF9E9E9E)),
            ),
          ),
        )
      ],
    );
  }
  Widget phoneNumberWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Phone Number",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFF0231C8)),
        ),
        const SizedBox(
          height: 7,
        ),
        SizedBox(
          height: 41,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: "Enter your phone number",
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF9E9E9E)),
            ),
          ),
        )
      ],
    );
  }

  Widget passwordWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Password",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFF0231C8)),
        ),
        const SizedBox(
          height: 7,
        ),
        SizedBox(
          height: 41,
          child: TextFormField(
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.visibility,
                size: 18,
                color: Colors.black,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: "Please Enter Your Password",
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF9E9E9E)),
            ),
          ),
        )
      ],
    );
  }

  Widget rememberMeBoxWidget(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: this.value,
          checkColor: Colors.black,
          onChanged: (value) {
            setState(() {
              this.value = value!;
            });
          },
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "Remember Me",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFF000C14)),
        ),
      ],
    );
  }

  Widget loginButtonWidget(BuildContext context) {
    return TextButton(
        onPressed: () {
          print("login");
        },
        child: Container(
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF0231C8)),
          child: const Center(
              child: Text("Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Colors.white))),
        ));
  }

  Widget signupWidget(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Login");
        Navigator.pop(context);
      },
      child: SizedBox(
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Already have an account ? ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF999EA1))),
            SizedBox(
              width: 5,
            ),
            Text("Login",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xFF0231C8)))
          ],
        ),
      ),
    );
  }
}