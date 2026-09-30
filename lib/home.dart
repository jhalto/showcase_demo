import 'package:flutter/material.dart';
import 'package:showcase_demo/l10n/app_localizations.dart';
import 'package:showcase_demo/top.dart';
import 'package:showcaseview/showcaseview.dart';

class Home extends StatefulWidget {
  const new({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey top = GlobalKey();
  GlobalKey middle = GlobalKey();
  GlobalKey listItem = GlobalKey();

  void startShowCased() {
    if (!mounted) return;

    ShowcaseView.get().startShowCase([top]);
  }

  @override
  void initState() {
    super.initState();

    ShowcaseView.register();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          startShowCased();
        }
      });
    });
  }
   
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("jsakldh")),
      body: Center(
        child: Column(
          children: <Widget>[
            Top(),
            Showcase(

              tooltipActions: [
                TooltipActionButton(
                  type: TooltipDefaultActionType.previous,
                  name: AppLocalizations.of(context)!.back,
                  backgroundColor: Colors.amber,
                  textStyle: const TextStyle(color: Colors.white),
                ),
                TooltipActionButton(
                  type: TooltipDefaultActionType.next,
                  name: AppLocalizations.of(context)!.back,
                  textStyle: TextStyle(color: Colors.white),
                  backgroundColor: Colors.amber,
                ),
              ],
              key: top,
              description: 'Calendar',
              child: Text("dshfklasjdf"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        startShowCased();
      }),
    );
  }
}
