import 'package:flutter/material.dart';
import 'package:task/Core/utils/styles.dart';
import 'package:task/Features/home/data/models/item.dart';
import 'package:task/Features/home/presentation/view/widgets/check_point.dart';
import 'package:task/Features/home/presentation/view/widgets/statement_of_dr.dart';

// ignore: must_be_immutable
class CardItem extends StatelessWidget {
  CardItem({super.key, required this.item});

  Item item;

  Widget build(BuildContext context) {
    dynamic width = item.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Stack(
        children: [
          Card(
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffd6d6d6), width: 1)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                child: Column(
                  children: [
                    if (width == double.infinity) ...[
                      Stack(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8))),
                              height: 102,
                              width: width,
                              child: Image.asset(
                                  'images/ebf0e4266283031d4d0c4d23a732b4b1.jpg',
                                  fit: BoxFit.cover)),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(.7),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8))),
                            height: 102,
                            width: double.infinity,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Container(
                              height: 82,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('${item.title}',
                                        style: styles.getCairoTextStyle18()),
                                    Container(
                                      width: 98,
                                      height: 24,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.1),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.discount,
                                            size: 16,
                                            color: Colors.white,
                                          ),
                                          Text('خصم ${item.discount}%',
                                              style:
                                                  styles.getCairoTextStyle12()),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 84,
                            child: Container(
                              height: 18,
                              width: 334,
                              color: Color(0xffF4F6F9).withOpacity(.6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${item.rating}',
                                    style: styles
                                        .getCairoTextStyle12()
                                        .copyWith(color: Colors.black),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ] else ...[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: 81,
                                  height: 102,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    // overflow: BoxOverflow.clip, // Prevent overflow
                                  ),
                                  child: Image.asset(
                                    'images/persona.png',
                                    width: 81,
                                    height: 102,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Positioned(
                                  top: 83,
                                  child: Container(
                                    width: 81,
                                    height: 19,
                                    color: Color(0xffF4F6F999).withOpacity(.6),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4.9',
                                          style: styles
                                              .getCairoTextStyle12()
                                              .copyWith(color: Colors.black),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8), // Optional padding
                          Expanded(
                            child: Container(
                              height: 102,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "أ.د. أحمد فايز عبدالفتاح",
                                      style: styles
                                          .getCairoTextStyle18()
                                          .copyWith(color: Colors.black),
                                    ),
                                    Container(
                                      width: 155,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xff006BA9).withOpacity(.1),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.discount,
                                            size: 16,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            'خصم 25 % للمشتركين',
                                            style: styles
                                                .getCairoTextStyle12()
                                                .copyWith(
                                                  color: Color(0xff006BA9),
                                                ),
                                          ),
                                          // Removed empty Text widget
                                        ],
                                      ),
                                    ),
                                    Text(
                                        "أستاذ دكتور أنف وأذن وحنجرة بجامعة أسيوط",
                                        style: styles.getCairoTextStyle14()),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 4),
                      child: Container(
                        height: 48,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xff637381),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "${item.location} ",
                                  style: styles
                                      .getCairoTextStyle12()
                                      .copyWith(color: Color(0xff637381)),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone_iphone,
                                  color: Color(0xff637381),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "${item.phone}",
                                  style: styles
                                      .getCairoTextStyle12()
                                      .copyWith(color: Color(0xff637381)),
                                ),
                                Spacer(),
                                Text(
                                  "إتصال",
                                  style: styles
                                      .getCairoTextStyle12()
                                      .copyWith(color: Color(0xff006BA9)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 1, vertical: 4),
                      child: Divider(
                        height: 1,
                        color: Color(0xffD6D6D6),
                      ),
                    ),
                    Container(
                      height: 64,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          check_point(
                            check: '${item.check1}',
                          ),
                          check_point(check: '${item.check2}'),
                          Text(
                            "3+",
                            style: styles
                                .getCairoTextStyle18()
                                .copyWith(color: Colors.green, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    if (width == double.infinity) ...[
                      Container(
                        height: 36,
                        child: Row(
                          children: [
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff006BA9)),
                              child: Icon(
                                Icons.archive,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        width: 1, color: Color(0xffd6d6d6)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'مراسلة الصيدلية',
                                            hintStyle: styles
                                                .getCairoTextStyle12()
                                                .copyWith(
                                                  color: Color(0xffd6d6d6),
                                                ),
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 8,
                                                    vertical: 14),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.send),
                                        color: Color(0xffED6E01),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ] else ...[
                      StatementOfDr()
                    ]
                  ],
                ),
              ),
            ),
          ),
          if (width == double.infinity) ...[
            Positioned(top: 5, right: 215, child: Image.asset('${item.image}')),
          ] else ...[
            Positioned(top: 5, right: 247, child: Image.asset('${item.image}')),
          ]
        ],
      ),
    );
  }
}
