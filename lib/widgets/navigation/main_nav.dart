import 'package:flutter/cupertino.dart';

class MainNav extends StatelessWidget {
  const MainNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map> _mainOptions = [
      {
        "category": "Sports",
        "backgroundColor": const Color.fromRGBO(134, 148, 188, 1),
      },
      {
        "category": "Music",
        "backgroundColor": const Color.fromRGBO(253, 237, 225, 1),
      },
      {
        "category": "Culture",
        "backgroundColor": const Color.fromRGBO(190, 225, 230, 1),
      }
    ];
    return Container(
        margin: const EdgeInsets.only(left: 5),
        height: 150,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(0, 0, 9, 0),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.2,
                              offset: Offset(1.0, 1.0),
                              color: Color.fromRGBO(0, 0, 0, 0.3)),
                        ],
                        color: Color.fromRGBO(223, 231, 253, 1),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const SizedBox(
                          height: 40,
                          width: 130,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("SPORTS",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(134, 148, 188, 1))),
                          ))),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.2,
                              offset: Offset(1.0, 1.0),
                              color: Color.fromRGBO(0, 0, 0, 0.3)),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const SizedBox(
                          height: 40,
                          width: 130,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Music",
                              textAlign: TextAlign.end,
                            ),
                          ))),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.2,
                              offset: Offset(1.0, 1.0),
                              color: Color.fromRGBO(0, 0, 0, 0.3)),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const SizedBox(
                          height: 40,
                          width: 130,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Culture",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.end,
                            ),
                          )))
                ])));
  }
}
