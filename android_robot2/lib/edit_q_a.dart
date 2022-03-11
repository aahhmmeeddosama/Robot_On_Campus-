import 'package:flutter/material.dart';

import 'API.dart';
  
class Edit_Q_A extends StatefulWidget {
  @override  
  _State createState() => _State();  
}  
  
class _State extends State<Edit_Q_A> {
  @override

  String url='http://192.168.1.11:8003/';
  String? t;
  var Data;

  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  final myController4 = TextEditingController();



  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController1.dispose();
    myController2.dispose();
    myController3.dispose();
    myController4.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {  
    return Scaffold(  
        appBar: AppBar(  
          title: Text('Edit to flutter'),
          backgroundColor: Color.fromARGB(255, 189, 14, 14),
        ),  
        body: Padding(  
            padding: EdgeInsets.all(15),  
            child: Column(  
              children: <Widget>[  
                 Text(
                    'Edit Question',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                      fontFamily: "arial",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(
                    controller: myController1,


                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25.0),
                        borderSide:  BorderSide(color: Colors.red ),),
                      labelText: 'Index',
                      hintText: 'Write Index',
                      labelStyle: TextStyle(
                        color: Colors.black54,
                      ),
                    ),  
                  ),  
                ),  
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(
                    controller: myController2,

//                      url +='&tag=' + value.toString();
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25.0),
                        borderSide:  BorderSide(color: Colors.red ),),
                      labelText: 'Tag',
                      hintText: 'Edit Tag',
                      labelStyle: TextStyle(
                        color: Colors.black54,
                      ),
                    ),  
                  ),  
                ),  
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(
                    controller: myController3,

                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25.0),
                        borderSide:  BorderSide(color: Colors.red ),),
                      labelText: 'Pattern',
                      hintText: 'Edit Pattern',
                      labelStyle: TextStyle(
                        color: Colors.black54,
                      ),
                    ),  
                  ),  
                ),  
                 Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(
                    controller: myController4,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25.0),
                        borderSide:  BorderSide(color: Colors.red ),),
                      labelText: 'Response',
                      hintText: 'add Response',
                      labelStyle: TextStyle(
                        color: Colors.black54,
                      ),
                    ),  
                  ),  
                ),

                ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red[700], // background
                          onPrimary: Colors.white, // foreground
                           minimumSize: Size(120,50),
                            shape: StadiumBorder(),
                        ),
                  onPressed: () async {
                          myController1;
                          myController2;
                          myController3;
                          myController4;
                          String URLL = url+ 'edit?edit='+myController1.text+'&tag='+myController2.text+'&pattern='+myController3.text+'&response='+myController4.text+'&context=kllkj';
                    Data = await Getdata(URLL);
                    myController1.clear();
                    myController2.clear();
                    myController3.clear();
                    myController4.clear();


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