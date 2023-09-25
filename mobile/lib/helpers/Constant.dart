import 'package:flutter/material.dart';
import 'package:resdonte/helpers/icons.dart';
import 'package:resdonte/main.dart';

import 'Strings.dart';

const appName = 'Resdonte';

const String appbartitle = 'Resdonte';
const String andoidPackageName = 'com.ondigitaltech.resdonte';

//change this url to set your URL in app
String webinitialUrl = 'http://localhost:3000';
const String firstTabUrl = 'http://localhost:3000';

//keep local content of pages of setting screen
const String aboutPageURL = '';
const String privacyPageURL = '';
const String termsPageURL = '';

//Change App id of android and IOS app
const String androidAppId = andoidPackageName;

const String iOSAppId = '';

const String shareAppTitle = appName;
const String shareiOSAppMessage = 'Download $appName App from this link : $appstoreURLIos';
const String shareAndroidAppMessge = 'Download $appName App from this link : $playstoreURLAndroid';

const String playstoreURLAndroid = '';
const String appstoreURLIos = '';

//To turn on/off ads
const bool showInterstitialAds = false;
const bool showBannerAds = false;
const bool showOpenAds = false;

//To turn on/off display of bottom navigation bar
const bool showBottomNavigationBar = false;

//To turn on/off display of floating action button
const bool showFloatingActionButton = false;

//To show/remove splash screen
const bool showSplashScreen = false;

//To show/remove onboarding screen
const bool showOnboardingScreen = false;

//To remove/display header/footer of website
const bool hideHeader = false;
const bool hideFooter = false;

//Ids for interstitial Ad
const androidInterstitialAdId = '';
const iosInterstitialAdId = '';

//Ids for banner Ad
const androidBannerAdId = '';
const iosBannerAdId = '';

//Ids for app open Ad
const androidOpenAdId = '';
const iosOpenAdId = '';

//icon to set when get firebase messages
const String notificationIcon = '@mipmap/ic_launcher_squircle';

//path to icons   *** don't change these values**
const String iconPath = 'assets/icons/';

//turn on/off enable storage permission
const bool isStoragePermissionEnabled = false;

//add / remove tabs here
List navigationTabs(BuildContext context) => [
      {
        'url': firstTabUrl,
        'label': CustomStrings.demo,
        'icon': Theme.of(context).colorScheme.demoIcon
      },
      {
        'url': webinitialUrl,
        'label': CustomStrings.home,
        'icon': Theme.of(context).colorScheme.homeIcon
      },
    ];

//copy your  one-signal android app id
const oneSignalAndroidAppId = '';

//copy your  one-signal ios app id
const oneSignalIOSAppId = '';
