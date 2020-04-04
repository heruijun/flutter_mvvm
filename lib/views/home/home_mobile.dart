part of home_view;

class _HomeMobile extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    List<SelectBarWidget> items = <SelectBarWidget>[];
    items
      ..add(SelectBarWidget('销量', OrderBy.up))
      ..add(SelectBarWidget('价格', OrderBy.none))
      ..add(SelectBarWidget('积分', OrderBy.none));

    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times: ',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              '${viewModel.counter}',
              style: Theme.of(context).textTheme.display1,
            ),
            SelectBarGroupWidget(items)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: viewModel.increment,
        backgroundColor: Colors.black,
      ),
    );
  }
}
