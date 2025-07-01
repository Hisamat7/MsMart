import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/SectionHeadingWidget.dart';
import 'package:msmart/features/shop/views/SubCategories/SubCategoriesWidget.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppText.sports
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SectionHeadingWidget(title: AppText.sports,),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 120.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SubCategoriesWidgets(),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemCount: 3,
                  shrinkWrap: true,
                  
                ),
                ),
                  SectionHeadingWidget(title: AppText.sports,),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 120.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SubCategoriesWidgets(),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemCount: 3,
                  shrinkWrap: true,
                  
                ),
                ),  SectionHeadingWidget(title: AppText.sports,),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 120.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SubCategoriesWidgets(),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemCount: 3,
                  shrinkWrap: true,
                  
                ),
                )
            ],
          ),
        )
      ),
    );
  }
}
