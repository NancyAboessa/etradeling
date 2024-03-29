import 'package:etradeling/presentation/home_screen/appbar.dart';
import 'package:etradeling/presentation/post/widget/image_upload.dart';
import 'package:etradeling/presentation/post/widget/image_upload_scund.dart';
import 'package:etradeling/presentation/post/widget/lagerField.dart';
import 'package:etradeling/utls/themes/main_field/main_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubite.dart';
import 'cubit/state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'widget/RQFButton.dart';
import 'widget/sub_catgory.dart';

class PLM extends StatelessWidget {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController tradeTermsController = TextEditingController();
  final TextEditingController maxBudgetController = TextEditingController();
  final TextEditingController detailsController = TextEditingController();
  final TextEditingController MainController = TextEditingController();
  final TextEditingController priceFromController = TextEditingController();
  final TextEditingController PricetoController = TextEditingController();

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
                            hint:  AppLocalizations.of(context)!.minorder,
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
                            hint:  AppLocalizations.of(context)!.estimatedprice,
                            controller: tradeTermsController)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 770, left: 80),
                child: DropDownSubCategoryButton(
                    width: 1000,
                    list: ["x", "y", "z"],
                    dropdownValue: AppLocalizations.of(context)!.targetmarket,
                    fun: cubit),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 770, left: 80),
                      child: MainField(
                          hint:  AppLocalizations.of(context)!.productsspecification,
                          controller: maxBudgetController),
                    ),
                  ),
                ],
              ),
              LargeField(
                controller: detailsController,
                hint:  AppLocalizations.of(context)!.details,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 100.0, bottom: 20, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( AppLocalizations.of(context)!.productsspecification,
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
                  child: InkWell(
                    onTap: () {
                      cubit.PLM({});
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.submit,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        );
      }),
    );
  }
}
