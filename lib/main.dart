import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: WeatherPage());
  }
}

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Forecast', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: Container(
        color: Colors.red,
        padding: EdgeInsets.all(10),

        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter City Name',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),

            SizedBox(height: 30),

            Text(
              'Murmansk Oblast, RU',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),

            Text(
              'Friday, Mar 20, 2025',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),

            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.sunny, color: Colors.white, size: 50),

                SizedBox(width: 20),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '14 °F',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),

                    Text(
                      'LIGHT SNOW',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                info(Icons.air, '5', 'km/h'),
                info(Icons.water_drop, '3', '%'),
                info(Icons.cloud, '20', '%'),
              ],
            ),

            SizedBox(height: 60),

            Text(
              '7-DAY WEATHER FORECAST',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),

            SizedBox(height: 20),

            SizedBox(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  weatherCard('Monday', '20 °F'),
                  weatherCard('Tuesday', '18 °F'),
                  weatherCard('Wednesday', '15 °F'),
                  weatherCard('Thursday', '16 °F'),
                  weatherCard('Friday', '21 °F'),
                  weatherCard('Saturday', '23 °F'),
                  weatherCard('Sunday', '17 °F'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget info(IconData icon, String number, String unit) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        Text(number, style: TextStyle(color: Colors.white)),
        Text(unit, style: TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget weatherCard(String day, String temperature) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.red.shade200,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(day, style: TextStyle(color: Colors.white, fontSize: 18)),
          Row(
            children: [
              Text(
                temperature,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),

              SizedBox(width: 20),

              Icon(Icons.sunny, color: Colors.white, size: 25),
            ],
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Weather Forecast';

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(appTitle)),
//         body: MyCustomForm(),
//       ),
//     );
//   }
// }

// class MyCustomForm extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//           child: TextFormField(
//             decoration: InputDecoration(
//               border: UnderlineInputBorder(),
//               labelText: 'Enter your username',
//             ),
//           ),
//         ),

//         SizedBox(height: 50),

//         Column(
//           children: [
//             Text('Murmansk Oblast, RU', style: TextStyle(fontSize: 30)),
//             SizedBox(height: 50),
//           ],
//         ),
//         Row(children: [Icon(Icons.sunny), Text('14˚F')]),

//         // SingleChildScrollView(
//         //   scrollDirection: Axis.horizontal,
//         //   child: Row(
//         //     children: [
//         //       Container(width: 150, height: 100, color: Colors.red),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.blue),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.green),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.orange),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.red),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.blue),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.green),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.orange),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.red),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.blue),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.green),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.orange),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.red),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.blue),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.green),
//         //       SizedBox(width: 10),
//         //       Container(width: 150, height: 100, color: Colors.orange),
//         //     ],
//         //   ),
//         // ),
//       ],
//     );
//   }
// }
