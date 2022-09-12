import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool shouldViewMore= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      key: scaffoldKey,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('This is snack bar'),),);
            scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
          color: Colors.white,
        ),
        // title: const Center(
        //   child: Text(
        //     'Home Page',
        //     style: TextStyle(
        //       color: Colors.white,
        //       fontSize: 16,
        //     ),
        //   ),
        // ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Card(
                elevation: 10,
                //color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),topRight: Radius.circular(25),
                        ),
                        color: Colors.grey[300],
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const SizedBox(
                            height: 60,
                            child: VerticalDivider(
                              color: Colors.grey,
                              thickness: 3,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.wallet),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text('NPR. XXXX.XX'),
                                    Text('Balance'),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove_red_eye_rounded),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text('NPR. XXXX.XX'),
                                    Text('Reward Points'),
                                  ],
                                ),
                              ),
                              const Icon(Icons.gpp_good),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.account_balance_wallet),
                              Text(
                                'Load Money',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.add_box),
                              Text(
                                'Send Money',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.account_balance),
                              Text(
                                'Bank Transfer',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.account_balance_wallet),
                              Text(
                                'Load Money',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.account_balance_wallet),
                              Text(
                                'Remittance',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            //using Row and Column
            Padding(
              // second card
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 600),
                  height: shouldViewMore? 350 : 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.phone_android,
                                color: Colors.lightGreen,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Top Up',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.lightbulb_outline,
                                color: Colors.lightGreen,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Electricity',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.water_drop_outlined,
                                color: Colors.lightGreen,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Khanepani',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.wifi,
                                color: Colors.lightGreen,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Internet',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.airplanemode_active_outlined,
                                color: Colors.lightGreen,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Airlines',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.adb,
                                color: Colors.lightGreen,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'International \n    Airlines',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.apartment_outlined,
                                color: Colors.lightGreen,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Hotels',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.account_balance,
                                color: Colors.lightGreen,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '      Govt. \n Paymnent',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.lightGreen.shade200,
                                border: Border.all(
                                  color: Colors.lightGreen.shade200,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              height: 40,
                              width: 150,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                     Text(
                                      shouldViewMore ? 'View Less': 'View More',
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.green),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        shouldViewMore= !shouldViewMore;
                                        setState(() {

                                        });
                                      },
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                           const SizedBox(
                              width: 50,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.lightGreen.shade200,
                                border: Border.all(
                                  color: Colors.lightGreen.shade200,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              height: 40,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.edit_outlined,
                                  color: Colors.green,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //using wrap
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 30,
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.hardEdge,
        child: Container(
          color: Colors.green,
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.accessibility_new),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.access_time_filled_rounded),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_rounded),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
              height: 200,
              cacheHeight: 300,
            ),
          ],
        ),
      ),
      onDrawerChanged: (status) {
        print('drawer status: $status');
      },
      endDrawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 90,
              alignment: Alignment.bottomLeft,
              color: Colors.blueGrey,
              child: SizedBox(
                height: 60,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.white,
                    ),
                    const SizedBox(width: 80),
                    const Text(
                      'End Drawer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
//MediaQuery.of(context).size.width-- to get the width of the screen
