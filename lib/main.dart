import 'package:flutter/material.dart';
import 'package:toonflix/widgets/custom_button.dart';
import 'package:toonflix/widgets/money_card.dart';

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
            horizontal: 24.0,
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
                  const CustomButton(
                    backgroundColor: Color(0xFFF2B33A),
                    textData: 'Transfer',
                    textColor: Colors.black,
                  ),
                  CustomButton(
                    backgroundColor: Colors.grey[900],
                    textData: 'Request',
                    textColor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 48.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              const MoneyCard(
                name: 'Euro',
                amount: '6 248',
                code: 'EUR',
                icon: Icons.euro_symbol,
              ),
              const MoneyCard(
                name: 'Dollar',
                amount: '55 622',
                code: 'USD',
                icon: Icons.attach_money,
                isInvert: true,
              ),
              const MoneyCard(
                name: 'Bitcoin',
                amount: '28',
                code: 'BTC',
                icon: Icons.currency_bitcoin,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
