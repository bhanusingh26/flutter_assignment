import 'package:boxigo_assignment/model/inventory_details.dart';
import 'package:flutter/material.dart';

class ItemsPage extends StatelessWidget {
  final List<InventoryDetails> inventoryDetails;
  const ItemsPage({super.key, required this.inventoryDetails});

  Widget _buildTab({required String tabText}) {
    return Tab(
      child: Text(
        tabText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.keyboard_arrow_left)),
          backgroundColor: Colors.white,
          title: const Text(
            'New Leads',
            style: TextStyle(color: Colors.grey, fontSize: 20.0),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notification_important,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
          ],
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.redAccent,
              indicatorWeight: 1,
              labelColor: Colors.redAccent,
              unselectedLabelColor: Colors.grey,
              tabs: [_buildTab(tabText: 'Items'), _buildTab(tabText: 'Floor Info'), _buildTab(tabText: 'Send Quote')]),
        ),
        body: TabBarView(children: [
          ItemsTab(inventoryDetails: inventoryDetails),
          FloorInfoTab(),
          Center(
            child: Text('Send Quote'),
          )
        ]),
      ),
    );
  }
}

class ItemsTab extends StatelessWidget {
  List<InventoryDetails> inventoryDetails;
  ItemsTab({super.key, required this.inventoryDetails});

  _addItemsInExapansionTile(Map<String, int> details) {
    List<Widget> widgets = [];
    details.forEach((key, value) {
      Widget leadingIcon;
      if (key == 'Sofa') {
        leadingIcon = const Icon(Icons.event_seat, color: Colors.black);
      } else if (key == 'Table') {
        leadingIcon = const Icon(Icons.table_restaurant, color: Colors.black);
      } else if (key == 'Chair') {
        leadingIcon = const Icon(Icons.chair, color: Colors.black);
      } else if (key == 'Cot') {
        leadingIcon = const Icon(Icons.cottage, color: Colors.black);
      } else if (key == 'Mattress') {
        leadingIcon = const Icon(Icons.bedtime_outlined, color: Colors.black);
      } else if (key == 'Cupboard') {
        leadingIcon = const Icon(Icons.kitchen, color: Colors.black);
      } else if (key == 'TV') {
        leadingIcon = const Icon(Icons.tv, color: Colors.black);
      } else if (key == 'Refrigerator') {
        leadingIcon = const Icon(Icons.kitchen, color: Colors.black);
      } else if (key == 'Air conditioner') {
        leadingIcon = const Icon(Icons.ac_unit, color: Colors.black);
      } else if (key == 'Fans/Coolers') {
        leadingIcon = const Icon(Icons.ac_unit, color: Colors.black);
      } else if (key == 'Cycle') {
        leadingIcon = const Icon(Icons.directions_bike, color: Colors.black);
      } else if (key == 'Bike') {
        leadingIcon = const Icon(Icons.bike_scooter, color: Colors.black);
      } else if (key == 'Car') {
        leadingIcon = const Icon(Icons.car_rental, color: Colors.black);
      } else if (key == 'Gym / Sports') {
        leadingIcon = const Icon(Icons.sports_gymnastics, color: Colors.black);
      } else if (key == 'Musical Instruments') {
        leadingIcon = const Icon(Icons.music_note, color: Colors.black);
      } else if (key == 'Home Appliances') {
        leadingIcon = const Icon(Icons.home_repair_service_sharp, color: Colors.black);
      } else if (key == 'Boxes/Trolley') {
        leadingIcon = const Icon(Icons.trolley, color: Colors.black);
      } else {
        leadingIcon = const Icon(Icons.miscellaneous_services, color: Colors.black);
      }
      widgets.add(ListTile(
        leading: leadingIcon,
        title: Text(key, style: const TextStyle(fontSize: 14, color: Colors.grey)),
        trailing: Text(
          value.toString(),
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ));
    });
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: inventoryDetails.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            collapsedTextColor: Color(0XFFE9EEF6),
            title: Text(
              inventoryDetails[index].inventoryName,
              style: const TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            children: _addItemsInExapansionTile(inventoryDetails[index].categoryDetails),
          );
        });
  }
}

class FloorInfoTab extends StatelessWidget {
  const FloorInfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(color: Color(0XFFE9EEF6)),
                        height: 40.0,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 16.0, top: 8),
                          child: Text(
                            'Existing House Details',
                            style: TextStyle(color: Colors.redAccent, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Floor No.'), Text('10', style: TextStyle(fontWeight: FontWeight.bold))],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Elevator Available'), Text('Yes', style: TextStyle(fontWeight: FontWeight.bold))],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Packing Required'), Text('Yes', style: TextStyle(fontWeight: FontWeight.bold))],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Distance from Door to Truck'),
                      Text('20 mtrs', style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Additional Information'),
                        Text('Dog is available so please call once you reach',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(color: Color(0XFFE9EEF6)),
                        height: 40.0,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 16.0, top: 8),
                          child: Text(
                            'New House Details',
                            style: TextStyle(color: Colors.redAccent, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Floor No.'), Text('0', style: TextStyle(fontWeight: FontWeight.bold))],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Elevator Available'), Text('No', style: TextStyle(fontWeight: FontWeight.bold))],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Unpacking Required'), Text('Yes', style: TextStyle(fontWeight: FontWeight.bold))],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Distance from Door to Truck'),
                      Text('50 mtrs', style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Additional Information'),
                        Text('Dog is available so please call once you reach',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
