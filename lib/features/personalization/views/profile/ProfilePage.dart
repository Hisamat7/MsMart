import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/personalization/views/editProfile/EditProfile.dart';
import 'package:msmart/features/personalization/widgets/ListTitleWidget.dart';
import 'package:msmart/features/personalization/widgets/ProfileLogo.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/SectionHeadingWidget.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            
            Center(
              child: ProfileLogo()
            ),

            ListTile(
             
              title: Text('Name',style: Theme.of(context).textTheme.headlineSmall,),
              subtitle: Text('John Doe',style: Theme.of(context).textTheme.bodySmall,),
              trailing: IconButton(
                onPressed: () {
                  Get.to(() => EditProfile());
                },
                icon: Icon(Iconsax.edit_2),
            ),),
            SectionHeadingWidget(title: AppText.accountSetting,
            viewAll: false,
            ),
            ListTitleWidget(title: AppText.myAddress, subtitle: AppText.setshoppingdeliveryaddresses, icon: Iconsax.home),
            SizedBox(
              height: 10.h,
            ),
            ListTitleWidget(title: AppText.myOrders, subtitle: AppText.addremoveproductsandmovetocheckout, icon: Iconsax.shopping_cart),
            SizedBox(
              height: 10.h,
            ),
            ListTitleWidget(title: AppText.myCarts, subtitle: AppText.inprogressandCompletedOrders, icon: Iconsax.heart),

            SizedBox(
              height: 50.h,
            ),
            ButtonWidget(text: AppText.logOut, onPressed: (){}),
          ],
        ),
      ),
    );
  }
}