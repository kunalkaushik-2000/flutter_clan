import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black,
          primaryColor: Colors.black,
          textTheme: Theme.of(context).textTheme.copyWith(caption: const TextStyle(color: Colors.black),),), // sets the inactive color of the `BottomNavigationBar`
        child:  BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          iconSize: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              first(height, width),
              const Divider(color: Colors.white, thickness: 3,),
              second(height, width),
              const Divider(color: Colors.white, thickness: 3,),
              third(height, width),
              const Divider(color: Colors.white, thickness: 3,),
              fourth(height, width),
              const Divider(color: Colors.white, thickness: 3,),
              fifth(height, width),
              const Divider(color: Colors.white, thickness: 3,),
              sixth(height, width),
            ],
          ),
        ),
      ),
    );
  }

  Widget first(double height, double width){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: height*0.5,
                width: width,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.amber),
                ),
                child: Image.network("https://qph.cf2.quoracdn.net/main-qimg-9ffec1894d6bce29172cb7f3f28ff850-lq", fit: BoxFit.fill,),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                height: height*0.2,
                width: width,
                color: Colors.black54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Clan name: Lorem Ipsum', style: GoogleFonts.varelaRound(color: Colors.white, fontSize: 24),),
                    SizedBox(height: 20,),
                    Text('28 members, 5 online', style: GoogleFonts.varelaRound(color: Colors.white, fontSize: 22),),
                  ],),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget second(double height, double width){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Achievements', style: GoogleFonts.varelaRound(color: Colors.amber, fontSize: 22),),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: height*0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Current League', style: GoogleFonts.varelaRound(color: Colors.pinkAccent, fontSize: 22),),
                      Text('League Ranking', style: GoogleFonts.varelaRound(color: Colors.pinkAccent, fontSize: 22),),
                      Text('Experience', style: GoogleFonts.varelaRound(color: Colors.pinkAccent, fontSize: 22),),
                      Text('# of wins', style: GoogleFonts.varelaRound(color: Colors.pinkAccent, fontSize: 22),),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height*0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.shield, color: Colors.orangeAccent, size: 70,),
                    Text('11th', style: GoogleFonts.varelaRound(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 42),),
                    Text('2000 xp', style: GoogleFonts.varelaRound(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 28),),
                    Text('3', style: GoogleFonts.varelaRound(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 28),),
                  ],
                ),
              )
            ],
          ),
        ],
      )
    );
  }

  Widget third(double height, double width){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Past featured performances', style: GoogleFonts.varelaRound(color: Colors.amber, fontSize: 22),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Image.network('https://media.istockphoto.com/photos/laptop-webcam-view-indian-woman-communicating-distantly-by-video-call-picture-id1224889787?k=20&m=1224889787&s=612x612&w=0&h=rIiwvLGLB_i6cNutaQw22wKfjZ_hh0QW4QFUWtlrdJ4=', height: width*0.3, width: width*0.3, fit: BoxFit.cover,)),
                const SizedBox(width: 20,),
                SizedBox(
                  width: width*0.5,
                  child: Text('Priya in International Debating League', style: GoogleFonts.varelaRound(color: Colors.pinkAccent, fontSize: 18),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Image.network('https://media.istockphoto.com/photos/laptop-webcam-view-indian-woman-communicating-distantly-by-video-call-picture-id1224889787?k=20&m=1224889787&s=612x612&w=0&h=rIiwvLGLB_i6cNutaQw22wKfjZ_hh0QW4QFUWtlrdJ4=', height: width*0.3, width: width*0.3, fit: BoxFit.cover,)),
                const SizedBox(width: 20,),
                SizedBox(
                  width: width*0.5,
                  child: Text('Akshay in Global Quizzing Finals', style: GoogleFonts.varelaRound(color: Colors.pinkAccent, fontSize: 18),),
                ),
              ],
            ),
          ),
          Align(alignment: Alignment.center, child: Text('see more', style: GoogleFonts.varelaRound(color: Colors.amber, fontSize: 14),)),
        ],
      ),
    );
  }

  Widget fourth(double height, double width){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Align(alignment: Alignment.centerLeft, child: Text('Live clan activities on platform', style: GoogleFonts.varelaRound(color: Colors.amber, fontSize: 22),)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network('https://wallpaper.dog/large/17250799.jpg', height: width*0.3, width: width, fit: BoxFit.cover),
                Container(alignment: Alignment.center, width: width, height: width*0.3, color: Colors.black54, child: Text('Live trading championship', style: GoogleFonts.varelaRound(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network('https://wallpaper.dog/large/17250799.jpg', height: width*0.3, width: width, fit: BoxFit.cover),
                Container(alignment: Alignment.center, width: width, height: width*0.3, color: Colors.black54, child: Text('Treasure hunt', style: GoogleFonts.varelaRound(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
              ],
            ),
          ),
          Text('see more', style: GoogleFonts.varelaRound(color: Colors.amber, fontSize: 14),),
        ],
      ),
    );
  }

  Widget fifth(double height, double width){
    return Container(
      width: width,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Clan discussions', style: GoogleFonts.varelaRound(color: Colors.amber, fontSize: 22),),
          const SizedBox(height: 20,),
          Text('General thread:', overflow: TextOverflow.ellipsis, style: GoogleFonts.varelaRound(color: Colors.pinkAccent, fontSize: 18),),
          const SizedBox(height: 5,),
          Text('15 unread messages', style: GoogleFonts.varelaRound(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
          const SizedBox(height: 20,),
          Text('(live) Anyone enthu for trading leagues paricipation:', overflow: TextOverflow.ellipsis, style: GoogleFonts.varelaRound(color: Colors.pinkAccent, fontSize: 18),),
          const SizedBox(height: 5,),
          Text('10 unread messages', style: GoogleFonts.varelaRound(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
          const SizedBox(height: 20,),
          Text('(live) Anyone enthu for trading leagues paricipation:', overflow: TextOverflow.ellipsis, style: GoogleFonts.varelaRound(color: Colors.pinkAccent, fontSize: 18),),
          const SizedBox(height: 5,),
          Text('10 unread messages', style: GoogleFonts.varelaRound(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
          const SizedBox(height: 20,),
          Align(alignment: Alignment.center, child: Text('see more', style: GoogleFonts.varelaRound(color: Colors.amber, fontSize: 14),)),
        ],
      ),
    );
  }

  Widget sixth(double height, double width){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Clan members', style: GoogleFonts.varelaRound(color: Colors.amber, fontSize: 22),),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(backgroundImage: NetworkImage("https://image.shutterstock.com/image-photo/human-face-women-portrait-260nw-296481974.jpg"), radius: 30,),
                const SizedBox(width: 20,),
                SizedBox(width: width*0.6, child: Text('Lorem Ipsum - Clan head', style: GoogleFonts.varelaRound(color: Colors.pinkAccent, fontSize: 18),)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(backgroundImage: NetworkImage("https://image.shutterstock.com/image-photo/asian-woman-smiling-happy-portrait-260nw-96418745.jpg"), radius: 30,),
                const SizedBox(width: 20,),
                SizedBox(width: width*0.6, child: Text('Lorem Ipsum - Debating Sensei', style: GoogleFonts.varelaRound(color: Colors.pinkAccent, fontSize: 18),)),
              ],
            ),
          ),
          Align(alignment: Alignment.center, child: Text('see more', style: GoogleFonts.varelaRound(color: Colors.amber, fontSize: 14),)),
        ],
      ),
    );
  }
}

