import 'package:flutter/material.dart';

class Adress extends StatelessWidget {
  const Adress({super.key});
  @override
  Widget build(BuildContext context) {
    List first = ["name:", "Phone Number", "Address:"];
    List scound = ["shehab.ehab", "123456", "8-xstret-giza-egypt"];
    return SizedBox(
      height: 400,
      width: 1800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("My Addresses"),
                Padding(
                  padding: const EdgeInsets.only(right: 200.0, bottom: 10),
                  child: InkWell(
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.deepOrange, width: .2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "add Addresses",
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 350,
            width: 800,
            child: ListView.builder(
                itemCount: 1,
                padding: EdgeInsets.only(right: 20),
                itemBuilder: (c, i) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: .1,
                          color: Colors.black,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0, left: 20.0),
                            child: Text("8-xstret-giza-egypt",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.only(left: 20),
                                itemCount: 3,
                                itemBuilder: (c, i) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 20.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            first[i],
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            scound[i],
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.grey.shade400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
