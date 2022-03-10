import 'package:flutter/material.dart';
import 'API.dart';
import 'dart:convert';

class Delete_Q_A extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Delete_Q_A> {
  var formKey = GlobalKey<FormState>();
  @override
  String? url;
  var Data;
  String QueryText = 'delete';

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Delete to flutter'),
          backgroundColor: Color.fromARGB(255, 189, 14, 14),
        ),
        body: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                Text(
                  'Delete Question',
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
                    child: TextFormField(
                      keyboardType:
                          TextInputType.number, //keyboard bytft7 3ala numbers
                      // controller: myController1,
                      decoration: InputDecoration(
                          hintText: 'Delete Tag',
                          labelText: 'Delete Tag',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          )),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please write tag that you want to delete';
                        } else if (value.length > 3) {
                          return 'Minimum 3 characters';
                        } else {
                          return null;
                        }
                      },
                    )),

                //  TextField(
                //   onChanged: (value) {
                //     url = 'http://192.168.1.11:8003/bot?delete=' + value.toString();
                //   },

                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     labelText: 'write tag that you want to delete',

                //   ),
                // ),
                // ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[700], // background
                    onPrimary: Colors.white, // foreground
                    minimumSize: Size(120, 50),
                    shape: StadiumBorder(),
                  ),
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      Data = await Getdata(url);

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );

                      setState(() {
                        QueryText = Data['delete'];
                      });
                    }
                  },
                  child: Text('Delete', style: TextStyle(fontSize: 20)),
                )
              ],
            )));
  }
}
