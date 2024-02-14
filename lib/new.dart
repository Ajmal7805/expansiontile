import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  List<String> myList = [
    'IZEE GROUP OF INSTITUTION',
    "DEAN",
    'DBMS PROFESSOR',
    'AI PROFESSOR',
    'CYBER PROFESSOR',
    'CA PROFESSOR'
  ];
  List<String> lists = ['Principal', '', '', '', '', ''];
  List<String> listsd = [
    'Mr.murali krishna',
    'Mrs.nancy',
    'Mr.ganesh',
    'Mr.dr babu',
    'Mr.shabareesh',
    'Mrs.monisha'
  ];
  Color? statuscolor;

  @override
  void initState() {
    if(myList=='IZEE GROUP OF INSTITUTION'){statuscolor= Colors.red;}
    else{statuscolor= Colors.black;}
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          margin: EdgeInsets.all(25),
          child: ListView.builder(
            itemCount: myList.length,
            itemBuilder: (context, index) {
              String item = myList[index];
              return ExpansionTile(

                title: Text(
                  item,
                  style: TextStyle(color: statuscolor, fontSize: 20),
                ),
                subtitle: Text(lists[index]),
                children: <Widget>[
                  ListTile(title: Text(listsd[index])),
                ],
              );
            },
          )),
    );
  }
}
