import '../Widgets/top_card.dart';
import '../Widgets/bottom_card.dart';
import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';

class MessageScreen extends StatelessWidget {
  final List messages = [
    {'color':Colors.deepPurple,'name': 'Varad', 'message': 'To the most cheerful and positive person I have ever met so far....\nIf there\'s one thing that I have ever known about you from the time we have spent as friends together is that whenever there is a person so positive and encouraging with you, there\'s always hope. We all face the ups and downs in our lives. But what defines us is the way we pull ourselves out of those situations. And boy I must say, what better example to give than yours. I have seen your will to fight in every tough situation. May it be our college examinations or may it be your life. You have always given the toughest of fights to every situation. I sincerely feel very proud of you when I think of all the situations you have gone through and the way you have punched them hard in the face. Staying away from your childhood friends, staying away from Baba for months are just among those instances that have proven that you have a heart of steel. You have always shown that a person who is so tough in her life can also be as soft and comforting at the same time...\nI have never ever felt any hesitation in calling you a FIGHTER.\n\nKeep fighting my friend...\nKeep fighting...\nWish you all the best for your future endeavours and may you achieve everything that you always have wanted to achieve...\nMay God be with you and wish you God Speed :")', 'image_url': 'assets/images/Varad.jpeg'},
    {'color':Colors.pink[900],'name': 'Megha', 'message': '\“Yaadon ke purane album mein, Chhupa ke rakhe hain humne woh din\nWoh din bhi kya din the\”\nHere we meet again mai tera peecha thodi chodu gi lifetime forever asse h thang karte rahana hai mane tujhe meri personal advicer urf best friend one in infinity.\nSince the time our friendship started it’s been an amazing ride from your Shawn Mendes to Mini tr ke fav to getting out of class for badminton practice to smillinggg a lot to writing on chits to gossip at tuitions to you actually understanding me to you not coming to school uff mujhe akhele chod dete thi to throwball practice session to pulling of an unforgettable 6 years of friendship and more to come ek tho important baat bhool hai gai hostel mai raat ko vo ek call aaya tha ki Megha kuch baatana h  shhh!! Vo sabse jayada unexpected tha especially from you but thanks mujhe special feel karne ke liya .\nFinally, now you being mature yet cute as always women come on bro you are 19 now hehe!!\nItna sab nhi likh sakti bss itna bol sakti hu be always the Gayatri I know never let go of what you cherish I am just one call away and thank you for always being there for me no matter what tere advice ke bina hum kuch nhi and ek aur baat kabhi bhi kuch bhi ho you need my help formalities ko ghar per chodke aana.\nChalo madam chalte h duaaon mein yaad rakhna .\nLove you Gayu !!!', 'image_url': 'assets/images/Megha.jpg'},
    {'color':Colors.indigo[900],'name': 'Prajakta', 'message': 'From ever since I can remember, I have had this sweetest, adorable, kind and smart little friend. As we grew up together, our friendship only flourished, and you kept on making me a better person. Although we lived in different countries, we remained best friends, partners in crime- sisters. Thank you for being the best friend anyone could ask for, thank you for all the memories we created together, thank you for being my person whenever I needed. Even if you\'re 19, I can point out absolutely no difference between you and the little girl in the pink frock who has been at my side ever since I was 4 years old. Keep on smiling and making everyone around you smile. Happy 19 Gayatri🎂🎉 love you to the moon and back♥️♥️', 'image_url': 'assets/images/Prajakta.jpg'},
    {'color':Colors.cyan[900],'name': 'Pranav', 'message': 'Dear Gayu,\nSince the day I met you, you\'ve always struck to me as mast, cool and caring type. I\'ve always been fond of how good and caring you are towards your friends. You genuinely try to listen to what others have to say, which I feel is such an uncommon trait. Honestly, you\'re the coolest gal I\'d love to hangout anytime. And yes, if you need anyone to listen to, or complain about Varad :P, you can count on me anytime!\nHappy birthday!', 'image_url': 'assets/images/Pranav.JPG'},
    {'color':Colors.teal[900],'name': 'Dhanashree', 'message': 'To the cutest, kindest and purest heart out there, a very happy birthday!\nYou were probably the first person I made Kinda friends with in college. You are unique and a very heartwarming friend of mine.. the one who is always up for some fun, roasting but at the same time the one which can be relied upon! An extremely funny and fun package full of life!\nKeep looking cute while you smile,\nKeep hopping with joy over small things and\nKeep spreading happiness as you always do!\nLove you Gayu! Happy birthday', 'image_url': 'assets/images/DC.jpeg'},
    {'color':Colors.amber[900],'name': 'Vaishnavi', 'message': 'Hey Gayu\nFirst of all miss u so much \nSo college madhe saglyat aadhi bhetleli classmate mhanje tu .ikdam chill and active . You are the cutest person I have ever met . Sad life ki we are not in same class now 🥺 I miss all that masti and all while lectures but don\'t worry I will be there for teasing you🤪 so jyada khush mat hona and ha keep growing and my all blessings are with u hope we will meet soon\nLove u so much smolwon', 'image_url': 'assets/images/Vaishnavi.jpeg'},
    {'color':Colors.blue[900],'name': 'PlipPlop', 'message': 'To my little ball of sunshine, have an amazing year\nPlipPlop PlipPlop\n!!Happy Birthday!!\nPlipPlop PlipPlop', 'image_url': 'assets/images/Karishma.jpeg'},
  ];
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: ListView(
          children: messages.map((e) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 30),
              child: SlimyCard(
                color: e['color'],
                width: width-50,
                topCardHeight: 500,
                bottomCardHeight: 500,
                borderRadius: 8,
                topCardWidget: TopCard(imgUrl: e['image_url'],name: e['name'],),
                bottomCardWidget: BottomCard(message: e['message'],),
                slimeEnabled: true,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}