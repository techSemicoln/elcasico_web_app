import 'package:elclasico_web/modules/booking/booking_page.dart';
import 'package:elclasico_web/utilities/app_text.dart';
import 'package:flutter/material.dart';

import '../utilities/colors.dart';

class VenueCard extends StatefulWidget {
  const VenueCard({Key? key}) : super(key: key);

  @override
  _VenueCardState createState() => _VenueCardState();
}

class _VenueCardState extends State<VenueCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> BookingPage()));
      },


      child: Center(
        child: Card(
          elevation: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(
                vertical: 15, horizontal: 15
            ),
            decoration: BoxDecoration(
              color: ThemeColors.whiteColor,
              borderRadius: BorderRadius.circular(5),
            ),
            //height: 225,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/logo_without bg.png'))
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.SubHeading(text: 'Selaiyur'),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 20, width: 20,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/cricket.png'))
                              ),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              height: 20, width: 20,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/football.png'))
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.access_time, color: ThemeColors.secondaryColor, size: 10,),
                            SizedBox(width: 5,),
                            AppText.Content(text: '5pm - 6pm', size: 10),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText.SubHeading( text: "₹", color: ThemeColors.secondaryColor, size: 10,),
                            SizedBox(width: 5,),
                            AppText.Content(text: '5pm - 6pm', size: 10),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Colors.blueGrey,
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: ThemeColors.lightBlue,
                      border: Border.all(color: ThemeColors.highlightColor, width: 1)
                  ),
                  child: Center(
                    child: AppText.Heading(text: 'Flat ₹100', color: ThemeColors.highlightColor),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
