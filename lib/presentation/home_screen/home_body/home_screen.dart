import 'package:etradeling/presentation/home_screen/appbar.dart';
import 'package:etradeling/presentation/home_screen/home_body/components/CustomMaterialButtom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  get loginCubit => null;

  @override
  Widget build(BuildContext context) {
    Widget buldItem() => Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      image: DecorationImage(
                        image: AssetImage(''),
                      ),
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                        color: Colors.black26,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'construction',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              children: [
                MainAppBar(),
                Column(
                  children: [
                    Text(
                      'Best Seller',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange[600],
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          'see all',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: [
                        Container(
                          height: 150,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.5),
                        ),
                        Icon(
                          FontAwesomeIcons.heart,
                        ),
                      ],
                    ),
                    Container(
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Apple AirPods With Charging Case White',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10.0,
                              ),
                              maxLines: 2,
                              // overflow:TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              alignment: AlignmentDirectional.topStart,
                              child: Text(
                                'EGP 2000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomMaterialButtom(
                              text: 'Add To Cart',
                              icon: Icons.shopping_cart,
                              color: Colors.black,
                              coolor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
            ),
            Text(
              'Explore our Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 50.0,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 260,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return buldItem();
                },
                separatorBuilder: (context, index) => SizedBox(
                  width: 10.0,
                ),
                itemCount: 3,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 260,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return buldItem();
                },
                separatorBuilder: (context, index) => SizedBox(
                  width: 10.0,
                ),
                itemCount: 3,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 600,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: 900,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 160, right: 70),
                          child: Text(
                            'Our Benefite',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 310, top: 20),
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
                          SizedBox(
                            width: 10,
                          ),
                          iconColom(
                            text: '''To ensure a perfect customer
                       experience , we have provided a
                      service of prepacked or cutting products''',
                            texttwo: 'Fast delivery',
                            icon: Icons.fire_truck,
                          ),
                          SizedBox(
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
                    Container(
                      width: double.infinity,
                      height: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 550, top: 50),
                      child: Text(
                        'Our partners',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 150, left: 380),
                      child: Column(
                        children: [
                          Column(children: [
                            Row(
                              children: [
                                iconwithTextOnly(
                                  text: 'Labore',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                iconwithTextOnly(
                                  text: 'Labore',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                iconwithTextOnly(
                                  text: 'Labore',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                iconwithTextOnly(
                                  text: 'Labore',
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                iconwithTextOnly(
                                  text: 'Labore',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                iconwithTextOnly(
                                  text: 'Labore',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                iconwithTextOnly(
                                  text: 'Labore',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                iconwithTextOnly(
                                  text: 'Labore',
                                )
                              ],
                            ),
                          ]),
                        ],
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     iconwithTextOnly(text: 'Labore',),
                    //     iconwithTextOnly(text: 'Labore',),
                    //     iconwithTextOnly(text: 'Labore',),
                    //     iconwithTextOnly(text: 'Labore',)
                    //
                    //   ],
                    // )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Stack(
                  children: [
                    Container(
                      color: Colors.black,
                      width: double.infinity,
                      height: 300,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: 650,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 150, right: 30),
                          child: Text(
                            'Our Benefite',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 310, top: 20),
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
                          SizedBox(
                            width: 10,
                          ),
                          iconColom(
                            text: '''To ensure a perfect customer
         experience , we have provided a
        service of prepacked or cutting products''',
                            texttwo: 'Fast delivery',
                            icon: Icons.fire_truck,
                          ),
                          SizedBox(
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
                    Container(
                      width: double.infinity,
                      height: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 550, top: 50),
                      child: Text(
                        'Our partners',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 150, left: 380),
                      child: Column(
                        children: [
                          Column(children: [
                            Row(
                              children: [
                                iconwithTextOnly(
                                  text: 'Labore',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                iconwithTextOnly(
                                  text: 'Labore',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                iconwithTextOnly(
                                  text: 'Labore',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                iconwithTextOnly(
                                  text: 'Labore',
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                iconwithTextOnly(
                                  text: 'Labore',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                iconwithTextOnly(
                                  text: 'Labore',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                iconwithTextOnly(
                                  text: 'Labore',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                iconwithTextOnly(
                                  text: 'Labore',
                                )
                              ],
                            ),
                          ]),
                        ],
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     iconwithTextOnly(text: 'Labore',),
                    //     iconwithTextOnly(text: 'Labore',),
                    //     iconwithTextOnly(text: 'Labore',),
                    //     iconwithTextOnly(text: 'Labore',)
                    //
                    //   ],
                    // )
                  ],
                ),
                SizedBox(
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
                          Image.asset(''),
                          SizedBox(
                            width: 150,
                          ),
                          Column(
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
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            height: 35,
                            width: 250,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(color: Colors.white),
                              color: Colors.transparent,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '  What your are Looking for?',
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
                            child: Text('Subscribe'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Divider(
                        color: Colors.white54,
                        thickness: 1,
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 130, left: 200),
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
                      padding: const EdgeInsets.only(top: 270, left: 200),
                      child: Text(
                        'Follow us on',
                        style: TextStyle(
                            color: Colors.orange[600],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 295, left: 200),
                      child: Icon(
                        Icons.facebook,
                        color: Colors.orange[600],
                        size: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 130, left: 610),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 130, left: 750),
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
                      padding: const EdgeInsets.only(top: 130, left: 950),
                      child: Column(
                        children: [
                          Text(
                            'Get The app',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'app available now on',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class iconwithTextOnly extends StatelessWidget {
  iconwithTextOnly({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.black,
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 45, left: 30),
          child: Row(
            children: [
              Icon(Icons.cabin),
              SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class iconColom extends StatelessWidget {
  iconColom({
    super.key,
    required this.icon,
    required this.text,
    required this.texttwo,
  });
  String text;
  final IconData? icon;
  String texttwo;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              height: 50,
              width: 45,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: Icon(
                icon,
                size: 30,
                color: Colors.black,
              ),
            ),
            Text(
              texttwo,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              height: 15,
              color: Colors.black,
              thickness: 1,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}

//                Padding(
//                   padding: const EdgeInsets.only(top: 200,left: 950),
//                   child: Stack(
//                     children: [
//                       Row(
//                         children: [
//                           Column(
//                             children: [
//                               Container(
//                                 height: 55,
//                                 width: 135,
//                                 decoration:BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5.0),
//                                   color: Colors.white,
//                                 ),
//                                 child: Column(
//                                   children: [
//                                     Icon(
//                                       Icons.apple,
//                                     ),
//                                   ],
//                                 ),
//
//                               ),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Text(
//                                 'Dounloud on the',
//                                 style: TextStyle(color: Colors.black,fontSize: 5,),
//                               ),
//                               Text('App Store',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 15,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                      ),
