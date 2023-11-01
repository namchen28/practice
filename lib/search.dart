import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/item_container.dart';
import 'package:practice/row1.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State createState() => _SearchPageState();
}

class _SearchPageState extends State {
  var initIndex = 1;
  var index1 = 1;
  var index2 = 2;
  var index3 = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row1(),
              const Text(
                '3 new devices',
                style: TextStyle(
                    fontSize: 17, color: CupertinoColors.inactiveGray),
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.only(top: 16),
                      sliver: SliverGrid.count(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                initIndex = index1;
                              });
                            },
                            child: ItemContainer(
                              initIndex: initIndex,
                              index: index1,
                              image: 'assets/Bork.png',
                              name: 'Bork V530',
                              description: 'Vacuum cleaner',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                initIndex = index2;
                              });
                            },
                            child: ItemContainer(
                              initIndex: initIndex,
                              index: index2,
                              image: 'assets/image 9.png',
                              name: 'LIFX LED Light',
                              description: 'Smart bulb',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                initIndex = index3;
                              });
                            },
                            child: ItemContainer(
                              initIndex: initIndex,
                              index: index3,
                              image: 'assets/image 8.png',
                              name: 'Xiaomi DEM-F600',
                              description: 'Humidifier',
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: const Color.fromARGB(255, 40, 40, 40)),
                              height: 186,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('assets/Wifi.png'),
                                  const Text(
                                    'Not found device?',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Text(
                                    'Select manually',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromARGB(255, 255, 179, 103)),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 63,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 179, 103),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                    onPressed: () {},
                    child: const Text(
                      'Add device',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
