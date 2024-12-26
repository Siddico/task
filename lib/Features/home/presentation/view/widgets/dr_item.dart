// import 'package:flutter/material.dart';
// import 'package:task/Core/utils/styles.dart';
// import 'package:task/Features/home/presentation/view/widgets/check_point.dart';

// class DrItem extends StatelessWidget {
//   const DrItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Stack(
//         children: [
//           Card(
//             color: Colors.white,
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 border: Border.all(color: Color(0xffd6d6d6), width: 1),
//               ),
//               child: Column(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Stack(
//                           children: [
//                             Container(
//                               width: 81,
//                               height: 102,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8),
//                                 // overflow: BoxOverflow.clip, // Prevent overflow
//                               ),
//                               child: Image.asset(
//                                 'images/persona.png',
//                                 width: 81,
//                                 height: 102,
//                                 fit: BoxFit.fill,
//                               ),
//                             ),
//                             Positioned(
//                               top: 83,
//                               child: Container(
//                                 width: 81,
//                                 height: 19,
//                                 color: Color(0xffF4F6F999).withOpacity(.6),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       '4.9',
//                                       style:
//                                           styles.getCairoTextStyle18().copyWith(
//                                                 color: Colors.black,
//                                                 fontSize: 12,
//                                               ),
//                                     ),
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.yellow,
//                                       size: 18,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 8), // Optional padding
//                       Expanded(
//                         child: Container(
//                           height: 102,
//                           child: Padding(
//                             padding: const EdgeInsets.only(top: 8.0),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "أ.د. أحمد فايز عبدالفتاح",
//                                   style: styles
//                                       .getCairoTextStyle18()
//                                       .copyWith(fontSize: 18),
//                                 ),
//                                 Container(
//                                   width: 155,
//                                   height: 24,
//                                   decoration: BoxDecoration(
//                                     color: Color(0xff006BA9).withOpacity(.1),
//                                     borderRadius: BorderRadius.circular(4),
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       Icon(
//                                         Icons.discount,
//                                         size: 16,
//                                         color: Colors.white,
//                                       ),
//                                       Text(
//                                         'خصم 25 % للمشتركين',
//                                         style: styles
//                                             .getCairoTextStyle18()
//                                             .copyWith(
//                                               color: Color(0xff006BA9),
//                                               fontSize: 12,
//                                             ),
//                                       ),
//                                       // Removed empty Text widget
//                                     ],
//                                   ),
//                                 ),
//                                 Text("أستاذ دكتور أنف وأذن وحنجرة بجامعة أسيوط",
//                                     style: styles
//                                         .getCairoTextStyle18()
//                                         .copyWith(
//                                             fontSize: 14,
//                                             color: Color(0xff637381))),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 4.0, vertical: 4),
//                     child: Container(
//                       height: 48,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.location_on,
//                                 color: Color(0xff637381),
//                               ),
//                               SizedBox(
//                                 width: 4,
//                               ),
//                               Text(
//                                 "طما, ش الثورة بجوار مسجد الوحدة",
//                                 style: styles
//                                     .getCairoTextStyle18()
//                                     .copyWith(fontSize: 12),
//                               )
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.phone_iphone,
//                                 color: Color(0xff637381),
//                               ),
//                               SizedBox(
//                                 width: 4,
//                               ),
//                               Text(
//                                 "11245555555 20+",
//                                 style: styles
//                                     .getCairoTextStyle18()
//                                     .copyWith(fontSize: 12),
//                               ),
//                               Spacer(),
//                               Text(
//                                 "إتصال",
//                                 style: styles.getCairoTextStyle18().copyWith(
//                                     fontSize: 12, color: Color(0xff006BA9)),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
//                     child: Divider(
//                       height: 1,
//                       color: Color(0xffD6D6D6),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 4.0),
//                     child: Container(
//                       height: 64,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           check_point(
//                             check: 'يوجد جهاز إيكو',
//                           ),
//                           check_point(
//                               check: 'متابعة دورية بنص السعر كل 3 شهور'),
//                           Text(
//                             "3+",
//                             style: styles
//                                 .getCairoTextStyle18()
//                                 .copyWith(color: Colors.green, fontSize: 12),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   Container(
//                     height: 36,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Container(
//                           height: 36,
//                           width: 36,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(8),
//                               color: Color(0xff006BA9)),
//                           child: Icon(
//                             Icons.archive,
//                             color: Colors.white,
//                           ),
//                         ),
//                         Container(
//                           width: 90,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(8),
//                               color: Color(0xffED6E01)),
//                           child: Center(
//                             child: Text(
//                               'كشف',
//                               style: styles
//                                   .getCairoTextStyle18()
//                                   .copyWith(fontSize: 12, color: Colors.white),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           width: 90,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(8),
//                               color: Color(0xffED6E01)),
//                           child: Center(
//                             child: Text(
//                               'كشف',
//                               style: styles
//                                   .getCairoTextStyle18()
//                                   .copyWith(fontSize: 12, color: Colors.white),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           width: 90,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(8),
//                               color: Color(0xffED6E01)),
//                           child: Center(
//                             child: Text(
//                               'كشف',
//                               style: styles
//                                   .getCairoTextStyle18()
//                                   .copyWith(fontSize: 12, color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             top: 5,
//             right: 247, // Adjusted position for better visibility
//             child: Image.asset('images/Frame 2095585417 (2).png'),
//           ),
//         ],
//       ),
//     );
//   }
// }
