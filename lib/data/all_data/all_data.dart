import 'package:ussd_code/data/models/company_model.dart';
import 'package:ussd_code/data/models/menu_model.dart';
import 'package:ussd_code/utils/constants/app_images.dart';
import 'package:ussd_code/utils/tools/file_importers.dart';

List<CompanyModel> companies = [
  CompanyModel(
      companyLogo: AppImage.mobiuzLogo,
    image: [
      AppImage.mobiuzBanner1,
      AppImage.mobiuzBanner2,
    ],
    color: Colors.red.shade700,
  ),
  CompanyModel(
      companyLogo: AppImage.beelineLogo,
    image: [
      AppImage.bBanner1,
      AppImage.bBanner2,
    ],
    color: Colors.yellow.shade800,
  ),
  CompanyModel(
      companyLogo: AppImage.ucellLogo,
    image: [
      AppImage.ucellBanner1,
      AppImage.ucellBanner2,
    ],
    color: Colors.purple,
  ),
  CompanyModel(
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