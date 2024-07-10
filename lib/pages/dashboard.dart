import 'package:expense_tracker/components/chip.dart';
import 'package:expense_tracker/components/stat_card.dart';
import 'package:expense_tracker/components/transaction_card.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  /// Returns a list of year chips
  List<Widget> getYearChips() {
    List<Widget> yearChips = [];
    List<int> years = [2024, 2023];
    for (int year in years) {
      yearChips.add(ETChip(content: year.toString()));
      yearChips.add(const SizedBox(
        width: 15.0,
      ));
    }
    return yearChips;
  }

  /// Returns a list of month chips
  List<Widget> getMonthChips() {
    List<Widget> yearChips = [];
    List<String> months = [
      'December',
      'November',
      'October',
      'September',
      'August',
      'July',
      'June',
      'May',
      'April',
      'March',
      'February',
      'January'
    ];
    for (String month in months) {
      yearChips.add(ETChip(content: month));
      yearChips.add(const SizedBox(
        width: 15.0,
      ));
    }
    return yearChips;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[200],
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text(
          '',
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          const SizedBox(
            width: 5.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 5.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'welcome, Jeffrin.',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: getYearChips(),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: getMonthChips(),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ETStatCard(
                title: 'remaining usable salary',
                content: '32,411',
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'recent transactions',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ETTransactionCard(),
                    SizedBox(
                      width: 15.0,
                    ),
                    ETTransactionCard(),
                    SizedBox(
                      width: 15.0,
                    ),
                    ETTransactionCard(),
                    SizedBox(
                      width: 15.0,
                    ),
                    ETTransactionCard(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ETStatCard(
                title: 'total expenses',
                content: '16,221',
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'top expenses',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ETTransactionCard(),
                    SizedBox(
                      width: 15.0,
                    ),
                    ETTransactionCard(),
                    SizedBox(
                      width: 15.0,
                    ),
                    ETTransactionCard(),
                    SizedBox(
                      width: 15.0,
                    ),
                    ETTransactionCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
