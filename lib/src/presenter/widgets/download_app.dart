import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:manga_easy_landing_page/src/presenter/controller/landing_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadApp extends StatelessWidget {
  final CrossAxisAlignment? crossAlign;
  final TextAlign? textAlign;
  final Alignment? alignment;
  final EdgeInsets padding;
  final double? width;
  final LandingController ct;

  const DownloadApp(
      {super.key,
      this.textAlign,
      this.crossAlign,
      this.alignment,
      required this.padding,
      this.width,
      required this.ct});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: alignment ?? Alignment.topLeft,
          child: Padding(
            padding: padding,
            child: Column(
              crossAxisAlignment: crossAlign ?? CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width,
                  child: Text(
                    'Aqui você pode baixar a versão mais recente do nosso aplicativo.',
                    textAlign: textAlign ?? TextAlign.start,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
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
                      print(snapshot.data);

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
                    }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
