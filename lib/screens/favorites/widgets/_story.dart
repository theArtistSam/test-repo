part of '../favorites.dart';

class _Story extends StatelessWidget {
  const _Story();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber, width: 2),
            borderRadius: BorderRadius.circular(
              AppDimensions.normalize(89.4 / 2.5),
            ),
          ),
          child: ClipOval(
            child: Image.network(
              'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?q=80&w=2417&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              width: AppDimensions.normalize(89.4 / 2.5),
              height: AppDimensions.normalize(89.4 / 2.5),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          "User name",
          style: AppText.b1,
        )
      ],
    );
  }
}
