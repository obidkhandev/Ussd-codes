import 'package:ussd_code/data/models/menu_model.dart';
import 'package:ussd_code/ui/collections/data/model/tarif_model.dart';
import 'package:ussd_code/utils/constants/app_images.dart';
import 'package:ussd_code/utils/tools/file_importers.dart';

List<CompanyModel> companies = [
  CompanyModel(
    tariflar: [
      TarifModel(
        "Mobi 25",
        mb: "3500 mb",
        min: "3500 daq",
        price: "25.000 so'm",
        sms: "3500 sms",
        ussd: "*111*120#",
      ),
      TarifModel(
        "Mobi 30+",
        mb: "5000 mb",
        min: "5000 daq",
        price: "30.000 so'm",
        sms: "3500 sms",
        ussd: "*171*128*011200235#",
      ),
      TarifModel(
        "Mobi 40",
        mb: "8000 mb",
        min: "5000 daq",
        price: "40.000 so'm",
        sms: "3500 sms",
        ussd: "*171*122*011200235#",
      ),
      TarifModel(
        "Mobi 50+",
        mb: "10000 mb",
        min: "5000 daq",
        price: "50.000 so'm",
        sms: "3500 sms",
        ussd: "*171*129*011200235#",
      ),
      TarifModel(
        "Mobi 60",
        mb: "15000 mb",
        min: "5000 daq",
        price: "40.000 so'm",
        sms: "3500 sms",
        ussd: "*171*134*011200235#",
      ),
      TarifModel(
        "Mobi 70",
        mb: "20000 mb",
        min: "5000 daq",
        price: "70.000 so'm",
        sms: "3500 sms",
        ussd: "*171*131*011200235#",
      ),
    ],
    companyLogo: AppImage.mobiuzLogo,
    image: [
      AppImage.mobiuzBanner1,
      AppImage.mobiuzBanner2,
    ],
    color: Colors.red.shade700,
  ),
  CompanyModel(
    tariflar: [
      TarifModel(
        "Zo'r 3",
        mb: "3000 mb",
        min: "1500 daq",
        price: "20.000 so'm",
        sms: "1500 sms",
        ussd: "*2*3#",
      ),
      TarifModel(
        "Zo'r 5",
        mb: "5000 mb",
        min: "2500 daq",
        price: "27.000 so'm",
        sms: "2500 sms",
        ussd: "*2*5#",
      ),
      TarifModel(
        "Zo'r 7",
        mb: "7000 mb",
        min: "Cheksiz daq",
        price: "35.000 so'm",
        sms: "5000 sms",
        ussd: "*2*7#",
      ),
      TarifModel(
        "Zo'r 12",
        mb: "12000 mb",
        min: "Cheksiz daq",
        price: "50.000 so'm",
        sms: "1500 sms",
        ussd: "*2*12#",
      ),
      TarifModel(
        "Zo'r 20",
        mb: "20000 mb",
        min: "Cheksiz daq",
        price: "70.000 so'm",
        sms: "5000 sms",
        ussd: "*2*20#",
      ),
      TarifModel(
        "Status Silver",
        mb: "30000 mb",
        min: "Cheksiz daq",
        price: "90.000 so'm",
        sms: "5000 sms",
        ussd: "*2*30#",
      ),
    ],
    companyLogo: AppImage.beelineLogo,
    image: [
      AppImage.bBanner1,
      AppImage.bBanner2,
    ],
    color: Colors.yellow.shade800,
  ),
  CompanyModel(
    tariflar: [
      TarifModel(
        "Doimiy 25",
        mb: "6000 mb",
        min: "Cheksiz daq",
        price: "25.000 so'm",
        sms: "500 sms",
        ussd: "*120#",
      ),
      TarifModel(
        "Doimiy 40",
        mb: "12000 mb",
        min: "Cheksiz daq",
        price: "40.000 so'm",
        sms: "1000 sms",
        ussd: "*120#",
      ),
      TarifModel(
        "Doimiy 50",
        mb: "20000 mb",
        min: "Cheksiz daq",
        price: "50.000 so'm",
        sms: " 1500 sms",
        ussd: "*120#",
      ),
      TarifModel(
        "Doimiy 70",
        mb: "35000 mb",
        min: "Cheksiz daq",
        price: "70.000 so'm",
        sms: "2000 sms",
        ussd: "*120#",
      ),
    ],
    companyLogo: AppImage.ucellLogo,
    image: [
      AppImage.ucellBanner1,
      AppImage.ucellBanner2,
    ],
    color: Colors.purple,
  ),
  CompanyModel(
    tariflar: [
      TarifModel(
        "Milliy 10",
        mb: "1 mb 10 so'm",
        min: "1 daq 10 so'm",
        price: "10.000 so'm",
        sms: "1 sms 10 so'm",
        ussd: "*111*1*11*1#",
      ),
       TarifModel(
         "Milliy 15",
        mb: "5 mb 10 so'm",
        min: "5 daq 10 so'm",
        price: "15.000 so'm",
        sms: "5 sms 10 so'm",
        ussd: "*111*1*11*2#",
      ),
       TarifModel(
         "Milliy 50",
        mb: "8000 mb",
        min: "Cheksiz daq",
        price: "40.000 so'm",
        sms: "3000 sms",
        ussd: "*111*1*11*3#",
      ),
       TarifModel(
         "Milliy 50",
        mb: "12000 mb",
        min: "Cheksiz daq",
        price: "50.000 so'm",
        sms: "5000 sms",
        ussd: "*111*1*11*4#",
      ),
       TarifModel(
         "Milliy 70",
        mb: "20000 mb",
        min: "Cheksiz daq",
        price: "70.000 so'm",
        sms: "5000 sms",
        ussd: "*111*1*11*5#",
      ),
       TarifModel(
         "Milliy 100",
        mb: "35000 mb",
        min: "Cheksiz daq",
        price: "100.000 so'm",
        sms: "5000 sms",
        ussd: "*111*1*11*6#",
      ),
    ],
    companyLogo: AppImage.uzmobileLogo,
    image: [
      AppImage.uzmobileBanner1,
      AppImage.uzmobileBanner2,
    ],
    color: Colors.blue,
  ),
];

List<MenuModel> menu = [
  MenuModel(
    title: "Tarif rejalar",
    icon: const Icon(
      Icons.sim_card,
      color: Colors.white,
      size: 32,
    ),
  ),
  MenuModel(
    title: "Internet to'plamlar",
    icon: const Icon(
      Icons.mobiledata_off,
      color: Colors.white,
      size: 32,
    ),
  ),
  MenuModel(
    title: "Daqiqa to'plamlar",
    icon: const Icon(
      Icons.timer,
      color: Colors.white,
      size: 32,
    ),
  ),
  MenuModel(
    title: "Balansni tekshirish",
    icon: const Icon(
      Icons.wallet,
      color: Colors.white,
      size: 32,
    ),
  ),
  MenuModel(
    title: "Raqamni aniqlash",
    icon: const Icon(
      Icons.call,
      color: Colors.white,
      size: 32,
    ),
  ),
];
