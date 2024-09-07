import 'package:boxigo_assignment/bloc/logistic_bloc.dart';
import 'package:boxigo_assignment/model/inventory_details.dart';
import 'package:boxigo_assignment/model/new_tab_data.dart';
import 'package:boxigo_assignment/widgets/items_screen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class NewTab extends StatelessWidget {
  final LogisticBloc logisticBloc;
  final NewTabData newTabData;
  final List<InventoryDetails> inventoryDetails;
  const NewTab({super.key, required this.newTabData, required this.logisticBloc, required this.inventoryDetails});

  _fetchMonth(String date) {
    DateTime dateTime = DateTime.parse(date);
    DateFormat formatter = DateFormat('MMMM');
    String monthName = formatter.format(dateTime);
    return monthName.substring(0, 3);
  }

  _fetchDate(String date) {
    DateTime dateTime = DateTime.parse(date);
    return dateTime.day.toString();
  }

  _fetchTime(String date) {
    DateTime dateTime = DateTime.parse(date);
    String hour = dateTime.hour.toString();
    if (hour == '0') {
      hour = '00';
    }
    String minute = dateTime.minute.toString();
    if (minute == '0') {
      minute = '00';
    }
    return '$hour:$minute';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 1, child: _buildDateTimeContainer()),
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bangalore',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            newTabData.estimateId,
                            style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(newTabData.from, style: TextStyle(color: Colors.grey)),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.arrow_downward_outlined, color: Colors.redAccent),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.home_filled,
                                  color: Colors.redAccent,
                                ),
                                Text(
                                  newTabData.propertySize,
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.shopping_cart,
                                  color: Colors.redAccent,
                                ),
                                Text('${newTabData.items} items')
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.luggage,
                                  color: Colors.redAccent,
                                ),
                                Visibility(visible: newTabData.boxes == 0, child: Text('0 box')),
                                Visibility(visible: newTabData.boxes > 1, child: Text('${newTabData.boxes} boxes')),
                                Visibility(visible: newTabData.boxes == 1, child: Text('${newTabData.boxes} box'))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.route,
                                  color: Colors.redAccent,
                                ),
                                Text(newTabData.distance)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Bangalore',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(newTabData.to, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.grey)),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Row(children: [
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => ItemsPage(
                                                  inventoryDetails: inventoryDetails,
                                                )));
                                  },
                                  child: const Text('View Details', style: TextStyle(color: Colors.redAccent)),
                                  style: ElevatedButton.styleFrom(
                                    shape: BeveledRectangleBorder(),
                                    side: BorderSide(
                                      width: 0.5,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                  ))),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Submit Quote', style: TextStyle(color: Colors.white)),
                                  style: ElevatedButton.styleFrom(
                                    shape: BeveledRectangleBorder(),
                                    backgroundColor: Colors.redAccent,
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                  )))
                        ]),
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.grey,
            )
          ],
        ));
  }

  Widget _buildDateTimeContainer() {
    return Column(
      children: [
        Text(
          _fetchMonth(newTabData.movingOn) ?? 'Date',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        Text(
          _fetchDate(newTabData.movingOn) ?? 'Date',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.redAccent),
        ),
        Text(
          _fetchTime(newTabData.movingOn) ?? 'Date',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ],
    );
  }
}
