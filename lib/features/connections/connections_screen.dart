import 'package:flutter/material.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:pathzi/features/connections/widgets/connection_card_widget.dart';
import 'package:pathzi/shared/widgets/custom_appbar_widget.dart';

class ConnectionsScreen extends StatefulWidget {
  const ConnectionsScreen({super.key});

  @override
  State<ConnectionsScreen> createState() => _ConnectionsScreenState();
}

class _ConnectionsScreenState extends State<ConnectionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppbarWidget(text: "Connections",isBackButton: false,),
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context,index){
        return ConnectionCardWidget();
      })
    );
  }
}