enum ImageLink {
  discord(
    'https://media.discordapp.net/attachments/1058498940498083851/1115745394413023282/discord-logo-2-1.png?width=885&height=671',
    'https://media.discordapp.net/attachments/1071892919633576117/1089659384063344680/image.png?width=1259&height=426',
    'https://discord.gg/ssp8Cr4a7u',
  ),
  github(
    'https://logos-download.com/wp-content/uploads/2016/09/GitHub_logo.png',
    'https://media.discordapp.net/attachments/1071892919633576117/1089658638060224653/image.png?width=1259&height=413',
    'https://github.com/manga-easy',
  ),
  instagram(
    'https://media.discordapp.net/attachments/1058498940498083851/1115743915807621120/R.png?width=671&height=671',
    'https://media.discordapp.net/attachments/1071892919633576117/1089611345026101279/image.png?width=1178&height=522',
    'https://www.instagram.com/mangaeasyoficial_/',
  );

  final String linkBackground;
  final String iconeLink;
  final String redirectLink;
  const ImageLink(
    this.iconeLink,
    this.linkBackground,
    this.redirectLink,
  );
}
