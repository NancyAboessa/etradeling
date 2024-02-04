import 'package:etradeling/presentation/home_screen/appbar.dart';
import 'package:etradeling/presentation/post/widget/image_upload.dart';
import 'package:etradeling/presentation/post/widget/image_upload_scund.dart';
import 'package:etradeling/presentation/post/widget/lagerField.dart';
import 'package:etradeling/utls/themes/main_field/main_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubite.dart';
import 'cubit/state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'widget/RQFButton.dart';
import 'widget/select_category.dart';
import 'widget/sub_catgory.dart';

class PLM extends StatelessWidget {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController tradeTermsController = TextEditingController();
  final TextEditingController maxBudgetController = TextEditingController();
  final TextEditingController detailsController = TextEditingController();

  PLM({super.key});
  @override
  Widget build(BuildContext context) {
    var cubit = PostCubit.get(context);
    return Scaffold(
      body: BlocBuilder<PostCubit, PostMainState>(builder: (context, i) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MainAppBar(),
              SizedBox(
                height: 20,
              ),
              Positioned(
                left: 250.0,
                right: 200,
                child: Container(
                  height: 200,
                  width: 1000,
                  color: Colors.grey.shade100,
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(AppLocalizations.of(context)!.we_dLoveto_helpyou),
                      Text("PLM",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          )),
                    ],
                  ),
                ),
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
                        child: MainField(
                            hint: "Min order ",
                            controller: tradeTermsController)),
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
                            hint: "Estimated price ",
                            controller: tradeTermsController)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 770, left: 80),
                child: DropDownSubCategoryButton(
                    width: 1000,
                    list: ["x", "y", "z"],
                    dropdownValue: "Target market",
                    fun: cubit),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 770, left: 80),
                      child: MainField(
                          hint: "Products specification",
                          controller: maxBudgetController),
                    ),
                  ),
                ],
              ),
              LargeField(
                controller: detailsController,
                hint: "details",
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 100.0, bottom: 20, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Products specification",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                cubit.getImageFirst();
                              },
                              child: ImageUploadFirst(text: "", cubit: cubit)),
                          GestureDetector(
                            onTap: () {
                              cubit.getImageScound();
                            },
                            child: ImageUploadScound(text: "", cubit: cubit),
                          ),
                          GestureDetector(
                            onTap: () {
                              cubit.getImageScound();
                            },
                            child: ImageUploadScound(text: "", cubit: cubit),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 500, bottom: 100, right: 500),
                child: RQFButton(
                  cubit: cubit,
                  data: {
                    // "Product_Name": productNameController.text,
                    // "Trade_Terms": tradeTermsController.text,
                    // "Max_Budget": maxBudgetController.text,
                    // "Quantity": cubit.count,
                    // "unit": cubit.valUnit,
                    // "Product_Certificate": cubit.firstImage,
                    // "Company_Certificate": cubit.scondImage,
                    // "user": FirebaseAuth.instance.currentUser!.uid,
                    // "ispending": false,
                    // "Catgory": cubit.valSubCategory,
                    // "name": cubit.map["name"],
                    // "Details": detailsController.text,
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
