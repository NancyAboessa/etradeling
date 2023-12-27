// import 'dart:io';
// import 'dart:typed_data';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:platform_file/platform_file.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import "package:flutter_gen/gen_l10n/app_localizations.dart";
//
// import 'main.dart';
// import 'presentation/messages/cubit/cubit.dart';
// import 'presentation/messages/cubit/state.dart';
// import 'utls/cache_helper/cache_helper.dart';
//
// Uint8List webImage = Uint8List(8);
//
// class x extends StatefulWidget {
//   const x({super.key});
//
//   @override
//   State<x> createState() => _xState();
// }
//
// class _xState extends State<x> {
//   @override
//   Widget build(BuildContext context) {
//     bool x = true;
//     CubitMessages cubit = CubitMessages.get(context);
//     return BlocBuilder<CubitMessages, MainMessagesState>(builder: (context, i) {
//       return Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.only(top: 250),
//           child: Center(
//             child: Column(
//               children: [
//                 Text(
//                   AppLocalizations.of(context)!.signin,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 30.0,
//                     fontWeight: FontWeight.w300,
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () async {
//                     await cubit.langCahnge();
//                   },
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     color: Colors.blue,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     });
//   }
// }
