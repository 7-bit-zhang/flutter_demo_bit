import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:study_demo/pages/folding_cell-master/color_hex.dart';

class CellContentPage extends StatelessWidget {
  const CellContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(44),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                componentTitle('组件 1'),
                component1(),
                componentTitle('组件 2'),
                component2(),
                componentTitle('组件 3'),
                component3(),
                componentTitle('组件 4'),
                component4(),
                componentTitle('组件 5'),
                component5(),
                componentTitle('组件 6'),
                component6(),
              ],
            )),
      ),
    );
  }

  /// 组件标题
  Widget componentTitle(String title) {
    return Container(
      height: 34,
      padding: const EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.bottomLeft,
      child: Text(title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          )),
    );
  }
}

/// 这里为了方便，暂时设为全局方法，小伙伴可自己进行封装

/// 组件 1
Widget component1() {
  double height = 165.0;
  return ClipRRect(
    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
    child: SizedBox(
      height: height,
      child: Row(
        children: [
          Container(
            width: 88,
            color: HexColor.fromHex('5D4A99'),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$25',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    style: TextStyle(),
                    children: [
                      TextSpan(
                        text: 'TODAY\n',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                      TextSpan(
                        text: '06:30 PM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/1.png',
                        width: 16,
                        height: 42,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'W 90th St, New York, 10024',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 8, 10, 8),
                              width: double.infinity,
                              height: 0.5,
                              color: Colors.grey[200],
                            ),
                            const Text(
                              '46th Ave, Woodside, 10011',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      explainText('REQUEST', '6'),
                      explainText('PLEDGE', '\$150'),
                      explainText('WEIGHT', 'light'),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

/// 组件 2
Widget component2() {
  return Container(
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 44,
          color: HexColor.fromHex('5D4A99'),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                color: Colors.white,
              ),
              Text(
                '# 2618-3157',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                '\$25',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Image.asset(
              'assets/images/dao.jpg',
              width: double.infinity,
              height: 121,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              bottom: 12,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  explainText('REQUEST', '6', subtitleColor: Colors.white),
                  explainText('PLEDGE', '\$150', subtitleColor: Colors.white),
                  explainText('WEIGHT', 'light', subtitleColor: Colors.white),
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}

/// 组件 3
Widget component3() {
  return Container(
    color: Colors.white,
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
    child: ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 6),
          child: Text(
            'SENDER',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/4.png',
                width: 48,
                height: 48,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Edward Norton',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      itemSize: 14,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                      itemBuilder: (ctx, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (double value) {
                        print(value);
                      },
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      '(26)',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.grey,
            )
          ],
        ),
        Divider(
          color: Colors.grey[300],
        ),
      ],
    ),
  );
}

/// 组件 4
Widget component4() {
  return Container(
    color: Colors.white,
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        Expanded(
          child: multipleLineText(
              'FROM',
              'W 90th St',
              'New York, NY '
                  '10025'),
        ),
        Expanded(
          child: multipleLineText('TO', '46th Ave', 'Woodside, NY 11101'),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        )
      ],
    ),
  );
}

/// 组件 5
Widget component5() {
  return Container(
    color: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Row(
      children: [
        Expanded(
            child: multipleLineText(
                'DELIVERY',
                '06:30 pm',
                'May 16, '
                    '2021')),
        Expanded(
          child: multipleLineText('REQUEST DEADLINE', '24 minutes', ''),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        )
      ],
    ),
  );
}

/// 组件 6
Widget component6() {
  return ClipRRect(
    borderRadius: const BorderRadius.vertical(bottom: Radius.circular(8)),
    child: Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 0,
              primary: HexColor.fromHex('FEBE16'),
            ),
            onPressed: () {},
            child: Container(
              height: 36,
              child: const Center(
                child: Text(
                  'SENDER REQUEST',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text('5 people have sent a request',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ))
        ],
      ),
    ),
  );
}

/// 三行文字
Widget multipleLineText(String line1, String line2, String line3) {
  return Text.rich(
    TextSpan(
      style: const TextStyle(
        height: 1.4,
      ),
      children: [
        TextSpan(
          text: '$line1\n',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        TextSpan(
          text: '$line2\n',
          style: const TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        TextSpan(
          text: line3,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}

///
Widget explainText(String title, String subtitle,
    {Color? titleColor, Color? subtitleColor}) {
  return Text.rich(
    TextSpan(
        style: const TextStyle(
          height: 1.4,
        ),
        children: [
          TextSpan(
              text: '$title\n',
              style: TextStyle(
                color: titleColor ?? Colors.grey,
                fontSize: 13,
              )),
          TextSpan(
            text: subtitle,
            style: TextStyle(
              color: subtitleColor ?? Colors.blueGrey,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ]),
  );
}
