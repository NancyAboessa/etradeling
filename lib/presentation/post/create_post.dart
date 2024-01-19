import 'package:etradeling/presentation/home_screen/appbar.dart';
import 'package:etradeling/presentation/post/widget/Quantity.dart';
import 'package:etradeling/presentation/post/widget/counter.dart';
import 'package:etradeling/presentation/post/widget/image_upload.dart';
import 'package:etradeling/presentation/post/widget/image_upload_scund.dart';
import 'package:etradeling/presentation/post/widget/peg_container.dart';
import 'package:etradeling/presentation/post/widget/post_button.dart';
import 'package:etradeling/presentation/post/widget/select_category.dart';
import 'package:etradeling/presentation/post/widget/sub_catgory.dart';
import 'package:etradeling/utls/themes/main_field/main_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubite.dart';
import 'cubit/state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CreatePost extends StatelessWidget {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController tradeTermsController = TextEditingController();
  final TextEditingController maxBudgetController = TextEditingController();
  final TextEditingController sampils = TextEditingController();
  CreatePost({super.key});
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
              const PigContainer(),
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
                            hint: "short Description",
                            controller: tradeTermsController)),
                    Expanded(
                      flex: 1,
                      child: DropDownCategoryButton(
                        list: const ["avilable", "not avilable"],
                        dropdownValue: "StockIn/Out",
                        fun: cubit,
                        width: 1000,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 770, left: 80),
                child: MainField(
                    hint: "product Description",
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
                padding: const EdgeInsets.only(left: 100.0, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          cubit.getImageFirst();
                        },
                        child:
                            ImageUploadFirst(text: "firstImage", cubit: cubit)),
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
                padding: const EdgeInsets.only(right: 770, left: 80),
                child: MainField(hint: "sampils", controller: sampils),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250, bottom: 100),
                child: PostButton(
                  cubit: cubit,
                  data: {
                    "Product_Name": productNameController.text,
                    "short_Description": tradeTermsController.text,
                    "Product_Description": maxBudgetController.text,
                    "sampils": sampils.text,
                    "Quantity": cubit.count,
                    "unit": cubit.valUnit,
                    "firstImage": cubit.firstImage,
                    "scondImage": cubit.scondImage,
                    "user": FirebaseAuth.instance.currentUser!.uid,
                    "ispending": false,
                    "Catgory": cubit.valSubCategory,
                    // "Details": "",
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
