import 'package:birthday_app/Widgets/slides_widget.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class SlidesScreen extends StatelessWidget {
  final slides = [
    {
      'caption': '#pHotOGrEpHEr',
      'img_url': '0.jpg',
      'pc': Colors.black,
      'tc': Colors.white
    },
    {
      'caption': '#sMOl',
      'img_url': '1.jpg',
      'pc': Colors.white,
      'tc': Colors.indigo[700]
    },
    {
      'caption': '#sQuADgOalS',
      'img_url': '2.jpg',
      'pc': Colors.indigo[700],
      'tc': Colors.lightGreenAccent
    },
    {
      'caption': '1 little 2 little 3 little Inians',
      'img_url': '3.jpg',
      'pc': Colors.lightGreenAccent,
      'tc': Colors.pink[700]
    },
    {
      'caption': 'A day with my Big Buddies !',
      'img_url': '4.jpg',
      'pc': Colors.pink[700],
      'tc': Colors.yellow
    },
    {
      'caption': 'Get me a pastry and I will be happy !',
      'img_url': '5.jpg',
      'pc': Colors.yellow,
      'tc': Colors.brown[700]
    },
    {
      'caption': 'Holy Water !!!!',
      'img_url': '6.jpg',
      'pc': Colors.brown[700],
      'tc': Colors.red
    },
    {
      'caption': 'I may be smol but I can eat your head a lot !',
      'img_url': '7.jpg',
      'pc': Colors.red,
      'tc': Colors.black
    },
    {
      'caption': 'My SnapChat partner !',
      'img_url': '8.jpg',
      'pc': Colors.black,
      'tc': Colors.white
    },
    {
      'caption': 'Oh Wait.. Did I just graduate!',
      'img_url': '9.jpg',
      'pc': Colors.white,
      'tc': Colors.indigo[700]
    },
    {
      'caption': 'Parabola Kon Bola',
      'img_url': '10.jpg',
      'pc': Colors.indigo[700],
      'tc': Colors.lightGreenAccent
    },
    {
      'caption': 'Permanent Mood !',
      'img_url': '11.jpg',
      'pc': Colors.lightGreenAccent,
      'tc': Colors.pink[700]
    },
    {
      'caption': 'Plipplop Plipplop !',
      'img_url': '12.jpg',
      'pc': Colors.pink[700],
      'tc': Colors.yellow
    },
    {
      'caption': 'Q.How much do you love fairy Lights.. Me..Yes',
      'img_url': '13.jpg',
      'pc': Colors.yellow,
      'tc': Colors.brown[700]
    },
    {
      'caption': 'She smiled for me !',
      'img_url': '14.jpg',
      'pc': Colors.brown[700],
      'tc': Colors.red
    },
    {
      'caption': 'Sleep, sleep and sleep !',
      'img_url': '15.jpg',
      'pc': Colors.red,
      'tc': Colors.black
    },
    {
      'caption':
          'The emotion I know pefectly how to portray among many others !',
      'img_url': '16.jpg',
      'pc': Colors.black,
      'tc': Colors.white
    },
    {
      'caption': 'The ONLY day people said.. You have indeed grown up !',
      'img_url': '17.jpg',
      'pc': Colors.white,
      'tc': Colors.indigo[700]
    },
    {
      'caption': 'The source of my eternal Peace !',
      'img_url': '18.jpg',
      'pc': Colors.indigo[700],
      'tc': Colors.lightGreenAccent
    },
    {
      'caption': 'trek',
      'img_url': '19.jpg',
      'pc': Colors.lightGreenAccent,
      'tc': Colors.pink[700]
    },
    {
      'caption': 'We took a Polaroid !',
      'img_url': '20.jpg',
      'pc': Colors.pink[700],
      'tc': Colors.yellow
    },
    {
      'caption': 'When I was a little kid... Oh I still am a kid',
      'img_url': '21.jpg',
      'pc': Colors.yellow,
      'tc': Colors.purple
    },
    {
      'caption': 'You can wrap me in a bag and no one shall notice !',
      'img_url': '22.jpg',
      'pc': Colors.purple,
      'tc': Colors.black
    },
  ];

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: LiquidSwipe(
        fullTransitionValue: 500,
        enableSlideIcon: true,
        enableLoop: true,
        positionSlideIcon: 0.75,
        pages: slides.map((e) {
          return SlidesWidget(
            imageUrl: e['img_url'],
            caption: e['caption'],
            width: width,
            height: height,
            pageColor: e['pc'],
            textColor: e['tc'],
          );
        }).toList(),
      )),
    );
  }
}
