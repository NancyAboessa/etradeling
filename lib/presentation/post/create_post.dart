import 'package:etradeling/presentation/post/widget/counter.dart';
import 'package:etradeling/presentation/post/widget/image_upload.dart';
import 'package:etradeling/utls/themes/main_field/main_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utls/themes/button/drop_down_button/drop_down_button.dart';
import 'cubit/cubite.dart';
import 'cubit/state.dart';

class CreatePost extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  CreatePost({super.key});
  @override
  Widget build(BuildContext context) {
    var cubit = PostCubit.get(context);
    return Scaffold(
      body: BlocBuilder<PostCubit, PostMainState>(builder: (context, i) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80.0, right: 80.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: MainField(
                          hint: "Product Name", controller: controller)),
                  Expanded(
                    flex: 1,
                    child: DropDownButton(
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
                          hint: "Trade Terms", controller: controller)),
                  Expanded(
                    flex: 1,
                    child: DropDownButton(
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
              child: MainField(hint: "Max Budget", controller: controller),
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
                    child: DropDownButton(
                      list: ["x", "y", "z"],
                      dropdownValue: "Quantity",
                      fun: cubit,
                      width: 200,
                    ),
                  ),
                )
              ],
            ),
            ImageUpload(text: "x"),
            ImageUpload(text: "x"),
          ],
        );
      }),
    );
  }
}
