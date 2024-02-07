import '../../../../utils/tools/file_importers.dart';

class CompanyBox extends StatelessWidget {
  final CompanyModel company;
  const CompanyBox({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context) * 0.9,
      child: Column(
        children: [
          CaruselWidget(images: company.image),
          ...List.generate(
            menu.length,
            (index) => MenuWidget(
              model: menu[index],
              color: company.color,
              onTap: () {
                Navigator.pushNamed(context, RouteName.internetCollections,arguments: company);
              },
            ),
          ),
        ],
      ),
    );
  }
}
