import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myfocus;
  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      myfocus = FocusNode();
    }

    @override
      void dispose() {
        // TODO: implement dispose
        super.dispose();
        myfocus.dispose();
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('form lesson 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'first name',),
              ),
              TextFormField(
                focusNode: myfocus,
                decoration: InputDecoration(
                  hintText: 'Last name',),
              ),
            ],
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:Text('next') ,
        onPressed: () => myfocus.requestFocus(),
        ),
    );
  }
}