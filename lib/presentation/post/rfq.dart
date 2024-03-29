import 'package:etradeling/presentation/home_screen/appbar.dart';
import 'package:etradeling/presentation/post/widget/Quantity.dart';
import 'package:etradeling/presentation/post/widget/counter.dart';
import 'package:etradeling/presentation/post/widget/image_upload.dart';
import 'package:etradeling/presentation/post/widget/image_upload_scund.dart';
import 'package:etradeling/presentation/post/widget/lagerField.dart';
import 'package:etradeling/presentation/post/widget/peg_container.dart';
import 'package:etradeling/presentation/post/widget/sub_catgory.dart';
import 'package:etradeling/utls/themes/main_field/main_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubite.dart';
import 'cubit/state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'widget/RQFButton.dart';

class RFQ extends StatelessWidget {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController tradeTermsController = TextEditingController();
  final TextEditingController maxBudgetController = TextEditingController();
  final TextEditingController detailsController = TextEditingController();

  RFQ({super.key});
  @override
  Widget build(BuildContext context) {
    var cubit = PostCubit.get(context);
    return Scaffold(
      body: BlocBuilder<PostCubit, PostMainState>(builder: (context, i) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainAppBar(),
               PigContainer(
                title: AppLocalizations.of(context)!.submitRFQ,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: MainField(
                            hint: AppLocalizations.of(context)!.product_Name,
                            controller: productNameController)),
                    Expanded(
                      flex: 1,
                      child: DropDownSubCategoryButton(
                          width: 1000,
                          list: ["x", "y", "z"],
                          dropdownValue:
                              AppLocalizations.of(context)!.select_Category,
                          fun: cubit),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: MainField(
                            hint: AppLocalizations.of(context)!.tradeTerms,
                            controller: tradeTermsController)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 770, left: 80),
                child: MainField(
                    hint: AppLocalizations.of(context)!.max_Budget,
                    controller: maxBudgetController),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Counter(
                      minasFunction: cubit,
                      plasFunction: cubit,
                      count: cubit.count,
                      text: AppLocalizations.of(context)!.quantity,
                      left: 100,
                      width: 400,
                      hight: 80,
                      widthtt: 10,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: DropDownQuantityButton(
                        list: ["x", "y", "z"],
                        dropdownValue: AppLocalizations.of(context)!.quantity,
                        fun: cubit,
                        width: 200,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: MainField(
                            hint: AppLocalizations.of(context)!.phone_number, controller: productNameController)),
                    Expanded(
                        flex: 1,
                        child: MainField(
                            hint: AppLocalizations.of(context)!.email, controller: productNameController)),
                  ],
                ),
              ),
              LargeField(
                controller: detailsController,
                hint:  AppLocalizations.of(context)!.details,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          cubit.getImageFirst();
                        },
                        child: ImageUploadFirst(
                            text: AppLocalizations.of(context)!
                                .product_Certificate,
                            cubit: cubit)),
                    GestureDetector(
                      onTap: () {
                        cubit.getImageScound();
                      },
                      child: ImageUploadScound(
                          text:
                              AppLocalizations.of(context)!.companyCertificate,
                          cubit: cubit),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250, bottom: 100),
                child: RQFButton(
                  cubit: cubit,
                  data: {
                    "Product_Name": productNameController.text,
                    "Trade_Terms": tradeTermsController.text,
                    "Max_Budget": maxBudgetController.text,
                    "Quantity": cubit.count,
                    "unit": cubit.valUnit,
                    "Product_Certificate": cubit.firstImage,
                    "Company_Certificate": cubit.scondImage,
                    "user": FirebaseAuth.instance.currentUser!.uid,
                    "ispending": false,
                    "Catgory": cubit.valSubCategory,
                    "name": cubit.map["name"],
                    "Details": detailsController.text,
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
