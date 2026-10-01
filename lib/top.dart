import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:showcase_demo/l10n/app_localizations.dart';
import 'package:showcase_demo/localization_service.dart';
import 'package:showcaseview/showcaseview.dart';

class Top extends StatefulWidget {
  const new({super.key, required this.top});
  final GlobalKey top;
  @override
  State<Top> createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Showcase(
            key: widget.top,
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
            title: AppLocalizations.of(context)!.profile,
            description: AppLocalizations.of(context)!.preference,
            child: CircleAvatar(child: Text("Profile")),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Text(AppLocalizations.of(context)!.next),
          ),

          IconButton(
            onPressed: () {
              final controller = Get.find<LocalizationService>();
              setState(() {
                controller.toggleLanguage();
              });
            },
            icon: Icon(Icons.language),
          ),
        ],
      ),
    );
  }
}
