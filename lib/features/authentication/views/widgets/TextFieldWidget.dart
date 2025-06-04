import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final String label;

  const TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      decoration: InputDecoration(
        hintText: widget.hintText, 
        labelText: widget.label,  
        prefixIcon: Icon(
          widget.icon,         
          color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.blueAccent,
          ),
        )
      ),
    );
  }
}