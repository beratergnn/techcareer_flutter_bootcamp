import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/constants/colors.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/pages/account_page.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/pages/easy_buy_and_sell_page.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/pages/main_page.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/pages/markets_page.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/pages/wallet_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List pages = [
    MainPage(),
    MarketsPage(),
    WalletPage(),
    EasyBuyAndSellPage(),
    AccountPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: tabColor,
        // background color u dümdüz verirsen değişmez çünkü type belirtmen lazım ondan sonra verilir.
        type: BottomNavigationBarType.fixed,
        // itemlerin sağa sola doğru açılmasını engeller oldukları yerlerde dururlar
        elevation: 0,
        selectedItemColor: textColor,
        unselectedItemColor: textColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        // Navbardaki itemin seçili olmasını gösteren index
        unselectedFontSize: 12,
        selectedFontSize: 12,
        // font size 0 lama sebebi biz bunları görünmez yaptık ama hala oradalar ve tıklanabilirler
        // tıklandıklarındada bir eylem gerçekleşmediğinden hata alınır bu hatayı ortadan kaldırmak için
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            label: 'Ana sayfa',
            icon: SvgPicture.asset(
              'assets/bnb_icons/bnb_home.svg',
              color: currentIndex == 0 ? riseColor : textColor,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Piyasalar',
            icon: SvgPicture.asset(
              'assets/bnb_icons/bnb_markets.svg',
              color: currentIndex == 1 ? riseColor : textColor,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cüzdan',
            icon: SvgPicture.asset(
              'assets/bnb_icons/bnb_wallet.svg',
              color: currentIndex == 2 ? riseColor : textColor,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Kolay al/sat',
            icon: SvgPicture.asset(
              'assets/bnb_icons/bnb_easy_buy_sell.svg',
              color: currentIndex == 3 ? riseColor : textColor,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Hesap',
            icon: SvgPicture.asset(
              'assets/bnb_icons/bnb_account.svg',
              color: currentIndex == 4 ? riseColor : textColor,
              height: 25,
            ),
          ),
        ],
      ),
    );
  }
}
