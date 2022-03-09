import 'package:flutter/material.dart';

import 'api.dart';

class Add_Q_A extends StatefulWidget {
  const Add_Q_A({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Add_Q_A> {
  @override

  String url='http://192.168.1.11:8003/';
  String? t;
  var Data;

  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController1.dispose();
    myController2.dispose();
    myController3.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add to flutter'),
          backgroundColor: Color.fromARGB(255, 189, 14, 14), 
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Text(
                  'Add Question',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    fontFamily: "arial",
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 50, 20),
            child: Image.asset('assets/images/logo_miu.png'),
          ),
                
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: myController1,


                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Add the Tag',
                      hintText: 'Add',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: myController2,

//                      url +='&tag=' + value.toString();
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Pattern',
                      hintText: 'Add the Question',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: myController3,
//url +='&pattern=' + value.toString();
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Response',
                      hintText: 'Enter the answer of the question',
                    ),
                    
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[700], // background
                    onPrimary: Colors.white, // foreground
                    minimumSize: Size(200,50),
                    shape: StadiumBorder(),
                  ),
                  onPressed: () async {
                    myController1;
                    myController2;
                    myController3;
                    String URLL = url+ 'add?tag='+myController1.text+'&patterns='+myController2.text+'&responses='+myController3.text;
                    Data = await Getdata(URLL);
                    myController1.clear();
                    myController2.clear();
                    myController3.clear();


                    return setState(() {});

                    /*setState(() {
                      QueryText = Data['delete'] ;
                    });*/
                  },
                  child: Text('Submit',style: TextStyle(fontSize: 20)),
                )
              ],
            )
        )
    );
  }
}