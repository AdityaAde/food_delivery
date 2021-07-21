import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/src/consts/theme_color.dart';
import 'package:food_delivery/src/onboarding/onboarding2.dart';

class OnboardSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: MediaQuery.of(context).size.height / 2 + 100,
              child: SvgPicture.asset('assets/images/onboard1.svg')),
          SizedBox(height: 20),
          Text(
            "Find your Comfort \n Food here",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(
            "Here You Can find a chef or dish for every \n taste and color. Enjoy!",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 35),
          InkWell(
              child: Container(
                width: 120,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: kColorIcon, borderRadius: BorderRadius.circular(15)),
                height: 50,
                child: Center(
                    child: Text(
                  "Next",
                  style: TextStyle(color: kTextColor),
                )),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return OnBoardingDua();
                }));
              })
        ],
      ),
    );
  }
}
