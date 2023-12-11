import 'package:etradeling/presentation/Category/Cubit/Category%20Cubit.dart';
import 'package:etradeling/presentation/home_screen/Bloc/stateAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utls/themes/button/custom image Box.dart';
import '../../Category/Category.dart';
import '../Bloc/BlocAppBar.dart';
import '../appbar.dart';
import 'components/Custom IconBottom.dart';
import 'components/CustomContainerWithCircleAvIcon.dart';
import 'components/components.dart';
import 'components/constants.dart';
import 'components/customListView.dart';
import 'components/custom_orange_button.dart';
import 'components/imageWithText.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    AppBarCubit cubit = AppBarCubit.get(context);
    cubit.mainCategory();
    return BlocBuilder<AppBarCubit, AppBarState>(builder: (context, state) {
      return cubit.list.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Scaffold(
              body: SingleChildScrollView(
                  child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // best seller ,see all,circle avatar/ apple /
                    Column(children: [
                      const MainAppBar(),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(children: [
                        // List View AirPods
                        const Text(
                          'Explore our Categories',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 50.0,
                          ),
                        ),
                        cubit.list!.isEmpty
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: SizedBox(
                                  height: 700,
                                  width: 1000,
                                  child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      // Number of columns
                                    ),
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      BlocProvider.value(
                                                        value: BlocProvider.of<
                                                                CubitCategories>(
                                                            context),
                                                        child: Category(
                                                            catgory: cubit
                                                                    .list[index]
                                                                ["name"]),
                                                      )));
                                        },
                                        child: ImageWithText(
                                          image: cubit.list[index]["image"],
                                          name: cubit.list[index]["name"],
                                        ),
                                      );
                                    },
                                    itemCount: 6,
                                  ),
                                ),
                              ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                imageBox(hight: 150, width: 400),
                                const Padding(
                                  padding: EdgeInsets.only(top: 30, left: 30),
                                  child: Text(
                                    'Request for Quotation',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 70, left: 30),
                                  child: Text(
                                    'Tell Suppliers what you need',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 110, left: 30),
                                  child: CustomOrangeBottom(
                                      text: 'Create post', width: 100),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Stack(
                              children: [
                                imageBox(hight: 150, width: 400),
                                const Padding(
                                  padding: EdgeInsets.only(top: 30, left: 30),
                                  child: Text(
                                    'Become a vendor ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 70, left: 30),
                                  child: Text(
                                    'and Reach your target customers',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 110, left: 30),
                                  child: CustomOrangeBottom(
                                    text: 'Sigu up now',
                                    width: 110,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        // explore caregore
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.zero),
                          ),
                        ),
                        //apple
                        Column(
                          children: [
                            const Text(
                              'Best Seller',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            CustomOrangeBottom(
                              text: 'See all',
                              width: 70,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 300.0,
                            ),
                            listViewhome(
                              widget: const customContainerWithCircleAvIcon(),
                              items: 6,
                              left: 0,
                              hight: 600,
                              width: 870,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 100.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //our benefits
                            Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 400,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  width: 1000,
                                  height: 300,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                ),
                                //Text our benifits
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 190, right: 30),
                                      child: Text(
                                        'Our Benefite',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                //Icons
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 500, top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      iconColom(
                                        text: '''We Provide all agricultural
        products, multiple options of
         different sesons in whole the year''',
                                        texttwo: 'Browse by categories',
                                        icon: Icons.category,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      iconColom(
                                        text: '''To ensure a perfect customer
        experience , we have provided a
        service of prepacked or cutting products''',
                                        texttwo: 'Fast delivery',
                                        icon: Icons.fire_truck,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      iconColom(
                                        text: '''we target all segments both
        business or individuals to get an
        enjoyable and exceptional delivery experience ''',
                                        texttwo: 'Easy payment options',
                                        icon: Icons.wallet,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                const SizedBox(
                                  width: double.infinity,
                                  height: 200,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 700, top: 50),
                                  child: Text(
                                    'Our partners',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 150, left: 300),
                                  child: Column(
                                    children: [
                                      Column(children: [
                                        listViewhome(
                                          widget: iconwithTextOnly(
                                            text: 'Labore',
                                          ),
                                          items: 6,
                                          left: 200,
                                          hight: 400,
                                          width: 600,
                                        ),
                                      ]),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Stack(
                              children: [
                                Container(
                                  color: Colors.black,
                                  width: double.infinity,
                                  height: 350,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 35),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                          "assets/imeges/etradeling3-1.png",
                                          width: 200,
                                          height: 45),
                                      const SizedBox(
                                        width: 150,
                                      ),
                                      //two texts
                                      const Column(
                                        children: [
                                          Text(
                                            'Join our',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            'Newsetter',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 250,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border:
                                              Border.all(color: Colors.white),
                                          color: Colors.transparent,
                                        ),
                                        child: const TextField(
                                          decoration: InputDecoration(
                                            hintText:
                                                '  What your are Looking for?',
                                            hintStyle: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                      MaterialButton(
                                        onPressed: () {},
                                        height: 43,
                                        color: Colors.orange[600],
                                        child: const Text('Subscribe'),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Divider(
                                    color: Colors.white54,
                                    thickness: 1,
                                    height: 200,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 130, left: 200),
                                  child: Text(
                                    '''Lorem Ipsum is simply dummy
        text of the printing and typesett
        ing industry. Lorem Ipsum has
        been the industry's standard
        dummy text ever since the 1500s''',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 270, left: 200),
                                  child: Text(
                                    'Follow us on',
                                    style: TextStyle(
                                        color: Colors.orange[600],
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 295, left: 200),
                                  child: Icon(
                                    Icons.facebook,
                                    color: Colors.orange[600],
                                    size: 15,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 130, left: 610),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Home',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'categories',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'Our blog ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'Contact us',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'About us ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 130, left: 750),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Submit RFQ ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'My account',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'Terms & Conditions',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'Privacy policies',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'FAQ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 130, left: 950),
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Get The app',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        'app available now on',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      CustomIconBottom(
                                        text: 'App Store',
                                        icon: Icons.apple,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      CustomIconBottom(
                                        text: 'Google Play',
                                        icon: FontAwesomeIcons.google,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      CustomIconBottom(
                                        text: 'App Gallary',
                                        icon: FontAwesomeIcons.suitcase,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                    ]),
                  ]),
            )));
    });
  }
}
