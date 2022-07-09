import 'package:elclasico_web/utilities/app_text.dart';
import 'package:elclasico_web/widgets/booking_card.dart';
import 'package:flutter/material.dart';

import '../../utilities/colors.dart';

class AllBookings extends StatefulWidget {
  const AllBookings({Key? key}) : super(key: key);

  @override
  _AllBookingsState createState() => _AllBookingsState();
}

class _AllBookingsState extends State<AllBookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ThemeColors.whiteColor,
        child: Center(
          child: Container(
            width: 370,
            height: MediaQuery.of(context).size.height,
            color: ThemeColors.whiteColor,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [

                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.keyboard_backspace_rounded, color: Colors.blueGrey,)),
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.help, color: Colors.blueGrey,)),
                  ],
                ),
                SizedBox(height: 15,),
                AppText.SubHeading(text: 'My Bookings', color: ThemeColors.blackColor, size: 16),
                SizedBox(height: 15,),
                ListView.separated(
                  shrinkWrap: true,
                    itemCount: 5,
                    separatorBuilder: (cxt,int){
                    return const SizedBox(height: 10,);
                    },
                    itemBuilder: (cxt,int){
                  return const BookingCard();
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
