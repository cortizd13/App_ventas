import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textoBoton;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.textoBoton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      
      child: FilledButton(
        onPressed: onPressed, 
        style: FilledButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
    
        ),
        child: Text(textoBoton, style: TextStyle(fontSize: 20),)),
    );
  }
}
