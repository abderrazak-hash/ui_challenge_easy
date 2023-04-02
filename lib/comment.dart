import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  final String person, comment;
  const Comment({
    super.key,
    required this.person,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            color: Colors.black,
          ),
          children: [
            TextSpan(
              text: '$person  ',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(text: comment),
          ],
        ),
      ),
    );
  }
}
