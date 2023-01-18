import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4EDDB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF4EDDB),
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.cancel_outlined,
              color: Color(
                0xFF232B55,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 70,
          ),
          Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFFE7626C),
            ),
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.timelapse_outlined,
                ),
                Text(
                  "TIME",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      '25',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'SESSTIONS',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      '25',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'SESSTIONS',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      '25',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'SESSTIONS',
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 170,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      '25',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'SESSTIONS',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 170,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      '25',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'SESSTIONS',
                    ),
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15,
            ),
          ),
          Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFFE7626C),
            ),
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.music_video_outlined,
                ),
                Text(
                  "SOUND",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      '25',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'SESSTIONS',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 10,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE7626C),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      '25',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'SESSTIONS',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 10,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE7626C),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      '25',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'SESSTIONS',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 10,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE7626C),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
