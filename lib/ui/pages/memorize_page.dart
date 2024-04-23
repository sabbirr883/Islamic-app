import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halakat/ui/pages/speakingon_page.dart';

import '../../const/app_colors.dart';

class MemorizePage extends StatelessWidget {
  const MemorizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24).r,
          child: InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                'images/Group.svg',
              )),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 38).r,
          child: Text(
            'Halakat',
            style: GoogleFonts.poppins(
                color: AppColors.greenColor, fontWeight: FontWeight.w700),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24).r,
            child: InkWell(
                onTap: () {}, child: SvgPicture.asset('images/Group(1).svg')),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Assalamualaikum',
              style: GoogleFonts.poppins(
                  fontSize: 18.sp,
                  color: AppColors.offWhiteColor,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 4.h,
            ),
            // Text(
            //   '      Memorize Quran',
            //   style: GoogleFonts.poppins(
            //     color: AppColors.greenColor,
            //     fontSize: 24,
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 20).r,
              child: Row(
                children: [
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).w,
                        color: AppColors.greenColor),
                  ),
                  Text(
                    '   Memorize Quran',
                    style: GoogleFonts.poppins(
                      color: AppColors.greenColor,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SpeakingOnPage()));
              },
              child: Stack(children: [
                Container(
                  height: 131.h,
                  // width: 333,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF588B76),
                          Color(0xFFD0DED8),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10).w),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10).w,
                      child: SvgPicture.asset('images/Quran.svg')),
                ),
                Positioned(
                  top: 18,
                  left: 20,
                  child: SvgPicture.asset('images/cib-readme1.svg'),
                ),
                Positioned(
                  top: 18,
                  left: 50,
                  child: Text('Read Quran',
                      style: GoogleFonts.poppins(
                        color: AppColors.whiteColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                Positioned(
                  top: 55,
                  left: 20,
                  child: Text('Al-Fatihah',
                      style: GoogleFonts.poppins(
                        color: AppColors.whiteColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Positioned(
                  top: 87,
                  left: 20,
                  child: Text('Ayah No: 1',
                      style: GoogleFonts.poppins(
                        color: AppColors.whiteColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ]),
            ),
            SizedBox(
              height: 15.h,
            ),
            Stack(
              children: [
                Container(
                  width: 224.w,
                  height: 224.h,
                  decoration: BoxDecoration(
                      color: Color(0xFFE2F6F8),
                      borderRadius: BorderRadius.circular(112).w),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90).w,
                  bottomRight: Radius.circular(105).w,

                  ),
                  child: Image.asset('images/Vector1.png'),
                ),),
                Positioned(
                  left: 40,
                  top: 59,
                  child: Text('Existing\nplan',
                      style: GoogleFonts.poppins(
                        color: AppColors.greenColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),

                Positioned(
                    left: 90,
                    top: 33,
                    right: 0,
                    bottom: 33,
                    child: Image.asset(
                        'images/white-clipboard.png')),
              ],
            ),



            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 130).r,
                  child: Container(
                    width: 224.w,
                    height: 224.h,
                    decoration: BoxDecoration(
                        color: Color(0xFFD0DED8),
                        borderRadius: BorderRadius.circular(112).w),

                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(112).w,
                    bottomRight: Radius.circular(112).w,


                  ),
                  child: Image.asset('images/Vector.png'),
                ),),
                Positioned(
                  left: 150,
                  top: 59,
                  child: Text('New\nPlan',
                      style: GoogleFonts.poppins(
                        color: AppColors.greenColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),

                Positioned(
                        right: -8,
                        bottom: 10,
                        child: Image.asset(
                          'images/3dcartoon.png',

                        ),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
