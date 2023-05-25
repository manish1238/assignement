import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire/app/screen/widget_mixin.dart';
import 'package:hyperhire/utils/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AssignmentPage extends StatefulWidget {
  const AssignmentPage({Key? key}) : super(key: key);

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> with WidgetMixin {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: kWhite,
          title: const Text(
            '자유톡',
            style: TextStyle(
              color: kBlack,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: kGrey,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ListTile(
                leading: Container(
                  height: 37,
                  width: 67,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                    image: DecorationImage(
                      image: AssetImage('assets/pngs/profile.png'),
                    ),
                  ),
                ),
                title: Row(
                  children: [
                    const Text(
                      '안녕 나 응애',
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
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
                    //kGrey
                  ],
                ),
                subtitle: const Text(
                  '165cm 53kg',
                  style: TextStyle(
                    color: kGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: const Chip(
                  label: Text(
                    '팔로우',
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  backgroundColor: kGreen,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 18.0,
                  bottom: 16,
                ),
                child: Text(
                  '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Text(
                  '지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어 \n \n 후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블 제일 재밌었다던데 맞아??? '
                  '\n \n \n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가'
                  '  아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에'
                  '있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!'),
              const SizedBox(
                height: 16,
              ),
              if (350 < widthSize && widthSize < 700)
                Wrap(
                  children: [
                    buildChips(title: '#2023'),
                    buildChips(title: '#TODAYISMONDAY'),
                    buildChips(title: '#TOP!'),
                    buildChips(title: '#POPS!'),
                    buildChips(title: '#WOW!'),
                    buildChips(title: '#ROW!'),
                  ],
                ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CarouselSlider.builder(
                        itemCount: 4,
                        itemBuilder: (context, index, realIndex) {
                          return Container(
                            child: Image.asset(
                              'assets/jpeg/product.jpeg',
                              fit: BoxFit.fitWidth,
                            ),
                          );
                        },
                        options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                            });
                          },
                          height: 400,
                          viewportFraction: 1,
                          pageSnapping: false,
                          enableInfiniteScroll: false,
                        ),
                      ),
                      Positioned(top: 350, bottom: 0, child: buildIndicator()),
                    ],
                  ),
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
                  SvgPicture.asset('assets/svgs/talke.svg'),
                  const Padding(
                    padding: EdgeInsets.only(left: 5, right: 14.0),
                    child: Text('5'),
                  ),
                  SvgPicture.asset('assets/svgs/bookmark.svg'),
                ],
              ),
              const Divider(),
              buildChat(
                image: 'assets/pngs/profile.png',
                leftPadding: 0,
                title: '안녕 나 응애',
                comment: '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭'
                    '우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도'
                    ' 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다'
                    '괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니'
                    '꼭 봐주세용~!',
                color: Colors.orange,
                secondComment: false,
              ),
              buildChat(
                image: 'assets/pngs/comment_profile.png',
                leftPadding: 50,
                title: 'ㅇㅅㅇ',
                comment: '오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다',
                color: Colors.redAccent,
                secondComment: true,
              ),
            ],
          ),
        ),
        // );
        bottomNavigationBar: buildBottomNavigation());
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 4,
        effect: JumpingDotEffect(
            dotHeight: 6, dotWidth: 6, dotColor: kGrey, activeDotColor: kWhite),
      );
}
