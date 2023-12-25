import 'package:etradeling/presentation/profile/cubit/names_cubit.dart';
import 'package:etradeling/presentation/profile/cubit/names_state.dart';
import 'package:etradeling/presentation/profile/widget/request_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Request extends StatelessWidget {
  const Request({super.key});
  @override
  Widget build(BuildContext context) {
    NamesCubit cubit = NamesCubit.get(context);
    cubit.requestList();

    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return DefaultTabController(
        length: 3,
        child: SizedBox(
          height: 450,
          child: Column(
            children: [
              TabBar(
                  indicatorColor: Colors.orange,
                  labelColor: Colors.orange,
                  tabs: [
                    InkWell(
                      onTap: () {
                        cubit.requestList();
                      },
                      child: const Tab(
                        text: "pending",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Tab(
                        text: "inProgress",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        cubit.requestListTrue();
                      },
                      child: const Tab(
                        text: "finished",
                      ),
                    ),
                  ]),
              state is EmptyRequestListState
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : RequestListView(requestList: cubit.listRequest),
            ],
          ),
        ),
      );
    });
  }
}
