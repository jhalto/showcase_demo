import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:showcase_demo/l10n/app_localizations.dart';
import 'package:showcase_demo/localization_service.dart';

class Top extends StatefulWidget {
  const new({super.key});

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
          CircleAvatar(child: Text("Profile")),
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
