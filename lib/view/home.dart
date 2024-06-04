import 'package:Rimio/adHelper.dart';
import 'package:Rimio/view/searchPage.dart';
import 'package:flutter/material.dart';
import 'package:Rimio/view/homeScreen.dart';
import 'package:Rimio/widgets/bottomBar.dart';
//import 'package:google_mobile_ads/google_mobile_ads.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(height: 40,'assets/Rimio_w.png'),
            const SizedBox(width: 25,),
            GestureDetector(
                child: Image.asset(height: 30,'assets/google-play.png')),
          ],
        ),
        elevation: 20,
        shadowColor: Colors.deepPurple,
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const SearchPage();
              }));
            }, icon: const Icon(Icons.search_rounded, color: Colors.white, size: 30, ),),
          ),
          /*Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Badge(
                  label: Text('6'),
                  backgroundColor: Colors.redAccent,
                  child: Icon(Icons.favorite_rounded, color: Colors.white, size: 30,)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CartPage();
                }));
              },),
          ),*/
        ],
      ),
      body: const homeScreen(),
    );
  }
}
