import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/personalization/widgets/DividerWidget.dart';
import 'package:msmart/features/personalization/widgets/ListTileEditProfile.dart';
import 'package:msmart/features/personalization/widgets/ProfileLogo.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/SectionHeadingWidget.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile',style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            ProfileLogo(),
            SizedBox(
              height: 20.h,
            ),
           DividerWidget(),
             SectionHeadingWidget(title: AppText.accountSetting,
              viewAll: false,
              ),
              ListTileEditProfile(title: AppText.name, subtitle: 'John Doe', ),
              ListTileEditProfile(title: AppText.userName, subtitle: 'john_doe', ),
            DividerWidget(),
            SectionHeadingWidget(title: AppText.profileSetting, viewAll: false,),
            ListTileEditProfile(title: AppText.userId, subtitle: '232345', icon: Iconsax.copy),
              ListTileEditProfile(title: AppText.email, subtitle: '2Kl1F@example.com', ),
                ListTileEditProfile(title: AppText.phone, subtitle: '+91 123456789', ),
                ListTileEditProfile(title: AppText.gender, subtitle: 'male', ),
                DividerWidget(),
                TextButton(onPressed: (){}, child: Text(AppText.deleteAccount,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.red),))
          ],
        ),
      ),
    );
  }
}