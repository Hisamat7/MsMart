import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/common/widgets/TextFieldWidget.dart';

class AddressEditPage extends StatelessWidget {
  const AddressEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new Address ',style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
          
            children: [
                SizedBox(
                    height: 40.h,
                  ),
              TextFieldWidget(hintText: 'name', icon: Iconsax.user, label: 'name',validator: (p0) => p0!.isEmpty ? 'name error' : null, ),
                SizedBox(
                    height: 20.h,
                  ),
              Row(
                children: [
                  Expanded(child: TextFieldWidget(hintText: 'Street', icon: Iconsax.building_31, label: 'Street',validator: (p0) => p0!.isEmpty ? 'address error' : null, )),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(child: TextFieldWidget(hintText: 'Post Code', icon: Iconsax.code, label: 'Post Code',validator: (p0) => p0!.isEmpty ? 'city error' : null, )),
                 
                ],
              ),
                SizedBox(
                    height: 20.h,
                  ),
              Row(
                children: [
                   Expanded(child: TextFieldWidget(hintText: 'City', icon: Iconsax.building, label: 'city',validator: (p0) => p0!.isEmpty ? 'state error' : null, )),
                   SizedBox(
                    width: 10.w,
                  ),
                  Expanded(child: TextFieldWidget(hintText: 'state', icon: Iconsax.location, label: 'state',validator: (p0) => p0!.isEmpty ? 'pincode error' : null, ))
                ],
              ),
              SizedBox(
                    height: 20.h,
                  ),
              TextFieldWidget(hintText: 'Country', icon: Iconsax.global, label: 'Country',validator: (p0) => p0!.isEmpty ? 'phone error' : null, ),
            SizedBox(
                    height: 20.h,
                  ),
              ButtonWidget(text: "save", onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}