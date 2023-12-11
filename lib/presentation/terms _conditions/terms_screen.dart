import 'package:etradeling/presentation/home_screen/home_body/components/CustomMaterialButtom.dart';
import 'package:flutter/material.dart';

class Terms_Screen extends StatelessWidget {
  const Terms_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 700,
            alignment: Alignment.center,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'We would help you',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,

                        ),
                        Text(
                          'Terms & Conditions',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.orange[600],
                          ),
                        ),
                      ],
                    ),



                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height:800 ,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,)
                  ),
                  child:const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How Can i pay this products online ?',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '"It’s that time again when people start thinking about their New Years Resolutions. Usually they involv losing weight, quitting smoking, and joining a gym, just to mention a fewWhat about you? What News Year Resolution have you planned for this year? Have you considered thebenefits of improving your mind? Usually, this is the last thing people consider, but in reality it’s one ofthe best things you can do for yourself and those around you.People who want to build their muscles know that it takes time to work on specific areas in order for themuscles to develop properly and these same people will pay big bucks to join the local gym to work onthese areas and yet they forget to invest in things that will enrich their minds.By enriching your mind and building yourself up mentally you will be able to challenge yourself to takeon other areas of your life that need improvement. Your life is influenced by your thought processes.You can learn to build up the muscles in your mind, so to speak, and strengthen your inner man withpositive goal producing thoughts.Most New Year Resolutions fail, mainly because people do not have the proper mind set to set propergoals and lack the ability to make a roadmap that will lead them to success.What is it you want for you and your family next year? Doesn’t investing in yourself by improving yourmind make sense.You don’t need to spend thousands of dollars in order to benefit from the great motivators of the world.People such as Jim Rohn, Brian Tracy and Les Brown can be heard via your computer for about the costof a cup of coffee per day!What are you waiting for? Make this year the best year ever by investing in your mind!',
                          maxLines:25,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20.0
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
              ],
            ),
          ),

        ),

      ),
    );
  }
}
