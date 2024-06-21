import 'package:flutter/material.dart';
import 'package:narvepos/core/assets/assets.gen.dart';
import 'package:narvepos/core/components/spaces.dart';
import 'package:narvepos/core/constants/colors.dart';
import 'package:narvepos/presentations/pages/history_pages.dart';
import 'package:narvepos/presentations/pages/home_pages.dart';
import 'package:narvepos/presentations/pages/setting_pages.dart';
import 'package:narvepos/presentations/pages/transaction_pages.dart';
import 'package:narvepos/presentations/widgets/nav_item.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int _selectedIndex = 0;
  final _pages = [
    const HomePages(),
    const TransactionPages(),
    const HistoryPages(),
    const SettingPages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(30),
          ),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 30.0,
              blurStyle: BlurStyle.outer,
              spreadRadius: 0,
              color: AppColors.primary.withOpacity(0.08),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 5.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavItem(
                iconPath: Assets.icons.nav.home.path,
                label: 'Home',
                isActive: _selectedIndex == 0,
                onTap: () => _onItemTapped(0),
              ),
              NavItem(
                iconPath: Assets.icons.nav.ticket.path,
                label: 'Ticket',
                isActive: _selectedIndex == 1,
                onTap: () => _onItemTapped(1),
              ),
              NavItem(
                iconPath: Assets.icons.nav.history.path,
                label: 'History',
                isActive: _selectedIndex == 2,
                onTap: () => _onItemTapped(2),
              ),
              NavItem(
                iconPath: Assets.icons.nav.setting.path,
                label: 'Setting',
                isActive: _selectedIndex == 3,
                onTap: () => _onItemTapped(3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
