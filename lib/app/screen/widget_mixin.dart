import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/color.dart';

mixin WidgetMixin {
  Widget buildChat({
    required double leftPadding,
    required String image,
    required String title,
    required String comment,
    required Color color,
    required bool secondComment,
  }) =>
      Container(
        padding: EdgeInsets.only(
          left: leftPadding,
        ),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                height: 37, width: 67,
                // padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
              title: Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: kBlack,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  secondComment
                      ? const SizedBox.shrink()
                      : Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4.00,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 3.08,
                            vertical: 4,
                          ),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 7,
                          ),
                        ),
                  const Text(
                    '1일전',
                    style: TextStyle(
                      color: kGrey,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  const Positioned(
                      top: 0, bottom: 250, child: Icon(Icons.more_horiz))
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    comment,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/heart.svg',
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5, right: 14.0),
                        child: Text('5'),
                      ),
                      secondComment
                          ? const SizedBox.shrink()
                          : SvgPicture.asset('assets/svgs/talke.svg'),
                      secondComment
                          ? const SizedBox.shrink()
                          : const Padding(
                              padding: EdgeInsets.only(left: 5, right: 14.0),
                              child: Text('5'),
                            ),
                    ],
                  ),
                ],
              ),
              // trailing:
            ),
          ],
        ),
      );
  Widget buildChips({required String title}) => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 4,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          color: const Color(0xffF7F8FA),
          borderRadius: BorderRadius.circular(999),
          border: Border.all(
            width: 0.5,
            color: const Color(0xffCED3DE),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xff5A6B87),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        // Chip(
        //   padding: const EdgeInsets.symmetric(horizontal: 4),
        //   label: Text(
        //     title,
        //     style: const TextStyle(
        //       color: kBlack,
        //       fontSize: 12,
        //       fontWeight: FontWeight.w500,
        //     ),
        //   ),
        //   backgroundColor: kLightGrey,
        // ),
      );
  Widget buildBottomNavigation() => Container(
        padding: const EdgeInsets.only(
          left: 18,
          top: 12,
          bottom: 12,
          right: 16,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/svgs/imagemode.svg',
            ),
            Expanded(
                child: TextFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 18),
                  border: InputBorder.none,
                  hintText: '댓글을 남겨주세요.'),
            )),
            const Text(
              '등록',
              style: TextStyle(
                color: kGrey,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      );
}
