import 'package:flutter/material.dart';
import 'package:ui_challenge/constants.dart';
import 'package:ui_challenge/profiles_list.dart';

import 'comment.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width + 50,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: mainClr, width: 2.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 40,
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: Image.asset('assets/gdglogo.png'),
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'gdg.algiers',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Google Devlopers Groupe-Algiers',
                      style: TextStyle(
                        color: Color(0xFF9E9E9E),
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/post.png',
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon3.png',
                height: 30,
                width: 60,
                fit: BoxFit.scaleDown,
              ),
              Image.asset(
                'assets/icon.png',
                height: 30,
                width: 60,
                fit: BoxFit.scaleDown,
              ),
              Image.asset(
                'assets/icon1.png',
                height: 30,
                width: 60,
                fit: BoxFit.scaleDown,
              ),
              const Spacer(),
              Image.asset(
                'assets/icons2.png',
                height: 30,
                width: 60,
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const ProfilesList(
                      items: [
                        'assets/avatar.png',
                        'assets/avatar1.png',
                        'assets/avatar2.png',
                      ],
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(text: 'Like by '),
                          TextSpan(
                            text: 'Lougani',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: '365 others',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Comment(
                  person: 'Lougani',
                  comment: "It's amazing to see that",
                ),
                const Comment(
                  person: 'zouambia',
                  comment: "good luck gdg.",
                ),
                const Text(
                  'see other comments',
                  style: TextStyle(
                    color: Color(0xFF727272),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
