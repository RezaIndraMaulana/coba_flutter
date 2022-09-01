import 'package:flutter/material.dart';
import 'AllSportsModel.dart';
import 'dart:convert';
import 'DetailSport.dart';
import 'package:http/http.dart' as http;

class ListAllSport extends StatefulWidget {
  const ListAllSport({Key? key}) : super(key: key);

  @override
  State<ListAllSport> createState() => _ListAllSportState();
}

class _ListAllSportState extends State<ListAllSport> {
  AllSportsModel? allSportsModel;
  bool isloaded = true;

  void getAllListBB() async {
    setState(() {
      isloaded = false;
    });
    final res = await http.get(
      Uri.parse("https://www.thesportsdb.com/api/v1/json/2/all_sports.php"),
    );
    print("status code " + res.statusCode.toString());
    allSportsModel = AllSportsModel.fromJson(json.decode(res.body.toString()));
    print("sport 1: " + allSportsModel!.sports![0].strSport.toString());
    setState(() {
      isloaded = true;
    });
  }

  @override
  void initState() {
    super.initState();
    getAllListBB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("List All Sport"),
      ),
      body: Center(
        child: Container(
          child: isloaded ? ListView.builder(
              itemCount: allSportsModel!.sports!.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailSport(strSportThumb: allSportsModel!.sports![index].strSportThumb.toString(), strSport: allSportsModel!.sports![index].strSport.toString(), strSportDescription: allSportsModel!.sports![index].strSportDescription.toString(),))
                    );
                  },
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Container( width: 120, height: 50, decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  allSportsModel!.sports![index].strSportThumb.toString()
                              )
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(allSportsModel!.sports![index].strSport.toString(),style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 10,),
                              Text(allSportsModel!.sports![index].strFormat.toString()),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }) : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
