import 'package:elclasico_web/modules/booking/booking_confirmation.dart';
import 'package:elclasico_web/utilities/app_text.dart';
import 'package:elclasico_web/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  bool isClicked = false;
  Color _textColor = Colors.black;
  Color _appBarColor = Color.fromRGBO(36, 41, 46, 1);
  Color _scaffoldBgcolor = Colors.white;
  bool isAm = false;
  isSwitch(){
    isAm = !isAm;
    initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        width: 370,
        color: ThemeColors.whiteColor,
        child: Container(
          child: Center(
          child: Container(
            height: 60,
            width: 370,
            color: ThemeColors.red,
            padding: EdgeInsets.symmetric(
              horizontal: 7
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.Content(text: 'Selected Slot', color: ThemeColors.whiteColor, size: 9),
                    AppText.Content(text: '7pm - 9pm', color: ThemeColors.whiteColor),
                  ],
                ),
                GestureDetector(
                 onTap: (){
                    showDialog(context: context,
                        builder: (BuildContext cxt){
                      return AlertDialog(
                        actionsPadding: EdgeInsets.only(bottom: 10, right: 20),
                        title: AppText.Content(text: 'Are you sure you want to book this slot(s)?', fontWeight: FontWeight.bold, size: 13, color: ThemeColors.blackColor),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppText.Content(text: 'Slot Details', size: 11, decoration: TextDecoration.underline),
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
                          ],
                        ),
                        actions: [
                          GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: AppText.SubHeading(text: 'Cancel', size: 13, color: Colors.blueGrey)),
                          SizedBox(width: 30,),
                          GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BookingConfirmation()));
                          },
                              child: AppText.SubHeading(text: 'Yes, Confirm', fontWeight: FontWeight.bold, size: 13, color: ThemeColors.highlightColor))
                        ],
                      );
                        });
                 },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppText.SubHeading(text: 'Confirm Booking', color: ThemeColors.whiteColor),
                      Icon(
                        Icons.arrow_right, color: ThemeColors.whiteColor, size: 12,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          ),
        ),
      ),
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
                        child: const Icon(Icons.keyboard_backspace_sharp, color: Colors.blueGrey,)),
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.settings, color: Colors.blueGrey,)),
                  ],
                ),
                SizedBox(height: 10,),
                AppText.SubHeading(text: 'El Clasico, Selaiyur', size: 17),
                SizedBox(height: 15,),
                AppText.SubHeading(text: 'Choose a sport', color: Colors.blueGrey, size: 15 ),
                SizedBox(height: 12,),
                Row(
                  children: [
                    Container(
                      height: 25, width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          border: Border.all(
                              color: ThemeColors.highlightColor
                          ),
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 16, width: 16,
                            decoration:  BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/football.png'))
                            ),
                          ),
                          SizedBox(width: 5,),
                          AppText.Content(text: 'Football', size: 12)
                        ],
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 25, width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: ThemeColors.highlightColor
                          ),
                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 16, width: 16,
                            decoration:  BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/football.png'))
                            ),
                          ),
                          SizedBox(width: 5,),
                          AppText.Content(text: 'Football', size: 12)
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                AppText.SubHeading(text: 'Select a date', color: Colors.blueGrey, size: 15 ),
                SizedBox(height: 15,),
                Container(
                  width: 400,
                  height: 80,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context,int){
                        return SizedBox(width: 15,);
                      },
                      itemCount: 7,
                      itemBuilder: (context, int){
                    return Container(
                      width: 60, height: 80,
                      color: ThemeColors.highlightColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.Content(text: 'Jun', color: ThemeColors.whiteColor, size: 13),
                          AppText.Content(text: '13', color: ThemeColors.whiteColor, size: 23, fontWeight: FontWeight.bold),
                          AppText.Content(text: 'Thu', color: ThemeColors.whiteColor, size: 13),
                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText.SubHeading(text: 'Select a time slot', color: Colors.blueGrey, size: 15 ),
                    FlutterSwitch(
                      width: 50.0,
                      height: 30.0,
                      toggleSize: 25.0,
                      value: isAm,
                      borderRadius: 1.0,
                      padding: 0,
                      activeToggleColor: Color(0xFF6E40C9),
                      inactiveToggleColor: Color(0xFF2F363D),
                      activeSwitchBorder: Border.all(
                        color: Color(0xFF3C1E70),
                        width: 6.0,
                      ),
                      inactiveSwitchBorder: Border.all(
                        color: Color(0xFFD1D5DA),
                        width: 6.0,
                      ),
                      activeColor: Color(0xFF271052),
                      inactiveColor: Colors.white,
                      activeIcon: Icon(
                        Icons.nightlight_round,
                        color: Color(0xFFF8E3A1),
                      ),
                      inactiveIcon: Icon(
                        Icons.wb_sunny,
                        color: Color(0xFFFFDF5D),
                      ),
                      onToggle: (val) {
                        setState(() {
                          isAm = val;

                          if (val) {
                            _textColor = Colors.white;
                            _appBarColor = Color.fromRGBO(22, 27, 34, 1);
                            _scaffoldBgcolor = Color(0xFF0D1117);
                          } else {
                            _textColor = Colors.black;
                            _appBarColor = Color.fromRGBO(36, 41, 46, 1);
                            _scaffoldBgcolor = Colors.white;
                          }
                        });
                      },
                    ),
                  ],
                ),
                AppText.Content(text: 'Select 1 or more slots', color: ThemeColors.red, size: 9),
                SizedBox(height: 15,),
                GridView.builder(
                  shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 60,
                        childAspectRatio: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 25),
                    itemCount: 12,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,
                        child: Text(index.toString()),
                        decoration: BoxDecoration(
                            color: ThemeColors.whiteColor,
                            border: Border.all(color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(5)),
                      );
                    }),
                SizedBox(height: 15,),
                AppText.SubHeading(text: 'Price Details', color: ThemeColors.blackColor, size: 15 ),
                ListTile(
                  title: AppText.Content(text: 'Slot Cost', color: Colors.blueGrey, size: 12),
                  trailing:AppText.Content(text: '₹1000', color: Colors.blueGrey, size: 12),
                ),
                ListTile(
                  title: AppText.Content(text: 'Discount', color: Colors.blueGrey, size: 12),
                  trailing:AppText.Content(text: '₹1000', color: Colors.blueGrey, size: 12),
                ),
                Divider(
                  color: ThemeColors.highlightColor,
                ),
                ListTile(
                  title: AppText.Content(text: 'Total', color: Colors.blueGrey,fontWeight: FontWeight.bold, size: 12),
                  trailing:AppText.Content(text: '₹1000', color: Colors.blueGrey, size: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
