import 'package:etradeling/presentation/profile/request_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/names_cubit.dart';
import 'cubit/names_state.dart';
import 'request_app_bar.dart';

class Request extends StatelessWidget {
  const Request({super.key});
  @override
  Widget build(BuildContext context) {
    List listId = ["ngRTesakQNGiJu8sjPQK", "saJ1DvfxSwTcrUoajrxG"];
    NamesCubit cubit = NamesCubit.get(context);
    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return SizedBox(
        height: 800,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const RequestAppBar(),
              RequestBody(list: cubit.listRequest, listId: listId),
            ],
          ),
        ),
      );
    });
  }
}
