import 'package:demo_app/ui/screen/trip.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/app_info_list.dart';
import '../widgets/my_card.dart';
import '../widgets/my_trips_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "assets/images/img.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Hi , Jessica!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Icon(Icons.add_alert_rounded),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.search)
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(
                Icons.location_on,
              ),
              Text("Jakarta, Indonesia")
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 200,
            child: PageView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              children: const [
                MyCard(),
                MyCard(),
                MyCard(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ExpandingDotsEffect(),
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                MyTripCard(
                  label: "Trips",
                ),
                MyTripCard(
                  label: "Tour Guide",
                ),
                MyTripCard(
                  label: "Car Rental",
                ),
                MyTripCard(
                  label: "Hotel",
                ),
                MyTripCard(
                  label: "All",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text("Top Trip"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(20),
            child: Row(
                children: demoList
                    .map((trip) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TripScreen(trip: trip),
                        ))
                    .toList()),
          ),
        ]),
      ),
    );
  }
}
