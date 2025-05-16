//! Checkbox

import 'package:flutter/material.dart';

class WidgetCinco extends StatefulWidget {
  const WidgetCinco({Key? key}) : super(key: key);

  @override
  State<WidgetCinco> createState() => _WidgetCincoState();
}

class _WidgetCincoState extends State<WidgetCinco> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        title: const Text('Checkbox Example'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        // <<--- Aquí centramos todo el contenido
        child: Column(
          mainAxisSize: MainAxisSize.min, // Para que no ocupe toda la altura
          children: [
            Checkbox(
              value: isChecked,
              activeColor: Colors.orangeAccent,
              tristate: true,
              onChanged: (newBool) {
                setState(() {
                  isChecked = newBool;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_back),
              label: const Text('Regresar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
