import 'package:etradeling/presentation/post/widget/Quantity.dart';
import 'package:etradeling/presentation/post/widget/counter.dart';
import 'package:etradeling/presentation/post/widget/image_upload.dart';
import 'package:etradeling/presentation/post/widget/image_upload_scund.dart';
import 'package:etradeling/presentation/post/widget/peg_container.dart';
import 'package:etradeling/presentation/post/widget/post_button.dart';
import 'package:etradeling/presentation/post/widget/select_category.dart';
import 'package:etradeling/presentation/post/widget/sub_catgory.dart';
import 'package:etradeling/utls/themes/main_field/main_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubite.dart';
import 'cubit/state.dart';

class CreatePost extends StatelessWidget {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController tradeTermsController = TextEditingController();
  final TextEditingController maxBudgetController = TextEditingController();
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
              const PigContainer(),
              Padding(
                padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: MainField(
                            hint: "Product Name",
                            controller: productNameController)),
                    Expanded(
                      flex: 1,
                      child: DropDownSubCategoryButton(
                          width: 1000,
                          list: ["x", "y", "z"],
                          dropdownValue: "Select Category",
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
                            hint: "Trade Terms",
                            controller: tradeTermsController)),
                    Expanded(
                      flex: 1,
                      child: DropDownCategoryButton(
                        list: ["x", "y", "z"],
                        dropdownValue: "Sub Categories",
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
                    hint: "Max Budget", controller: maxBudgetController),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Counter(
                        minasFunction: cubit,
                        plasFunction: cubit,
                        count: cubit.count),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: DropDownQuantityButton(
                        list: ["x", "y", "z"],
                        dropdownValue: "Quantity",
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
                    ImageUploadFirst(text: "Product Certificate", cubit: cubit),
                    ImageUploadScound(
                        text: "Company Certificate", cubit: cubit),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250, bottom: 100),
                child: PostButton(
                  cubit: cubit,
                  data: {
                    "Product_Name": productNameController.text,
                    "Trade_Terms": tradeTermsController.text,
                    "Max_Budget": maxBudgetController.text,
                    "Quantity": cubit.count,
                    "unit": cubit.valUnit,
                    "Product_Certificate":
                        "gs://etradeling-d39a0.appspot.com/${cubit.firstImage}",
                    "Company_Certificate":
                        "gs://etradeling-d39a0.appspot.com/${cubit.scondImage}",
                    // "Details": "",
                  },
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
