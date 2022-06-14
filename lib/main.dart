import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/model.dart';

void main() {
  runApp(MaterialApp(
    home: prodemo(),
  ));
}

class prodemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => model(),
     child: Consumer<model>(builder: (context, m, child) {
      return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(controller: m.t1,),
            TextField(controller: m.t2,),
            ElevatedButton(onPressed: () {
              m.get(m.t1.text, m.t2.text, "sum");
            },
                child: Text("sum")),
            ElevatedButton(onPressed: () {
              m.get(m.t1.text, m.t2.text, "sub");
            },
                child: Text("sub")),
            ElevatedButton(onPressed: () {
              m.get(m.t1.text, m.t2.text, "div");
            },
                child: Text("div")),
            Text("${m.sum}")
          ],
        ),
      );
      },
    ),
    );
  }
}

