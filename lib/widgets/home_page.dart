import 'package:boxigo_assignment/bloc/logistic_bloc.dart';
import 'package:boxigo_assignment/widgets/new_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late LogisticBloc _logisticBloc;

  @override
  void didChangeDependencies() {
    _logisticBloc = BlocProvider.of<LogisticBloc>(context);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
  }

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
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(Icons.copyright_rounded),
          backgroundColor: Colors.white,
          title: const Text(
            'Leads',
            style: TextStyle(color: Colors.grey, fontSize: 25.0),
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
            tabs: [
              _buildTab(tabText: 'All'),
              _buildTab(tabText: 'New'),
              _buildTab(tabText: 'Follow Up'),
              _buildTab(tabText: 'Booked'),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(child: Text('All')),
          BlocBuilder<LogisticBloc, LogisticState>(
            builder: (context, state) {
              if (state is ShowHomePage) {
                if (state.isLoading == true) {
                  return Center(
                      child: const CircularProgressIndicator(
                    color: Colors.redAccent,
                  ));
                }
                return ListView.builder(
                    itemCount: state.listNewTabData.length,
                    itemBuilder: (context, index) {
                      return NewTab(
                        newTabData: state.listNewTabData[index],
                        logisticBloc: _logisticBloc,
                        inventoryDetails: state.inventoryDetailsList[index],
                      );
                    });
              }
              return Text('Home');
            },
          ),
          Center(child: Text('Follow Up')),
          Center(child: Text('Booked')),
        ]),
      ),
    );
  }
}
