import 'package:flutter/material.dart';


class vvv extends StatefulWidget {
  const vvv({Key? key}) : super(key: key);

  @override
  State<vvv> createState() => _vvvState();
}

class _vvvState extends State<vvv> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(
                  left: 14.0, right: 14.0, top: 10.0),
              child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Colors.white,
                    ),
                    child: ExpansionTile(
                      onExpansionChanged: (bool expanded) {
                        setState(() => isOpen = expanded);
                      },
                      title: Text(
                        'How can I update my profile',
                        style: TextStyle(
                            color: Colors.green.withOpacity(0.8)),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.brown),
                        child: Icon(
                          isOpen ? Icons.remove : Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      children: [
                        ListTile(
                            title: Text(
                                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit',
                                style: TextStyle(
                                    color: Colors.black
                                        .withOpacity(0.5)))),
                      ],
                    ),
                  )),
            );
          }) ,
    );
  }
}
