import 'package:car_rental_app/view/home/widgets/list_tile_widget.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ListTileWidget(
            title: 'Add car',
            leadingIcon: Icon(Icons.add),
            trailingIcon: Icon(Icons.car_rental),
          ),
          ListTileWidget(
            title: 'Delete car',
            leadingIcon: Icon(Icons.remove),
            trailingIcon: Icon(Icons.car_rental),
          ),
          ListTileWidget(
            title: 'Update car',
            leadingIcon: Icon(Icons.update),
            trailingIcon: Icon(Icons.car_rental),
          ),
          ListTileWidget(
            title: 'View reservations',
            leadingIcon: Icon(Icons.view_agenda),
          ),
          ListTileWidget(
            title: 'Add Offer',
            leadingIcon: Icon(Icons.local_offer),
            // trailingIcon: Icon(Icons.local_offer),
          ),
          ListTileWidget(
            title: 'Send notification',
            leadingIcon: Icon(Icons.notification_add),
            // trailingIcon: Icon(Icons.local_offer),
          ),
          ListTileWidget(
            title: 'Customer support',
            leadingIcon: Icon(Icons.support_agent_rounded),
            // trailingIcon: Icon(Icons.local_offer),
          ),
        ],
      ),
    );
  }
}
