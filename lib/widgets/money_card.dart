import 'package:flutter/material.dart';

class MoneyCard extends StatelessWidget {
  final String name, amount, code;
  final IconData? icon;
  final bool isInvert;
  final Offset offset;

  const MoneyCard({
    super.key,
    required this.name,
    required this.amount,
    required this.code,
    required this.icon,
    this.isInvert = false,
    this.offset = const Offset(0, 0),
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: Container(
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: isInvert ? Colors.white : Colors.grey[900],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isInvert ? Colors.grey[900] : Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInvert ? null : Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: isInvert ? null : Colors.white.withOpacity(0.5),
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.translate(
              offset: const Offset(-16, 24),
              child: Transform.scale(
                scale: 4,
                child: Icon(
                  icon,
                  color: isInvert ? null : Colors.white,
                  size: 36.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
