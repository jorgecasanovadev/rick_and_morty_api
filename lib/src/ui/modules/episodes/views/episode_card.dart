import 'package:choppi_test/src/ui/modules/episodes/model/episode_model.dart';
import 'package:choppi_test/src/ui/themes/themes.dart';
import 'package:choppi_test/src/ui/widgets/custom_widgets/static_separator_line.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EpisodeCard extends StatefulWidget {
  const EpisodeCard({
    required this.episode,
    required this.episodeImg,
    this.onTap,
    super.key,
  });
  final EpisodeModel episode;
  final String episodeImg;
  final void Function()? onTap;

  @override
  State<EpisodeCard> createState() => _EpisodeCardState();
}

class _EpisodeCardState extends State<EpisodeCard> {
  // Variables
  bool likeState = false;

  @override
  Widget build(BuildContext context) {
    // final seasons = episode.episode!.split('E');
    final media = MediaQuery.sizeOf(context);

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: media.width,
      height: media.height * 0.25,
      decoration: BoxDecoration(
        border: Border.all(
          color: paletteDarkSkyblue.withOpacity(0.9),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        color: white.withOpacity(0.3),
      ),
      child: InkWell(
        onTap: widget.onTap,
        highlightColor: paletteSkyblue.withOpacity(0.8),
        splashColor: rmGreen,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: IconButton(
                      icon: Icon(
                        !likeState
                            ? FontAwesomeIcons.heart
                            : FontAwesomeIcons.heartCircleCheck,
                        size: 30,
                        color: paletteRed,
                      ),
                      onPressed: () {
                        setState(() => likeState = !likeState);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 10,
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          widget.episodeImg,
                          width: media.width * 0.3,
                          height: media.height * 0.2,
                          fit: BoxFit.cover,
                          color: Colors.white.withOpacity(0.9),
                          colorBlendMode: BlendMode.modulate,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            Text(
                              '${widget.episode.name}',
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.visible,
                              style:
                                  TypographyStyle.btBold.paletteDarkSkyblue.s20,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${widget.episode.air_date}',
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.visible,
                                  style: TypographyStyle.btBold.rmGreen.s14,
                                ),
                                Text(
                                  '22 min',
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.visible,
                                  style: TypographyStyle.btBold.rmGreen.s14,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            StaticSeparatorLine(
                              separatorCounter: 5,
                              color: rmBrown.withOpacity(0.5),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
