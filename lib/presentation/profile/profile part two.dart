import 'package:etradeling/presentation/profile/cubit/names_cubit.dart';
import 'package:etradeling/presentation/profile/cubit/names_state.dart';
import 'package:etradeling/presentation/profile/profile_info.dart';
import 'package:etradeling/presentation/profile/vendorProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../messages/cubit/cubit.dart';
import '../messages/cubit/state.dart';

class ProfileCheck extends StatelessWidget {
  ProfileCheck({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    CubitMessages cubit = CubitMessages.get(context);
    cubit.getData();
    print(cubit.map);
    return BlocBuilder<CubitMessages, MainMessagesState>(
        builder: (context, state) {
      if (cubit.map["isVendore"] == false) {
        return ProfileData();
      } else {
        return const VendorProfile();
      }
    });
  }
}
