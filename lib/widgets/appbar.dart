import 'package:flutter/material.dart';
import 'package:onestop_dev/globals/myColors.dart';
import 'package:onestop_dev/globals/myFonts.dart';
// TODO: Make profile picture clickable and redirect to QR
AppBar appBar(BuildContext context) {
  return AppBar(
    backgroundColor: kWhite,
    // actions: [
    //   Padding(
    //     padding: EdgeInsets.only(right:16),
    //     child: CircleAvatar(
    //       backgroundColor: Colors.blue[100],
    //       radius: 20,
    //       child: IconButton(
    //         icon: const Icon(Icons.notifications_outlined),
    //         color: kBlue,
    //         onPressed: () {},
    //       ),
    //     ),
    //   ),
    // ],
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){
            print("Yay");
            // Navigator.pushNamed(context, '/home');
          },
          child: CircleAvatar(
            child: IconButton(
              icon: const Icon(Icons.account_circle_outlined,color: kBlue,),
              onPressed: (){},
            ),
            backgroundColor: lBlue,
          ),
        ),
        RichText(
          text: TextSpan(
              text: 'One',
              style: MyFonts.extraBold.factor(4.39).letterSpace(1.0).setColor(kBlue),
              children: [
                TextSpan(
                  text: '.',
                  style: MyFonts.extraBold.factor(5.85).setColor(kYellow),
                )
              ]),
        ),
        CircleAvatar(backgroundColor:lBlue,child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined),color: kBlue,)),
      ],
    ),
    elevation: 0.0,
  );
}