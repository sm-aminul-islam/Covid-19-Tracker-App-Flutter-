import 'package:covid_app/view/world_states.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  String name;
  String image;
  int totalCases,
      totolDeaths,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test;

  DetailsScreen(
      {required this.name,
      required this.image,
      required this.totalCases,
      required this.totolDeaths,
      required this.totalRecovered,
      required this.active,
      required this.critical,
      required this.todayRecovered,
      required this.test});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      ReuseableRow(
                        title: "Cases",
                        value: widget.totalCases.toString(),
                      ),
                      ReuseableRow(
                          title: "Tests", value: widget.test.toString()),
                      ReuseableRow(
                        title: "Total Deaths",
                        value: widget.totolDeaths.toString(),
                      ),
                      ReuseableRow(
                        title: "Total Recovered",
                        value: widget.totalRecovered.toString(),
                      ),
                      ReuseableRow(
                          title: "Cases", value: widget.totalCases.toString()),
                      ReuseableRow(
                          title: "Active", value: widget.active.toString()),
                      ReuseableRow(
                          title: "Today Recovered",
                          value: widget.todayRecovered.toString()),
                      ReuseableRow(
                          title: "Critical", value: widget.critical.toString())
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          )
        ],
      ),
    );
  }
}
