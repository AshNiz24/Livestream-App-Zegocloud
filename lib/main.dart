// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Livestream Demo"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    String user = Random().nextInt(1000).toString();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LiveStreamingScreen(
                          user: user,
                          isHost: true,
                        ),
                      ),
                    );
                  },
                  child: Text("Start Live")),
              ElevatedButton(
                  onPressed: () {
                    String user = Random().nextInt(1000).toString();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LiveStreamingScreen(
                          user: user,
                          isHost: false,
                        ),
                      ),
                    );
                  },
                  child: Text("Join Live")),
            ],
          ),
        ),
      ),
    );
  }
}

class LiveStreamingScreen extends StatelessWidget {
  final String user;
  final bool isHost;
  const LiveStreamingScreen({
    Key? key,
    required this.user,
    required this.isHost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: 566635981,
        appSign:
            "c99c0e3146ddcc9306497e729f08b9fec475f1e111e641d723b2fa83546bf7fa",
        userID: user,
        userName: user,
        liveID: "liveID",
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}

class Aaa extends StatefulWidget {
  const Aaa({Key? key}) : super(key: key);

  @override
  State<Aaa> createState() => _AaaState();
}

class _AaaState extends State<Aaa> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
