import 'package:flutter/material.dart';
import 'package:food_delivery/src/consts/theme_color.dart';
import 'package:food_delivery/src/login_screen/sign_in.dart';
import 'package:food_delivery/src/login_screen/signup_process.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgorundColor,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/pattern.png"))),
              ),
              Container(
                margin: EdgeInsets.all(110),
                width: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo_food.png"),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.4 - 50,
                left: MediaQuery.of(context).size.width * 0.3 - 20,
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 6,
                  /* margin: EdgeInsets.only(left: 100, right: 90, top: 250), */
                  child: Column(
                    children: [
                      Text(
                        "Food Ninja",
                        style: TextStyle(
                            color: kGreenColor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Deliver Favorite Food",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      SizedBox()
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2),
                height: MediaQuery.of(context).size.height / 2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Sign Up For Free",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.only(right: 25, left: 25),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 3 + 70,
                          child: Form(
                              child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Aditya",
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: kGreenColor,
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                              SizedBox(height: 10),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Email",
                                    prefixIcon: Icon(
                                      Icons.mail,
                                      color: kGreenColor,
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                              SizedBox(height: 10),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: kGreenColor,
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      50,
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      "Create Account",
                                      style: TextStyle(
                                          color: kTextColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: kGreenColor,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return SignUpProcess();
                                      },
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                child: Text(
                                  "already have an account?",
                                  style: TextStyle(
                                      color: kGreenColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return SignIn();
                                  }));
                                },
                              )
                            ],
                          )),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
