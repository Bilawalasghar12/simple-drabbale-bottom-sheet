import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: App(),
      ),
    ),
  );

}
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('DraggableScrollableSheet'),
      ),
      body: SizedBox.fromSize(
        child: DraggableScrollableSheet(
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              color: Colors.blue[100],
              child: ListView.builder(

                controller: scrollController,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Container(color: Colors.green, height: MediaQuery.of(context).size.height, width: 50,);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

