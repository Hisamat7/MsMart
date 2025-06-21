import 'package:flutter/material.dart';

class ListTitleWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  const ListTitleWidget({super.key, required this.title, required this.subtitle, required this.icon});
  @override
  Widget build(BuildContext context) {
    return  ListTile(
             
              title: Text(title,style: Theme.of(context).textTheme.titleSmall,),
              subtitle: Text(subtitle,style: Theme.of(context).textTheme.bodySmall,),
              leading: IconButton(
                onPressed: () {},
                icon: Icon(icon),
            ),);
  }
}