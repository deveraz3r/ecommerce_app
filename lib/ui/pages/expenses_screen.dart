import 'package:office_task/utils/app_urls.dart';
import 'package:office_task/utils/app_colors.dart';
import 'package:office_task/model/expenses_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  final List<Expenses> _expenseData = [
    Expenses(
      day: DateTime.parse('2024-07-01 00:00:00.000'),
      expense: 10,
      // barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Expenses(
      day: DateTime.parse('2024-07-02 00:00:00.000'),
      expense: 20,
      // barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Expenses(
      day: DateTime.parse('2024-07-03 00:00:00.000'),
      expense: 30,
      // barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Expenses(
      day: DateTime.parse('2024-07-04 00:00:00.000'),
      expense: 25,
      // barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Expenses(
      day: DateTime.parse('2024-07-05 00:00:00.000'),
      expense: 45,
      // barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Expenses(
      day: DateTime.parse('2024-07-06 00:00:00.000'),
      expense: 40,
      // barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Expenses(
      day: DateTime.parse('2024-07-07 00:00:00.000'),
      expense: 30,
      // barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Expenses(
      day: DateTime.parse('2024-07-08 00:00:00.000'),
      expense: 10,
      // barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Expenses(
      day: DateTime.parse('2024-07-09 00:00:00.000'),
      expense: 45,
      // barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Expenses(
      day: DateTime.parse('2024-07-10 00:00:00.000'),
      expense: 35,
      // barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReuseableAppBar(
        titleText: "Expenses",
        leadingButtonText: "Back",
        actionsButtonText: "New",
        leadingOnPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(
                  isVisible: true,
                  majorGridLines: const MajorGridLines(width: 0),
                ),
                primaryYAxis: CategoryAxis(
                  isVisible: false,
                ),
                // title: ChartTitle(text: "Daily Expense Monitor"),
                // legend: Legend(isVisible: true),
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <CartesianSeries<Expenses, String>>[
                  ColumnSeries<Expenses, String>(
                    borderRadius: BorderRadius.circular(10),
                    dataSource: _expenseData,
                    xValueMapper: (Expenses _expense, _) =>
                        "${_expense.day.year}-${_expense.day.month}-${_expense.day.day}",
                    yValueMapper: (Expenses _expense, _) => _expense.expense,
                    name: "Expenses",
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    color: greenColor,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset(
                        "assets/green circle.png",
                        height: 25,
                      ),
                      title: Text(
                          "${_expenseData[index].day.year}-${_expenseData[index].day.month}-${_expenseData[index].day.day}"),
                      trailing: Text("${_expenseData[index].expense}"),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: _expenseData.length),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomnavigationbarWidget(),
    );
  }
}
