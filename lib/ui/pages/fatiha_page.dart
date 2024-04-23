import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../const/app_colors.dart';

class FatihaPage extends StatelessWidget {
  const FatihaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24).r,
          child: InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                'images/Arrowback+circle.svg',
              )),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 38).r,
          child: Text(
            'Al-Fatihah',
            style: GoogleFonts.poppins(
                color: AppColors.greenColor, fontWeight: FontWeight.w700),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24).r,
            child: InkWell(
                onTap: () {}, child: SvgPicture.asset('images/Group(1).svg')),

          ),

        ],

      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24,right: 24,top: 20).r,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    width: double.infinity,
                    height: 265.h,
                    child: SvgPicture.asset('images/Frame 33.svg')),

                Positioned(
                  child:  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: Center(
                      child: Text(
                      'Al-Fatihah',
                      style: GoogleFonts.poppins(
                        fontSize: 26.sp,
                          color: AppColors.whiteColor, fontWeight: FontWeight.w500),
                                      ),
                    ),
                  ),),
                Positioned(
                  child:  Padding(
                    padding: const EdgeInsets.only(top: 75).r,
                    child: Center(
                      child: Text(
                      'The Opening',
                      style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: AppColors.whiteColor, fontWeight: FontWeight.w400),
                                      ),
                    ),
                  ),),
            Positioned(

                child: Padding(
                  padding: const EdgeInsets.only(top: 120).r,
                  child: Center(child: Image.asset('images/Divider.png')),
                )),
                Positioned(
                  child:  Padding(
                    padding: const EdgeInsets.only(top: 140).r,
                    child: Center(
                      child: Text(
                        'MECCAN  7 VERSES',
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: AppColors.whiteColor, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),),
                Positioned(
                  child:  Padding(
                    padding: const EdgeInsets.only(top: 185).r,
                    child: Center(
                      child: Image.asset('images/Frame.png')
                    ),
                  ),),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Stack(
             children: [
               Container(
                 height: 47.h,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10).w,
                   color:Color(0xfff5f3f3),
                 ),
               ),
               Positioned(
                   top: 10,
                   left: 10,
                   child: Container(
                 height: 30.h,
                 width: 30.w,
                 decoration: BoxDecoration(
                   color:Color(0xff5C8E79),
                   borderRadius: BorderRadius.circular(15).w
                 ),
                 )),
               Positioned(
                   top: 12,
                   right: 100,
                   child: SvgPicture.asset('images/Frame(2).svg')),
               Positioned(
                   top: 12,
                   right: 60,
                   child: SvgPicture.asset('images/Frame.svg')),
               Positioned(
                   top: 12,
                   right: 25,
                   child: SvgPicture.asset('images/Frame(1).svg')),
             ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text('ﻦﻳِمَلٰعْلا ِّبَر ِهَّلِل ُدْمَحْلا',
                style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: AppColors.greenColor, fontWeight: FontWeight.w700),),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text('[All] praise is [due] to Allah, Lord of the worlds -',
              style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  color: AppColors.greenColor, fontWeight: FontWeight.w500),),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 10.h,
            ),
            Stack(
              children: [
                Container(
                  height: 47.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).w,
                    color:Color(0xfff5f3f3),
                  ),
                ),
                Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          color:Color(0xff5C8E79),
                          borderRadius: BorderRadius.circular(15).w
                      ),
                    )),
                Positioned(
                    top: 12,
                    right: 100,
                    child: SvgPicture.asset('images/Frame(2).svg')),
                Positioned(
                    top: 12,
                    right: 60,
                    child: SvgPicture.asset('images/Frame.svg')),
                Positioned(
                    top: 12,
                    right: 25,
                    child: SvgPicture.asset('images/Frame(1).svg')),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text('ﻦﻳِمَلٰعْلا ِّبَر ِهَّلِل ُدْمَحْلا',
                style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: AppColors.greenColor, fontWeight: FontWeight.w700,),),
            ),

            SizedBox(
              height: 10.h,
            ),
            Text('The Entirely Merciful, the Especially Merciful,',
              style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  color: AppColors.greenColor, fontWeight: FontWeight.w500),),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
            ),

          ],
        ),
      ),
    );
  }
}
