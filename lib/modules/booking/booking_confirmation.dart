import 'package:elclasico_web/modules/booking/all_bookings.dart';
import 'package:elclasico_web/utilities/app_text.dart';
import 'package:elclasico_web/utilities/colors.dart';
import 'package:flutter/material.dart';

class BookingConfirmation extends StatefulWidget {
  const BookingConfirmation({Key? key}) : super(key: key);

  @override
  _BookingConfirmationState createState() => _BookingConfirmationState();
}

class _BookingConfirmationState extends State<BookingConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 370,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100, width: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/accept.png'))
                ),
              ),
              SizedBox(height: 20,),
              AppText.SubHeading(text: 'Booking Success', color: ThemeColors.blackColor, size: 18),
              SizedBox(height: 20,),
              ListTile(
                title: AppText.SubHeading(text: 'Booking Details', color: Colors.blueGrey, size: 15),
              ),
              ListTile(
                title: AppText.Content(text: 'Venue', color: Colors.blueGrey, size: 11),
                trailing: AppText.Content(text: 'Selaiyur', color: Colors.blueGrey, size: 11),
              ),
              ListTile(
                title: AppText.Content(text: 'Date', color: Colors.blueGrey, size: 11),
                trailing: AppText.Content(text: 'Thu, 27 June', color: Colors.blueGrey, size: 11),
              ),
              ListTile(
                title: AppText.Content(text: 'Slot', color: Colors.blueGrey, size: 11),
                trailing: AppText.Content(text: '7pm - 9pm', color: Colors.blueGrey, size: 11),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                  onTap:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> AllBookings()));
                  },
                  child: AppText.Content(text: 'View Booking', color: ThemeColors.red, decoration: TextDecoration.underline, decorationColor: ThemeColors.red, size: 11)),
              SizedBox(height: 20,),
              GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: AppText.Content(text: 'Back to home page', color: ThemeColors.blackColor, decoration: TextDecoration.underline, decorationColor: ThemeColors.blackColor, size: 11))

            ],
          ),
        ),
      ),
    );
  }
}
