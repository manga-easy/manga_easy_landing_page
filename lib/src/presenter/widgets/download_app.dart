import 'package:flutter/material.dart';

class DownloadApp extends StatelessWidget {
  final CrossAxisAlignment? crossAlign;
  final TextAlign? textAlign;
  final Alignment? alignment;
  final EdgeInsets padding;
  final double? width;

  const DownloadApp(
      {super.key,
      this.textAlign,
      this.crossAlign,
      this.alignment,
      required this.padding,
      this.width});

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
                    'Aqui você pode baixar a versão\nmais recente do nosso\naplicativo.',
                    textAlign: textAlign ?? TextAlign.start,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(254, 61, 0, 1),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Baixar agora',
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('Versão 0.10.0')
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
