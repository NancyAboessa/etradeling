import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/names_cubit.dart';
import 'cubit/names_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RequestAppBar extends StatelessWidget {
  const RequestAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    NamesCubit cubit = NamesCubit.get(context);
    List list = [];
    List listId = ["ngRTesakQNGiJu8sjPQK", "saJ1DvfxSwTcrUoajrxG"];
    cubit.requestColorTop(1);
    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(left: 0, top: 20),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () async {
                    cubit.requestColorTop(1);
                    // await cubit.requestList();
                  },
                  child: Text(
                    AppLocalizations.of(context)!.pending,
                    style: TextStyle(
                        color: cubit.requestIndex == 1
                            ? Colors.orange
                            : Colors.black),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () async {
                    cubit.requestColorTop(2);
                    // await cubit.requestList();
                    list = cubit.listRequest;
                  },
                  child: Text(
                    AppLocalizations.of(context)!.inProgress,
                    style: TextStyle(
                        color: cubit.requestIndex == 2
                            ? Colors.orange
                            : Colors.black),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () async {
                    cubit.requestColorTop(3);
                    // await cubit.requestList();
                    list = cubit.listRequest;
                  },
                  child: Text(
                    AppLocalizations.of(context)!.finished,
                    style: TextStyle(
                        color: cubit.requestIndex == 3
                            ? Colors.orange
                            : Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
