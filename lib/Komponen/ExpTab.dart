import 'package:flutter/material.dart';


class ExpTab extends StatefulWidget {
  const ExpTab({super.key});

  @override
  State<ExpTab> createState() => _ExpTabState();
}

class _ExpTabState extends State<ExpTab> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 20.0;
    final textSize = 14.0;
    return Container(
      margin: EdgeInsets.all(size.width * (padSize / size.width)),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            Colors.blue.withOpacity(0.075),
            Colors.blue.withOpacity(0),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Padding(
            padding: EdgeInsets.all(size.width * (padSize / 4 / size.width)),
            child: Image.asset('images/ExpBackground.png'),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * (textSize / size.width)),
                child: Image.asset('images/Group 39.png'),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "121 XP to your next treasure",
                      style: TextStyle(
                        color: Color(0xFF4A4A4A),
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * (textSize  / size.width),
                        fontFamily: 'Lato',
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: size.width * (padSize / 4 / size.width)),
                      child: Stack(
                        children: [
                          Container(
                            height: size.width * (padSize / 4 / size.width),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          FractionallySizedBox(
                            widthFactor: 0.85,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: size.width * (padSize / 4 / size.width),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.all(size.width * (padSize / size.width)),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: size.width * (padSize / size.width),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}