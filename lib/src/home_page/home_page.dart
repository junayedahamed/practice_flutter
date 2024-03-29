import 'package:flutter/material.dart';
import 'package:ui/src/buttons/custombutton.dart';
import 'package:ui/src/calender_page/calender.dart';

import 'package:ui/src/customcard/customcard.dart';
import 'package:ui/src/location_set/set_location.dart';
import 'package:ui/src/login_page/login_page.dart';
import 'package:ui/src/settings/settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Column(
          children: [
            Text(
              "Hello,Junayed",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Dhaka,Bangladesh",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.window_rounded,
              size: 37,
            )),
        actions: [
          const Icon(Icons.account_circle),
          const SizedBox(
            width: 30,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Settings(),
              ));
            },
            child: const Icon(Icons.settings),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 250,
              top: 18,
            ),
            child: Padding(
              padding: EdgeInsets.only(right: 250),
              child: SearchBar(
                leading: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                IconButton.filledTonal(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.message,
                    size: 25,
                  ),
                  padding: EdgeInsets.all(20),
                  style: IconButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                IconButton.filledTonal(
                  onPressed: () {
                    showDialog(
                        context: (context),
                        builder: (context) => const CalendarMonth());
                  },
                  icon: const Icon(
                    Icons.calendar_month,
                    size: 25,
                  ),
                  style: IconButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                IconButton.filledTonal(
                  onPressed: () {
                    showDialog(
                        context: (context),
                        builder: (context) => const SetLocation());
                  },
                  icon: const Icon(
                    Icons.location_on,
                    size: 25,
                  ),
                  style: IconButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Featured",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text("View all"),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemBuilder: (context, index) => const CustomCard(),
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best seller",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text("View all"),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemBuilder: (context, index) => const CustomCard(),
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Builder(builder: (context) {
                return FilledButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text("Click here for Login or SignUp"));
              }),
            ],
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          CustomIconButton(
            icon: Icons.home,
            onPressed: () {},
          ),
          CustomIconButton(
            icon: Icons.card_travel_outlined,
            onPressed: () {},
          ),
          CustomIconButton(
            icon: Icons.message_outlined,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
