part of '../favorites.dart';

class _PageTile extends StatelessWidget {
  const _PageTile();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.normalize(187 / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              AppDimensions.normalize(25 / 2),
            ),
            child: Image.network(
              "https://plus.unsplash.com/premium_photo-1681412205470-77848a519359?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              height: AppDimensions.normalize(136 / 2),
              fit: BoxFit.cover,
            ),
          ),
          Space.y!,
          Row(
            children: [
              ClipOval(
                child: Image.network(
                  "https://plus.unsplash.com/premium_photo-1681412205470-77848a519359?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  width: AppDimensions.normalize(32 / 2),
                  height: AppDimensions.normalize(32 / 2),
                  fit: BoxFit.cover,
                ),
              ),
              Space.x1!,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Room Roas",
                          style: AppText.b1bm,
                        ),
                        Text(
                          "\$\$\$",
                          style: AppText.b2bm,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Los Angeles",
                          style: AppText.b2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppDimensions.normalize(10 / 2),
                            ),
                            // Is this correct?
                            color: AppTheme.c.textGrey,
                          ),
                          child: Padding(
                            padding: Space.all(7, 3.8),
                            child: Text(
                              "\$\$\$",
                              style: AppText.b2bm,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
