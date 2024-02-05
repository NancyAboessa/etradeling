import 'package:etradeling/presentation/home_screen/Bloc/BlocAppBar.dart';
import 'package:etradeling/presentation/home_screen/Bloc/stateAppBar.dart';
import 'package:etradeling/presentation/home_screen/appbar.dart';
import 'package:etradeling/presentation/home_screen/home_body/components/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Plog extends StatelessWidget {
  const Plog({super.key});
  @override
  Widget build(BuildContext context) {
    AppBarCubit cubit = AppBarCubit.get(context);
    cubit.getAboutAs();
    return BlocBuilder<AppBarCubit, AppBarState>(builder: (context, state) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const MainAppBar(),
              Padding(
                padding: const EdgeInsets.only(left: 200.0, top: 40),
                child: ListView.builder(
                    itemCount: cubit.AboutAsList.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (c, i) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 400,
                              width: 400,
                              child: Image.network(
                                "${cubit.AboutAsList[i]["image"]}",
                                fit: BoxFit.cover,
                                height: 400,
                                width: 400,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                               AppLocalizations.of(context)!.ourVison  ,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text('${cubit.AboutAsList[i]["name"]}'),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              FooterScreen(),
            ],
          ),
        ),
      );
    });
  }
}
