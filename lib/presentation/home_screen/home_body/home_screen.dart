import 'package:etradeling/presentation/home_screen/appbar.dart';
import 'package:etradeling/presentation/home_screen/home_body/components/imageWithText.dart';
import 'package:flutter/material.dart';
import 'components/CustomContainerWithCircleAvIcon.dart';
import 'components/components.dart';
import 'components/constants.dart';
import 'components/customListView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  get loginCubit => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center, children: [
            // best seller ,see all,circle avatar/ apple /
            Column(
              children: [
                MainAppBar(),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    // List View AirPods
                    Text(
                      'Explore our Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 50.0,
                      ),
                    ),
                    listViewhome(widget: imagewithText(),items: 3,left: 250,hight: 260,),
                    SizedBox(
                      height: 10.0,
                    ),
                    //listview
                    listViewhome(widget: imagewithText(),items: 3,left: 250,hight: 260,),
                  ],
                ),
              ],
            ),
            // explore caregore
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
            ),
            //apple
            Column(
              children: [
                Text(
                  'Best Seller',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
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
                SizedBox(height: 30,),
              ],
            ),
            listViewhome(widget: customContainerWithCircleAvIcon(),items: 3,left: 250,hight: 260,),
            listViewhome(widget: customContainerWithCircleAvIcon(),items: 3,left: 250,hight: 260,),
            SizedBox(
              height: 40.0,
            ),
            SizedBox(
              height: 60.0,
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
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: 650,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    //Text our benifits
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 190, right: 30),
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
                      padding: const EdgeInsets.only(left: 350, top: 20),
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
                    SizedBox(
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
                            listViewhome(
                                widget: iconwithTextOnly(text: 'Labore',),
                                items: 4,
                                left:10, hight: 120,
                            ),
                            listViewhome(
                                widget: iconwithTextOnly(text: 'Labore',),
                                items: 4,
                              left:10, hight:120 ,
                            ),

                          ]),
                        ],
                      ),
                    ),
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
                          Image.asset("assets/imeges/etradeling3-1.png",width: 200,height: 45),
                          SizedBox(
                            width: 150,
                          ),
                          //two texts
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


