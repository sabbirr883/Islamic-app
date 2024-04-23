import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/app_colors.dart';
import 'memorize_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Center(
          child: Column(
            children: [
              Text('Halakat',style: GoogleFonts.poppins(fontSize:28.sp,color: AppColors.greenColor,fontWeight: FontWeight.w700 ),),
              SizedBox(
                height: 20.h,
              ),
              Text('Memorize and recite \n       Quran easily',style: GoogleFonts.poppins(fontSize:18.sp,color:AppColors.offWhiteColor,fontWeight: FontWeight.w400 )),
              SizedBox(
                height: 50.h,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.none,
                children: [
                  SvgPicture.asset('images/Group35.svg'),

                  Positioned(
                    bottom: -25,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MemorizePage()));
                    }, child: Text('Get Started',style:GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w600),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buttonColor,
                          foregroundColor: AppColors.greenColor,
                          minimumSize: Size(185, 60),
                        )),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
