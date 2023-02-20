import 'package:flutter/material.dart';
import 'package:edflingdatingapp/Matched_Profiles.dart';

class Matched_Profiles extends StatefulWidget {
  const Matched_Profiles({Key? key}) : super(key: key);

  @override
  State<Matched_Profiles> createState() => _Matched_ProfilesState();
}

class _Matched_ProfilesState extends State<Matched_Profiles> {
  final List<String> _listItem = [
    'assets/images/m1.jpg',
    'assets/images/m2.jpg',
    'assets/images/m5.jpg',
    'assets/images/m4.jpg',
    'assets/images/m3.jpg',
    'assets/images/m6.jpg',
  ];
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.pink.shade50,
          labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          height: 60,
        backgroundColor: Colors.transparent,
        selectedIndex: index,
        onDestinationSelected: (index)=>setState(() =>
          this.index=index
          ),
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.map),
              label: 'Map'),
          NavigationDestination(
              icon: Icon(Icons.heart_broken),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.chat),
              label: 'Chat'),
          NavigationDestination(
              icon: Icon(Icons.account_box),
              label: 'Account'),
        ],
      ),
      ),
      //backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back,color: Colors.pink,),
        title: Text("All Match(279)",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
        actions: [
          IconButton(onPressed:(){} ,
              icon: Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Container(
                    child: Icon(Icons.search,
                      color: Colors.pink,),

                ),
              )
          ),
          IconButton(onPressed: (){},
              icon: Icon(Icons.sort_rounded,color: Colors.pink,))
        ],

      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[

              
              SizedBox(height: 10,),
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: _listItem.map((item) => Card(
                      elevation: 0,
                      child: Container(
                        padding: EdgeInsets.only(top: 100,left: 20),
                        child: Text("Micheal, 22",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.pink ),
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.8, 1),
                            colors: <Color>[
                              Color(0xff1f005c),
                              Color(0xff5b0060),
                              Color(0xff870160),
                              Color(0xffac255e),
                              Color(0xffca485c),
                              Color(0xffe16b5c),
                              Color(0xfff39060),
                              Color(0xffffb56b),
                            ], // Gradient from https://learnui.design/tools/gradient-generator.html
                            tileMode: TileMode.mirror,
                          ),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    )).toList(),
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
