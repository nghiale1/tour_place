import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          obscureText: isPassword,
          keyboardType: isPassword ? TextInputType.text: TextInputType.phone,
          inputFormatters: isPassword ? null : [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: const Color(0xFF093030).withOpacity(0.45),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),

            filled: true,
            fillColor: Colors.transparent,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(width: 0.3),
            ),
            focusColor: Colors.black,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFFD1D1D1)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFFF75D37)),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 34, vertical: 14),
            suffixIcon: isPassword
                ? IconButton(
                    icon: const Icon(Icons.visibility_off),
                    onPressed: () {
                      // Toggle password visibility
                    },
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
