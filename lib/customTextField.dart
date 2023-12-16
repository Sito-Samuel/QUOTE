import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool isPassword;
  final bool showPassword;
  final bool validateForm;
  final TextInputType? inputType;
  final VoidCallback? onToggleShowPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator; // Validator function

  CustomTextField({
    required this.label,
    required this.hint,
    this.isPassword = false,
    this.showPassword = false,
    this.validateForm = false,
    this.inputType,
    this.onToggleShowPassword,
    this.controller,
    this.validator, // Add validator parameter
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: TextFormField(
              keyboardType: inputType,
              inputFormatters: inputType == TextInputType.phone
                  ? [FilteringTextInputFormatter.digitsOnly]
                  : null,
              obscureText: isPassword && !showPassword,
              controller: controller,
              validator: validator != null
                  ? (value) => validator!(value!)
                  : null, // Set the validator
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                suffixIcon: isPassword
                    ? IconButton(
                        icon: Icon(
                          showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: onToggleShowPassword,
                        color: Colors.blue,
                      )
                    : null,
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
