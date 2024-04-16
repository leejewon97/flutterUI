import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Jatie',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 36.0,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 20.0,
                ),
              ),
              const Text(
                '\$1 234 567',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    decorationColor: const Color(0xFFF2B33A),
                    child: const Text(
                      'Transfer',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  CustomButton(
                    decorationColor: Colors.grey[900],
                    child: const Text(
                      'Request',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends Container {
  CustomButton({
    super.key,
    required Widget child,
    required decorationColor,
  }) : super(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 40.0,
          ),
          decoration: BoxDecoration(
            color: decorationColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: child,
        );
}
