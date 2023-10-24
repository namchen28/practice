import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Wifi:tw1r_413_7G',
                    style: TextStyle(
                        fontSize: 12, color: CupertinoColors.inactiveGray),
                  ),
                ],
              ),
              Text(
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
                            child: Container(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                decoration: BoxDecoration(
                                    border: initIndex == index1
                                        ? Border.all(
                                            color: Color.fromARGB(
                                                255, 255, 179, 103))
                                        : null,
                                    borderRadius: BorderRadius.circular(24),
                                    color: Color.fromARGB(255, 40, 40, 40)),
                                height: 186,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/Bork.png'),
                                    Text(
                                      'Bork V530',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Vacuum cleaner',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: CupertinoColors.inactiveGray),
                                    )
                                  ],
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                initIndex = index2;
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                decoration: BoxDecoration(
                                    border: initIndex == index2
                                        ? Border.all(
                                            color: Color.fromARGB(
                                                255, 255, 179, 103))
                                        : null,
                                    borderRadius: BorderRadius.circular(24),
                                    color: Color.fromARGB(255, 40, 40, 40)),
                                height: 186,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/image 9.png'),
                                    Text('LIFX LED Light',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600)),
                                    Text(
                                      'Smart bulb',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: CupertinoColors.inactiveGray),
                                    )
                                  ],
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                initIndex = index3;
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                decoration: BoxDecoration(
                                    border: initIndex == index3
                                        ? Border.all(
                                            color: Color.fromARGB(
                                                255, 255, 179, 103))
                                        : null,
                                    borderRadius: BorderRadius.circular(24),
                                    color: Color.fromARGB(255, 40, 40, 40)),
                                height: 186,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/image 8.png'),
                                    Text('Xiaomi DEM-F600',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600)),
                                    Text(
                                      'Humidifier',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: CupertinoColors.inactiveGray),
                                    )
                                  ],
                                )),
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Color.fromARGB(255, 40, 40, 40)),
                              height: 186,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('assets/Wifi.png'),
                                  Text(
                                    'Not found device?',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
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
              Container(
                height: 63,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 179, 103),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                    onPressed: () {},
                    child: Text(
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
