import 'package:flutter/material.dart';

class DetailSport extends StatefulWidget {
  final String strSportThumb;
  final String strSport;
  final String strSportDescription;
  DetailSport({Key? key, required this.strSportThumb, required this.strSport, required this.strSportDescription}) : super(key: key);

  @override
  State<DetailSport> createState() => _DetailSportState();
}

class _DetailSportState extends State<DetailSport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Detail Sport"),
      ),
      body: Center(
        child: Card(
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                Image.network(widget.strSportThumb),
                Text(widget.strSport),
                Text(widget.strSportDescription),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
