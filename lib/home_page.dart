import 'package:flutter/material.dart';
import 'package:ui/calender_page/calender.dart';
import 'package:ui/custombutton.dart';
import 'package:ui/customcard.dart';
import 'package:ui/location_set/set_location.dart';
import 'package:ui/login_page.dart';
import 'package:ui/settings_page.dart';

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
                const CustomIconButton(icon: Icons.message),
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
        destinations: const [
          CustomIconButton(icon: Icons.home),
          CustomIconButton(icon: Icons.card_travel_outlined),
          CustomIconButton(icon: Icons.message_outlined),
        ],
      ),
    );
  }
}
