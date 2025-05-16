import 'package:flutter/material.dart';

class WidgetCuatro extends StatelessWidget {
  const WidgetCuatro({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.lightGreenAccent,
            child: const Baseline(
              baseline: 50,
              baselineType: TextBaseline.alphabetic,
              child: FlutterLogo(
                size: 50,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Regresar!'),
          ),
        ],
      ),
    );
  }
}
