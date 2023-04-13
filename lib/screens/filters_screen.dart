import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  static const String routeName = "FiltersScreen";
  final Function saveFilters;
  final Map<String,bool> currentFilters;
  FiltersScreen(this.currentFilters,this.saveFilters);
  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool historical= false;
  bool religious = false;
  bool entertainment = false;
  bool amusement = false;

  @override
  void initState() {
   historical=widget.currentFilters['historical']!;
   religious=widget.currentFilters['religious']!;
   entertainment=widget.currentFilters['entertainment']!;
   amusement=widget.currentFilters['amusement']!;
    super.initState();
  }

  Widget returnSwitchTile({required String name, required bool currentValue,required Function(bool) onPressed}){
    return SwitchListTile(
        value: currentValue,
        title: Text(name),
        subtitle: Text('Only include $name places'),
        onChanged: onPressed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(icon: Icon(Icons.save),onPressed: (){
              final selectedFiters={
                'historical':historical,
                'religious':religious,
                'entertainment':entertainment,
                'amusement':amusement,
              };
              widget.saveFilters(selectedFiters);
            },)
          ],
          title: Text('Filters'),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your places selection',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  returnSwitchTile(name: 'Historical', currentValue: historical,onPressed: (value){
                    setState(() {
                      historical=value;
                    });
                  }),
                  returnSwitchTile(name: 'Religious', currentValue: religious,onPressed: (value){
                    setState(() {
                      religious=value;
                    });
                  }),
                  returnSwitchTile(name: 'Entertainment', currentValue:entertainment,onPressed: (value){
                    setState(() {
                      entertainment=value;
                    });
                  }),
                  returnSwitchTile(name: 'Amusement', currentValue: amusement,onPressed: (value){
                    setState(() {
                      amusement=value;
                    });
                  }),

                ],
              ),
            )
          ],
        ));
  }
}
