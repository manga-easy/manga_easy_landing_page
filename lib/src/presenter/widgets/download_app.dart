import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:manga_easy_landing_page/src/presenter/controller/landing_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadApp extends StatelessWidget {
  final CrossAxisAlignment? crossAlign;
  final TextAlign? textAlign;
  final Alignment? alignment;
  final EdgeInsets padding;
  final double? imageHeight;
  final bool isMobile;
  final TextStyle? textStyle;

  final LandingController ct;

  const DownloadApp(
      {super.key,
      this.textAlign,
      this.crossAlign,
      this.alignment,
      required this.padding,
      required this.ct,
      this.imageHeight,
      this.isMobile = false,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          isMobile
              ? const SizedBox.shrink()
              : Image.network(
                  'https://media.discordapp.net/attachments/1071892919633576117/1089615453946658916/image.png?width=583&height=650',
                  height: imageHeight ?? 500,
                ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: crossAlign ?? CrossAxisAlignment.start,
              children: [
                Text(
                  'Aqui você pode baixar a versão mais recente do nosso aplicativo.',
                  textAlign: textAlign ?? TextAlign.start,
                  style: textStyle ??
                      Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                FutureBuilder(
                  future: ct.getVersion(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text(
                        '${snapshot.error} occurred',
                        style: const TextStyle(fontSize: 18),
                      );
                    }

                    if (snapshot.hasData && !snapshot.data.isNull) {
                      String data = snapshot.data!;
                      return Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 200,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(254, 61, 0, 1),
                              ),
                              onPressed: () async {
                                launchUrl(
                                  Uri.parse(
                                    await ct.getDownload(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Baixar agora',
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(data),
                        ],
                      );
                    }

                    return const CircularProgressIndicator();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
