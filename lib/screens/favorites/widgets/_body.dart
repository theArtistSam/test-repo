part of '../favorites.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favourites',
          style: AppText.h1!,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: Space.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Updates",
              style: AppText.h2,
              // change color of the text
            ),
            SizedBox(
              height: AppDimensions.normalize(110 / 2),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (context, count) => Space.x1!,
                itemBuilder: (context, count) => const _Story(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pages",
                  style: AppText.h2b,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppDimensions.normalize(187 / 2),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (context, count) => Space.x2!,
                itemBuilder: (context, count) => const _PageTile(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
