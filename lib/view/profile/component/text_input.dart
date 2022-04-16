import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextInput extends StatefulWidget {
  final IconData prefixIcon;
  final double topPadding;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;

  const TextInput({
    Key? key,
    required this.prefixIcon,
    required this.topPadding,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
  }) : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: widget.topPadding),
      child: SizedBox(
        height: Get.height / 16,
        child: TextFormField(
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.bottom,
          cursorColor: Colors.white,
          obscureText: widget.obscureText ?? false,
          style: const TextStyle(color: Colors.white70),
          decoration: InputDecoration(
              suffixIcon: widget.suffixIcon,
              prefixIcon: Icon(
                widget.prefixIcon,
                color: Colors.deepOrange,
              ),
              hintStyle: const TextStyle(color: Colors.deepOrange),
              hintText: widget.hintText,
              fillColor: Colors.red,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                  const BorderSide(color: Color.fromRGBO(27, 27, 27, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.deepOrange))),
        ),
      ),
    );
  }
}