import 'package:etradeling/presentation/Productpage/cubit/cubit.dart';
import 'package:etradeling/presentation/Productpage/cubit/state.dart';
import 'package:etradeling/presentation/cartPage/cubit/CartCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class imageBox extends StatelessWidget {
  imageBox({
    super.key,
    required this.hight,
    required this.width,
  });

  double hight;
  double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black12,
      )),
    );
  }
}
