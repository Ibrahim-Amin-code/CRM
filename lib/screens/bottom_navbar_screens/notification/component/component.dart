import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/bottom_navbar_screens/component/component.dart';
import 'package:flutter/material.dart';

Widget buildChatItem(context) => Row(
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/owner.jpg'),
        ),
      ],
    ),
    SizedBox(
      width: 15,
    ),
    Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Ibrahim Amin',
                  style:
                  Theme.of(context).textTheme.bodyText2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Spacer(),
                PopupMenuButton(
                  color: Colors.red,
                      itemBuilder: (context) =>[
                        PopupMenuItem(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  " تعديل تعديل",
                                  style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 15,
                                      color: HexColor('#626262')),
                                ),
                                onTap: () {},
                              ),
                              SizedBox(
                                height: 5,
                              ),
                             myDivider(height: 1),
                            ],
                          ),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: ListTile(
                            title: Text(
                              "حذف",
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 15,
                                color: HexColor('#C50B0B'),
                              ),
                            ),
                            onTap: () {
                              // showAlertDialog(
                              //     context: context,
                              //     press: () {
                              //       showSuccessAlertDialog(
                              //           path: 'assets/images/icons8-delete-200 1.png',
                              //           context: context,
                              //           title: 'تم تأكيد الحذف',
                              //           press: () {});
                              //     },
                              //     title: 'تأكيد الحذف',
                              //     path: 'assets/images/icons8-delete-200 1.png');
                            },
                          ),
                          value: 2,
                        ),
                      ],
                      child: Icon(
                        Icons.more_horiz,
                      ),
                    ),
                // PopupMenuButton(
                    //     icon: Icon(Icons.more_horiz),
                    //     itemBuilder: (context) => [
                    //           PopupMenuItem(
                    //             child: Column(
                    //               children: [
                    //                 ListTile(
                    //                   title: Text(
                    //                     "تعديل",
                    //                     style: TextStyle(
                    //                         fontFamily: 'Cairo',
                    //                         fontSize: 15,
                    //                         color: HexColor('#626262')),
                    //                   ),
                    //                   onTap: () {
                    //                     // showAlertDialog(context: context ,press: (){
                    //                     //   showASuccesslertDialog(context);
                    //                     // },title: 'تأكيد الحذف',path: 'assets/images/icons8-delete-200 1.png');
                    //                   },
                    //                 ),
                    //                 SizedBox(
                    //                   height: 5,
                    //                 ),
                    //                 // myDivider(1),
                    //               ],
                    //             ),
                    //             value: 1,
                    //           ),
                    //           PopupMenuItem(
                    //             child: ListTile(
                    //               title: Text(
                    //                 "حذف",
                    //                 style: TextStyle(
                    //                   fontFamily: 'Cairo',
                    //                   fontSize: 15,
                    //                   color: HexColor('#C50B0B'),
                    //                 ),
                    //               ),
                    //               onTap: () {
                    //                 // showAlertDialog(
                    //                 //     context: context,
                    //                 //     press: () {
                    //                 //       showSuccessAlertDialog(
                    //                 //           path: 'assets/images/icons8-delete-200 1.png',
                    //                 //           context: context,
                    //                 //           title: 'تم تأكيد الحذف',
                    //                 //           press: () {});
                    //                 //     },
                    //                 //     title: 'تأكيد الحذف',
                    //                 //     path: 'assets/images/icons8-delete-200 1.png');
                    //               },
                    //             ),
                    //             value: 2,
                    //           )
                    //         ]),
                  ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  child: Text(
                    'Hello My name is ibrahim mohamed amin Abdelhaleem mohamed amin',
                    style: Theme.of(context).textTheme.headline1,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text('11/19/2021',style:
                  TextStyle(
                    color: Colors.grey.shade400,fontSize: 16,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,)
          ],
        ),
      ),
    ),
  ],
);

// InkWell(
// onTap: ()=> PopupMenuButton(
// color: Colors.red,
// itemBuilder: (context) => [
//
// PopupMenuItem(
// child: Text("First",style: TextStyle(color: Colors.black),),
// value: 1,
// ),
// PopupMenuItem(
// child: Text("Second"),
// value: 2,
// )
// ]
// ),
// child: Icon(Icons.more_horiz,)),

///////////////////////

// PopupMenuButton(
//     icon: Icon(Icons.more_vert),
//     itemBuilder: (context) => [
//       PopupMenuItem(
//         child: Column(
//           children: [
//             ListTile(
//               title: Text(
//                 "تعديل",
//                 style: TextStyle(
//                     fontFamily:
//                     'Cairo',
//                     fontSize: 15,
//                     color: HexColor(
//                         '#626262')),
//               ),
//               onTap: () {
//                 // showAlertDialog(context: context ,press: (){
//                 //   showASuccesslertDialog(context);
//                 // },title: 'تأكيد الحذف',path: 'assets/images/icons8-delete-200 1.png');
//               },
//             ),
//             SizedBox(
//               height: 5,
//             ),
//             myDivider(1),
//           ],
//         ),
//         value: 1,
//       ),
//       PopupMenuItem(
//         child: ListTile(
//           title: Text(
//             "حذف",
//             style: TextStyle(
//               fontFamily: 'Cairo',
//               fontSize: 15,
//               color: HexColor(
//                   '#C50B0B'),
//             ),
//           ),
//           onTap: () {
//             showAlertDialog(
//                 context: context,
//                 press: () {
//                   showSuccessAlertDialog(
//                       path: 'assets/images/icons8-delete-200 1.png',
//                       context: context,
//                       title: 'تم تأكيد الحذف',
//                       press: () {});
//                 },
//                 title: 'تأكيد الحذف',
//                 path: 'assets/images/icons8-delete-200 1.png');
//           },
//         ),
//         value: 2,
//       )
//     ]),
