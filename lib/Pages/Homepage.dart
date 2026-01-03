import 'package:flutter/material.dart';
import '../util/emoticons.dart';
import '../util/excerciselist.dart';
import 'Notification_page.dart';
import 'package:intl/intl.dart';

class Homepage extends StatefulWidget {
  final String today = DateFormat('dd-MMM-yyyy').format(DateTime.now());
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Introduction Section
                          Text(
                            "Hi, Anurag Jain P!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            widget.today,
                            style: TextStyle(
                              color: Colors.blue[200],
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      //Notification Page
                      GestureDetector(
                        onTap:
                            () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NotificationPage(),
                              ),
                            ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),

                  //Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.blue[200]),
                          SizedBox(width: 10),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.blue[200],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 30),
                  //How do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you Feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 20),
                  //Mood Section
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            //bad
                            Emoticons(emoticon: '😔'),
                            SizedBox(height: 5),
                            Text(
                              'Badly',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            //Fine
                            Emoticons(emoticon: '😐'),
                            SizedBox(height: 5),
                            Text(
                              'Fine',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            //Well
                            Emoticons(emoticon: '😊'),
                            SizedBox(height: 5),
                            Text(
                              'Well',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            //excellent
                            Emoticons(emoticon: '😄'),
                            SizedBox(height: 5),
                            Text(
                              'Excellent',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            //Exercise Section
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(height: 10),
                      //ListView of exercises
                      Expanded(
                        child: ListView(
                          children: [
                            ExcerciseListeTile(
                              icon: Icons.favorite,
                              excerciseName: 'Speaking Skills',
                              numberOfExcercises: 16,
                              color: Colors.orange,
                            ),
                            SizedBox(height: 20),
                            ExcerciseListeTile(
                              icon: Icons.mood,
                              excerciseName: 'Mood Tracking',
                              numberOfExcercises: 8,
                              color: Colors.blue,
                            ),
                            SizedBox(height: 20),
                            ExcerciseListeTile(
                              icon: Icons.emoji_events,
                              excerciseName: 'Stress Management',
                              numberOfExcercises: 12,
                              color: Colors.green,
                            ),
                            SizedBox(height: 20),
                            ExcerciseListeTile(
                              icon: Icons.emoji_events,
                              excerciseName: 'Stress Management',
                              numberOfExcercises: 12,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
