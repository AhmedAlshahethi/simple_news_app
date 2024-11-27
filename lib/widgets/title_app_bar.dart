import 'package:flutter/material.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'News',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        Text(
          'Cloud',
          style: TextStyle(
            color: Color(
              0xffFF9800,
            ),
          ),
        ),
      ],
    );
  }
}
