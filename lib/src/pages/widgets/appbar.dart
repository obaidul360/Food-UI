import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String deliverytitle;
  final String nametitle;

  const CustomAppBar({
    super.key,
    required this.deliverytitle,
    required this.nametitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff2B3F5D),
      elevation: 0,
      title: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                deliverytitle,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              Row(
                children: [
                  Icon(Icons.location_on, size: 16, color: Colors.white),
                  SizedBox(width: 4),
                  Text(
                    nametitle,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add, color: Colors.white, size: 28),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
