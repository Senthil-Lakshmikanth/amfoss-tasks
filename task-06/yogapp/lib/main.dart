import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown),
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color.fromARGB(255,214,203,199),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Color.fromARGB(255,214,203,199),

      pages: [
        PageViewModel(
          title: "YOGA SURGE",
          body: "Welcome to Yoga World\n\n Inhale the Future exhale the past", 
          image: _buildImage('page1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Healthy Freak Exercise",
          body: "Letting go of the hardest asana",
          image: _buildImage('page2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Cycling",
          body:
              "You cannot always control what \n goes on outside . But you can \n always control the inside",
          image: _buildImage('page3.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Meditation",
          body: "The longest Journey of any person \n is the journey inward.",
          image: _buildImage('page4.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      showNextButton: false,
      showDoneButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Get Started', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.white,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {

  var defaultText = TextStyle(color: Color.fromARGB(255, 0, 0, 0));
  var linkText = TextStyle(color: Colors.indigo);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
          ),
            title: const Text('Welcome'),
            backgroundColor: Color.fromARGB(255,214,203,199)),
        body: Column(
          children: <Widget>[
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              child: new Image.asset('assets/welcome.png'),
              alignment: Alignment.center,
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              //alignment: Alignment.center,
              child: Text("\n Senthil Lakshmikanth \n",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              //alignment: Alignment.center,
              child: RichText(
                text:TextSpan(
                  children: [
                    TextSpan(
                      style: defaultText,
                      text: "About Me : "
                      ),
                      TextSpan(
                        style: linkText,
                        text: "Click Here",
                        recognizer: TapGestureRecognizer()..onTap = () async {
                          var url = "https://youtu.be/q52_nLxJ2TY?t=83";
                          if (await canLaunch(url)){
                            await launch(url);
                          } else{
                            throw "Cannot load Url";
                          }
                        }
                      )
                  ]
                ),
              )
            )
          ],
        ),
      ),
      color: Color.fromARGB(255, 255, 255, 255),
    );
  }
}