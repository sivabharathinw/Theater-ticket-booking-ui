import "package:flutter/material.dart";
import "package:movie_booking/ui.dart";

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppbar(
          title: AppText(
            "Account",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                  ProfileAvatar(size: 60),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          "Andrew Ainsley",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        AppText(
                          "andrew.ainsley@yourdomain.com",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppIcon(
                    icon: Icons.qr_code_scanner,
                    size: 24,
                    iconColor: Colors.black,
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
              
              SizedBox(height: 30),
              Divider(color: Colors.grey),
              SizedBox(height: 20),
              

              SettingItem(icon: Icons.favorite_border, title: "Watchlist"),
              SettingItem(icon: Icons.grid_view, title: "Movie Interest"),
              SettingItem(icon: Icons.payment, title: "Payment Methods"),
              
              SizedBox(height: 10),

              Row(
                children: [
                  AppText("General", style: TextStyle(color: Colors.black, fontSize: 14)),
                  SizedBox(width: 10),
                  Expanded(child: Divider(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 20),
              
              SettingItem(icon: Icons.person_outline, title: "Personal Info"),
              SettingItem(icon: Icons.notifications_none, title: "Notification"),
              SettingItem(icon: Icons.security, title: "Security"),
              SettingItem(
                icon: Icons.language, 
                title: "Language", 
                trailing: Row(
                  children: [
                    AppText("English (US)", style: TextStyle(color: Colors.black, fontSize: 14)),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                  ],
                ),
              ),
              SettingItem(
                icon: Icons.visibility_outlined, 
                title: "Dark Mode", 
                trailing: Switch(
                  value:false,
                  onChanged: (val) {

                  },
                  activeColor: Colors.deepOrange,
                ),
              ),
              
              SizedBox(height: 10),

              Row(
                children: [
                  AppText("About", style: TextStyle(color: Colors.black, fontSize: 14)),
                  SizedBox(width: 10),
                  Expanded(child: Divider(color: Colors.grey.shade500)),
                ],
              ),
              SizedBox(height: 20),
              
              SettingItem(icon: Icons.help_outline, title: "Help Center"),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;

  SettingItem({

    required this.icon,
    required this.title,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          AppIcon(
            icon: icon,
            size: 24,
            iconColor: Colors.black,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(width: 15),
          Expanded(
            child: AppText(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          trailing ?? Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}
