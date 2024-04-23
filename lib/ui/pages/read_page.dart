import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halakat/ui/pages/fatiha_page.dart';

import '../../const/app_colors.dart';

class ReadPage extends StatelessWidget {
   ReadPage({super.key});

late TabController tabController;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                'images/Group.svg',
              )),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 38),
          child: Text(
            'Halakat',
            style: GoogleFonts.poppins(
                color: AppColors.greenColor, fontWeight: FontWeight.w700),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: InkWell(
                onTap: () {}, child: SvgPicture.asset('images/Group(1).svg')),

          ),

        ],

      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24,right: 24),
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
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FatihaPage()));
              },
              child: Stack(children: [
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
                      borderRadius: BorderRadius.circular(10)),
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
            ),
            SizedBox(
              height: 30.h,
            ),

            DefaultTabController(
              length: 4,
              child: SizedBox(
                height: 380.h,
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Color(0xff588B76),
                        labelColor: Color(0xff588B76),
                         unselectedLabelColor: AppColors.offWhiteColor,
                      tabs: [
                  Tab(
                           text: 'Surah',
                        ),
                        Tab(
                          text: 'Para',
                        ),
                        Tab(
                          text: 'Page',
                        ),
                        Tab(
                          text: 'Hijb',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context,index){
                                return Card(
                                  child: ListTile(
                                    leading: Stack(children: [
                                      Image.asset('images/muslim1.png'),
                                      Positioned(
                                          left: 15,
                                          top: 8,
                                          child: Text('$index',style: TextStyle(fontSize: 14),))
                                    ],),
                                    title: Text('Al-Fatiha',style: GoogleFonts.poppins(
                                      color: AppColors.greenColor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                    subtitle: Text('MECCAN  7 VERSES',style: GoogleFonts.poppins(
                                      color: AppColors.offWhiteColor,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                    trailing: Text('ةحتافلا',style: GoogleFonts.poppins(
                                      color: AppColors.greenColor,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                    )),
                                  ),
                                );
                              }),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],

        ),
      ),

    );
  }
}
