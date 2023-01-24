import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

Card makeDashboardItem(String title, IconData icon) {
  return Card(
      elevation: 1.0,
      margin: const EdgeInsets.all(8.0),
      child: Container(
        decoration:
            const BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              const SizedBox(height: 50.0),
              Center(
                  child: Icon(
                icon,
                size: 40.0,
                color: Colors.black,
              )),
              const SizedBox(height: 20.0),
              Center(
                child: Text(title,
                    style:
                        const TextStyle(fontSize: 18.0, color: Colors.black)),
              )
            ],
          ),
        ),
      ));
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Card makeDashboardItem(String title, IconData icon) {
      return Card(
          elevation: 1.0,
          margin: const EdgeInsets.all(8.0),
          child: Container(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
            child: InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  const SizedBox(height: 50.0),
                  Center(
                      child: Icon(
                    icon,
                    size: 40.0,
                    color: Colors.black,
                  )),
                  const SizedBox(height: 20.0),
                  Center(
                    child: Text(title,
                        style: const TextStyle(
                            fontSize: 18.0, color: Colors.black)),
                  )
                ],
              ),
            ),
          ));
    }

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Car Rental"),
        elevation: .1,
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("Available", Icons.car_rental),
            makeDashboardItem("Rental", Icons.car_rental),
            makeDashboardItem("Payment", Icons.money),
            makeDashboardItem("Category", Icons.menu)
          ],
        ),
      ),
    ));
  }
}
