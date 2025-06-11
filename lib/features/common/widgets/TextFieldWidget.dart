import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final String label;
  final String? Function(String?)? validator;

  const TextFieldWidget({
    Key? key,
    this.validator,
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
    final colorScheme = Theme.of(context).colorScheme;

    return TextFormField(
      validator: widget.validator,
      style: TextStyle(color: colorScheme.onSurface),  // Text color adapts to theme
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(color: colorScheme.onSurface.withOpacity(0.5)),
        labelText: widget.label,
        labelStyle: TextStyle(color: colorScheme.onSurface),
        prefixIcon: Icon(widget.icon, color: colorScheme.onSurface),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: colorScheme.primary, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: colorScheme.primary.withOpacity(0.5),
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red, width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
      ),
    );
  }
}