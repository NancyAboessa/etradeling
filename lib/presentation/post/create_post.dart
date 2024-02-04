import 'package:etradeling/presentation/home_screen/appbar.dart';
import 'package:etradeling/presentation/post/widget/Quantity.dart';
import 'package:etradeling/presentation/post/widget/counter.dart';
import 'package:etradeling/presentation/post/widget/image_upload.dart';
import 'package:etradeling/presentation/post/widget/image_upload_scund.dart';
import 'package:etradeling/presentation/post/widget/lagerField.dart';
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
  final TextEditingController requestSheping = TextEditingController();
  final TextEditingController shortdescrption = TextEditingController();
  final TextEditingController productscrption = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController formLocation = TextEditingController();
  final TextEditingController toLocation = TextEditingController();
  final TextEditingController size = TextEditingController();
  CreatePost({super.key});
  @override
  Widget build(BuildContext context) {
    var cubit = PostCubit.get(context);
    GlobalKey<FormState> formState = GlobalKey();
    cubit.getData();
    return Scaffold(
      body: BlocBuilder<PostCubit, PostMainState>(builder: (context, i) {
        return cubit.map["isVendore"] == false
            ? Center(
                child: Text(
                  AppLocalizations.of(context)!.youarenotvendor,
                style: TextStyle(fontSize: 20),
              ))
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Form(
                      key: formState,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 250.0, top: 40),
                            child: Container(
                              height: 200,
                              width: 1000,
                              color: Colors.grey.shade100,
                              padding: const EdgeInsets.only(top: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(AppLocalizations.of(context)!
                                      .we_dLoveto_helpyou),
                                  Text(AppLocalizations.of(context)!.addproduct,
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
                            padding:
                                const EdgeInsets.only(left: 100.0, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      cubit.getImageFirst();
                                    },
                                    child: ImageUploadFirst(
                                        text: "ProductImage", cubit: cubit)),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        cubit.getImageScound();
                                      },
                                      child: ImageUploadScound(
                                          text: "", cubit: cubit),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        cubit.getImageScound();
                                      },
                                      child: ImageUploadScound(
                                          text: "", cubit: cubit),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        cubit.getImageScound();
                                      },
                                      child: ImageUploadScound(
                                          text: "", cubit: cubit),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        cubit.getImageScound();
                                      },
                                      child: ImageUploadScound(
                                          text: "", cubit: cubit),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 80.0, right: 80.0),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: MainField(
                                        hint: "product name englesh",
                                        controller: productNameController)),
                                Expanded(
                                    flex: 1,
                                    child: MainField(
                                        hint: "product name arabic",
                                        controller: productNameController)),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 80.0, right: 80.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 50),
                                    child: DropDownCategoryButton(
                                      list: const ["kelogram", "gram"],
                                      dropdownValue: "unit",
                                      fun: cubit,
                                      width: 1000,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 50.0),
                                    child: DropDownSubCategoryButton(
                                        width: 1000,
                                        list: ["x", "y", "z"],
                                        dropdownValue:
                                            AppLocalizations.of(context)!
                                                .select_Category,
                                        fun: cubit),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 80.0, right: 80.0),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: MainField(
                                        hint: AppLocalizations.of(context)!.samples, controller: sampils)),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 50),
                                    child: DropDownCategoryButton(
                                      list: const ["yes", "no"],
                                      dropdownValue: "free sampels",
                                      list:  [AppLocalizations.of(context)!.available, AppLocalizations.of(context)!.notavailable],
                                      dropdownValue: AppLocalizations.of(context)!.stockInOut,
                                      fun: cubit,
                                      width: 1000,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 80.0, right: 80.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: MainField(
<<<<<<< HEAD
                                      hint: "National of origin",
                                      controller: requestSheping),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: MainField(
                                      hint: "Min order",
=======
                                      hint: AppLocalizations.of(context)!.requestofshippingprice,
>>>>>>> 16037afaacaa0391bfce44197b5c7bbc2e39161d
                                      controller: requestSheping),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 80.0, right: 80.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: MainField(
                                      hint: "Price from",
                                      controller: requestSheping),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: MainField(
                                      hint: "Price to",
                                      controller: requestSheping),
                                ),
                              ],
                            ),
                          ),
                          LargeField(
                              hint: AppLocalizations.of(context)!.description, controller: shortdescrption),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 250, bottom: 100, right: 250),
                            child: Container(
                              child: InkWell(
                                onTap: () async {
                                  await cubit.postCreate({
                                    "Product_Name": productNameController.text,
                                    "short_Description":
                                        tradeTermsController.text,
                                    "Product_Description":
                                        maxBudgetController.text,
                                    "sampils": sampils.text,
                                    "Quantity": cubit.count,
                                    "unit": cubit.valUnit,
                                    "firstImage": cubit.firstImage,
                                    "scondImage": cubit.scondImage,
                                    "user":
                                        FirebaseAuth.instance.currentUser!.uid,
                                    "ispending": false,
                                    "Catgory": cubit.valSubCategory,
                                    // "Details": "",
                                  });
                                  if (formState.currentState!.validate()) {
                                    await cubit.postCreate({
                                      "Product_Name":
                                          productNameController.text,
                                      "short_Description":
                                          tradeTermsController.text,
                                      "Product_Description":
                                          maxBudgetController.text,
                                      "sampils": sampils.text,
                                      "Quantity": cubit.count,
                                      "unit": cubit.valUnit,
                                      "firstImage": cubit.firstImage,
                                      "scondImage": cubit.scondImage,
                                      "user": FirebaseAuth
                                          .instance.currentUser!.uid,
                                      "ispending": false,
                                      "Catgory": cubit.valSubCategory,
                                      // "Details": "",
                                    });
                                  } else {}
                                },
                                child: const PostButton(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
      }),
    );
  }
}
