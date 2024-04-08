import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halakat/ui/pages/bottom_nav_controller.dart';


import '../../const/app_colors.dart';

class SpeakingOnPage extends StatelessWidget {
  const SpeakingOnPage({super.key});

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
                    '  Recite Quran',
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
            Stack(children: [
              Container(
                height: 131.h,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
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
                    borderRadius: BorderRadius.circular(10),
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
                child: Text('Select Ayah',
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
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Show verses',
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      color: AppColors.offWhiteColor,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Record',
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      color: AppColors.offWhiteColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    SvgPicture.asset('images/Rectangle47.svg'),
                    Positioned(
                        top: 2,
                        right: 6,
                        child: SvgPicture.asset('images/Rectangle48.svg')),
                  ],
                ),
                Stack(
                  children: [
                    SvgPicture.asset('images/Rectangle47.svg'),
                    Positioned(
                        top: 2,
                        right: 6,
                        child: SvgPicture.asset('images/Rectangle48.svg')),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'الفاتحة',
                  style: GoogleFonts.amiri(
                      fontSize: 32.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w500),
                ),
                SvgPicture.asset('images/chevron-down1.svg'),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Text(
                'بِسْمِ اللّهِ الرَّحْمَانِ الرَّحِيمِ (1)',
                style: GoogleFonts.amiri(
                    fontSize: 20.sp,
                    color: Color(0xff1D263B),
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavBar()));
              },
              child: Stack(
                children: [
                  Center(
                      child: Image.asset(
                    'images/circle-audio-wave-.png',
                  )),
                  Positioned(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 78, top: 15).r,
                    child: Container(
                      height: 220,
                      width: 220,
                      decoration: BoxDecoration(
                          color: Color(0xFFD0DED8),
                          borderRadius: BorderRadius.circular(112).w),
                    ),
                  )),
                  Positioned(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 110, left: 65).r,
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(112).w,
                          bottomRight: Radius.circular(100).w,
                        ),
                        child: Image.asset('images/Vector1(2).png')),
                  )),
                  Positioned(
                      left: 80,
                      top: 10,
                      child: Image.asset('images/micactive1.png')),
                  Positioned(
                      left: 130,
                      top: 40,
                      child: Text('...........................',style: TextStyle(color: AppColors.greenColor),))
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Text(
                'بِسْمِ اللّهِ الرَّحْمَانِ الرَّحِيمِ (1)',
                style: GoogleFonts.amiri(
                    fontSize: 20.sp,
                    color: Color(0xff1D263B),
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Stack(
                children: [
                  SvgPicture.asset('images/Rectangle192.svg'),
                  Positioned(
                      top: 7,
                      left: 45,
                      child: Text(
                        'Save your progress',
                        style: GoogleFonts.poppins(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      )),
                  Positioned(
                      top: 0,
                      bottom: 0,
                      child: Image.asset('images/pngwing2.png'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
// Stack(
// children: [
// Image.asset('images/circle-audio-wave-.png'),
// Positioned(
// bottom: 12,
// right: 0,
// child: Container(
// width: 220.w,
// height: 220.h,
// decoration: BoxDecoration(
// color: Color(0xFFD0DED8),
// borderRadius: BorderRadius.circular(112).w,
// ),
// child: Padding(
// padding: const EdgeInsets.only(top: 100).r,
// child: ClipRRect(
// borderRadius: BorderRadius.only(
// bottomLeft: Radius.circular(112).w,
// bottomRight: Radius.circular(112).w,
// ),
// child: Image.asset(
// 'images/Vector1(2).png',
// )),
// ),
// ),
// ),
// Positioned(
// left: 30,
// child: Image.asset('images/micactive1.png'),
// ),
// Positioned(
// top: 40,
// left: 80,
// child: Text('..........................',style: TextStyle(color: AppColors.greenColor),))
// ],
// ),
