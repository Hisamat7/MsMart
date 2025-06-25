import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:msmart/features/common/widgets/ContainerWidget.dart';
import 'package:msmart/features/personalization/views/Address/AddressEditPage.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Address',style: Theme.of(context).textTheme.headlineSmall,),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 20,
          right:20
        ),
        child: FloatingActionButton(onPressed: (){
          Get.to(()=>AddressEditPage());
        },child: Icon(Icons.add),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20
        ),
        child: ListView.separated(
          itemBuilder: (context, index) => ContainerWidget(
            borderRadius: BorderRadius.circular(10),
            padding: const EdgeInsets.all(20),
            border: Border.all(color: Colors.grey),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Address $index'),
                Text('Address $index'),
                Text('Address $index'),
              ],
            ),
          ), 
          separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        }, itemCount: 2, shrinkWrap: true, physics: const NeverScrollableScrollPhysics(),),
      ),
      
    );
  }
}