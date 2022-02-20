import 'package:flutter/cupertino.dart';

class MainNav extends StatelessWidget {
  const MainNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> _mainOptions = [
      {
        "category": "SPORTS",
        "backgroundColor": const Color.fromRGBO(223, 231, 253, 1),
        "textColor": const Color.fromRGBO(134, 148, 188, 1)
      },
      {
        "category": "MUSIC",
        "backgroundColor": const Color.fromRGBO(253, 237, 225, 1),
        "textColor": const Color.fromRGBO(220, 203, 190, 1),
      },
      {
        "category": "CULTURE",
        "backgroundColor": const Color.fromRGBO(190, 225, 230, 1),
        "textColor": const Color.fromRGBO(167, 191, 195, 1)
      }
    ];

    final List<Map<String, dynamic>> _sportsOptions = [
      {
        "category": "NBA",
        "backgroundColor": const Color.fromRGBO(223, 231, 253, 1),
        "textColor": const Color.fromRGBO(134, 148, 188, 1)
      },
      {
        "category": "NFL",
        "backgroundColor": const Color.fromRGBO(253, 237, 225, 1),
        "textColor": const Color.fromRGBO(220, 203, 190, 1),
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
        child: Column(children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ..._mainOptions.map((mainOption) => Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 1.2,
                                offset: Offset(1.0, 1.0),
                                color: Color.fromRGBO(0, 0, 0, 0.3)),
                          ],
                          color: mainOption['backgroundColor'],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: SizedBox(
                            height: 40,
                            width: 130,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(mainOption['category'],
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w600,
                                      color: mainOption['textColor'])),
                            ))))
                  ])),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: const SizedBox(height: 10)),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ..._mainOptions.map((mainOption) => Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 1.2,
                                    offset: Offset(1.0, 1.0),
                                    color: Color.fromRGBO(0, 0, 0, 0.3)),
                              ],
                              color: mainOption['backgroundColor'],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: SizedBox(
                                height: 40,
                                width: 130,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(mainOption['category'],
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w600,
                                          color: mainOption['textColor'])),
                                ))))
                      ])))
        ]));
  }
}
