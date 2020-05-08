import 'package:flutter/material.dart';
import 'package:travel_app/data/page_models.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current_index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            pages[_current_index].img,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  'Skip Tutorial',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: size.height * .4,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        pages[_current_index].icon,
                        color: Colors.red[500],
                        size: 40,
                      ),
                      Text(
                        pages[_current_index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Container(
                        width: size.width * .6,
                        child: Text(
                          pages[_current_index].subtitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                      Container(
                        width: size.width * .8,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Material(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (_current_index < 2) _current_index++;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: _current_index == 2
                                      ? Colors.red[500]
                                      : Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    _current_index == 2
                                        ? "Let's start"
                                        : "Next",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: _current_index == 2
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 10,
                            width: 10,
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current_index == 0
                                  ? Colors.black
                                  : Colors.grey[300],
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current_index == 1
                                  ? Colors.black
                                  : Colors.grey[300],
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current_index == 2
                                  ? Colors.black
                                  : Colors.grey[300],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
