import 'package:flutter/material.dart';

const Map<int, Map<String, dynamic>> genreMap = {
  28: {'name': 'Action', 'color': Colors.red},
  12: {'name': 'Adventure', 'color': Colors.green},
  16: {'name': 'Animation', 'color': Colors.blue},
  35: {'name': 'Comedy', 'color': Colors.yellow},
  80: {'name': 'Crime', 'color': Colors.orange},
  99: {'name': 'Documentary', 'color': Colors.purple},
  18: {'name': 'Drama', 'color': Colors.grey},
  10751: {'name': 'Family', 'color': Colors.pink},
  14: {'name': 'Fantasy', 'color': Colors.teal},
  36: {'name': 'History', 'color': Colors.brown},
  27: {'name': 'Horror', 'color': Colors.deepPurple},
  10402: {'name': 'Music', 'color': Colors.amber},
  9648: {'name': 'Mystery', 'color': Colors.cyan},
  10749: {'name': 'Romance', 'color': Colors.lime},
  878: {'name': 'Sci-Fi', 'color': Colors.indigo},
  10770: {'name': 'TV Movie', 'color': Colors.lightBlue},
  53: {'name': 'Thriller', 'color': Colors.deepOrange},
  10752: {'name': 'War', 'color': Colors.blueGrey},
  37: {'name': 'Western', 'color': Colors.teal},
};

const comedyGenreImage =
    'https://s3-alpha-sig.figma.com/img/9e47/2e19/fb80c1201eb093ad57ad9e17f30b70ea?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GDxocF3I5wNSQRzE3X5RUlIYMzUCcKDjV9gBQVEGO9OOlxSWTXWWHLP6RsRXKhFu1CYER-xF7kDaoEjm1SG1mmsSUAFxJK7BqS1nhsImUBK1Qvn4FbInq6G7xSUJ-3B8oivsRGbO5nHVa71leI~FzFRXltdBaYrUFprkEIVUA~LDhNLw2hdWnHYz6f~jEbR8GzfDjx00g~npBHoVk~QK8Hai19YlEeUIS1Kv0PJdwqDmrG-2W0e3LPqVMmpgy1jK0uNAaipJLvnYR02vaZqoW~L9Clm7D4H~rEAKHhiZPQvz4BAjYtl3mnq-bGIv-qG~qQQwZeAEetz7umbdehDNfQ__';

const crimeGenreImage =
    'https://s3-alpha-sig.figma.com/img/ca81/68ef/09316c43fa9ecad7ccbbaa18c4876a2c?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PEGLKLJyxISuMM1hXPV8263QcXK74v-SPfsQIz0OquZImQupCOEzrI3fHOm1TvbFdftSDZbXjmSCFytf-Jxg89oxySjLXP333V2shgNTp9HxrCklA5xaNr0La0j0P3dD3Jfmyr9S~PnmDo0Vj3zqI02WdYbt~FahZfqNE-Uw79JOpXMRkCPgRcuDpZtk4sleLNONtnPX1DhQy95NqOvJFtUY7UQi2BHQg7LeOFKQRiW~DnN5oL~Yea4FKk-GpxF~gDAHTV1-Rw2k9PQIBEehFp4E7lI~8IAQUYtHn7hAtr1yajkNuIYHU6alr~RpqXiEUvmZJ8WY8pfU2o7ZuXSEyQ__';
const familyGenreImage =
    'https://s3-alpha-sig.figma.com/img/4b03/7490/aab279d1def87ee23e7474f511fa7f86?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=P1SPJDrL347lFLXeZsxS2pKSgn-L8qHxRCRck3quM3-oS51nc1-ILswn2Ro3sSLKxT-xwQxNoJ2Gtz8Ujf3D2Xm4Dr33Kq02516DbzghTF8-eBTXyn8M9jgIzoipWC~5P2CfwvRJH8gd-0RpdYegB3w6JkugT1VEpTyfEOWePHanABukeljvHimfS2JGgs59hkTvHVv3m05KMhUphNzOT5b~fgz6q3xDCSObteavUMDpygBSwhm1-e6uP9jyBOmIlsQrEn7g0L1QarntLzPQlWT4SN0gKeqgplDAT~Zwo1lNplIh~mW9vR7SgZj8DWXN101BCMK~pgvVu63lG-AHGg__';
const documentariesGenreImage =
    'https://s3-alpha-sig.figma.com/img/8e28/4b21/034e2911799af2e3119b8e51a3899d97?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WHRrK7DRxhmyTNswccY9T1gvnj0EbFTu4Ja82K1drcoAko6x0Qhv-jxp36aCJo5chNdPnyfmfln33SEPNcWSgnSrERXy9C66to2kby0LymBLnpG8W0ZC-KwYrYHn6PrCzGyyGiYhr-uS075Fk1QioZzC6sFj-LxidiTlOF9ZJL4Of7j~Qv8cJxk5UrM-m~PEOpWdIhA5HbL3UC81zTPB5epLy6aFeB9vxdpqzcI3guzvPfGoyvJ5RDD6QdUHtUzsZobkQLwx9~3ACjesYceZ3eetEdaTsLK6Hg~kUpkXbcfKF5yZlFYruZ0uYFpQaESqfVtxLkoznoJCYd4cwuJT7g__';
const dramasGenreImage =
    'https://s3-alpha-sig.figma.com/img/c2b2/8020/bddc37876e1ef70e3d5ec6d00885f3ab?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=H4RjcQkRiqokA5oSYvbU~yZHcQvKuv4fR6wnwmZdKwfprXiMs3Uh6OkETA~PhcxbTNdTUGwMdkdlItQ4C7U2Kg1kbBNxgJw8z0YAWCdesYwFxdmSoujLUSQe7sSNRLdIxWPBRpIIsgjQ9ZCeUmFc26TtGBrwF3kQMfCS4RlBbJi8XYV35hHA-2iguW1fcZDzJr0sr3zY1Cvp~evwC0OfrLYVqzFvF4AHim-IkHxDFHTZUhPtz-fCf1Hl-zcKVEuFS4JFkLZ3RrealKwMDH71QfGwx6jkHTA6XitdGI8AhZIoGT0vieNxArFgtn0urOSsf9fa73BxdTFGJuoc9vmHyA__';
const fantasyGenreImage =
    'https://s3-alpha-sig.figma.com/img/166d/6e16/8ecd2038f39896e442072d731dbf6269?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=XnCznKwL-kLsz8PU55Sxk13~FUvdG4HT~5KcCoXXpOBrdfGLDQqtAXZxOKKmp6lIyZneLUSMcJrYIciQl1kb~MEzeECKBNRxsyTOxpz1Mdg648VkE~3K4By0c28TPDCtRUBbV~gQlOoUt28o~7aXNKQiOBNrK4qhmcleAQZLSBnoswIsNUc56DlRBXRRkimepiHi9UBok9rITIyE4zESZeeuNFfncPwi1jEjCvNb8j6oPkyJX9pcGJrYBPfVy3wNfxcbV9gek6QU3ribBVT3rY8-h8mwbWsIJfDeLrPjMgMR~zqemeBzNpGCfvc-h4~x0zhLpLkBtRzKewxA~lveuw__';
const historyGenreImage =
    'https://s3-alpha-sig.figma.com/img/4ac5/2222/d63e799e533dfd5427b073f6cd88f36d?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PsB7jUpVIqkZ4i0rVKr50RmmO2hH-deqZK5QuRdzYZhV~kCjLtwu~bTfNmHz8qPAx8Ebduh4EPoJTFjLCbZktZZd5F53lu9IZSSArU1YB9mqhRgTItGQ2YvWBdaLgOt4BSmMyr2NvbqhhmIuPp2YMzFiHnP-kSjMOTYAxm1OCpJ8gm-DMTX2YnScAl3iS6xs7Fr3xfW8afQS9ukX9-K5GivNDbM3ZkGJKcwGhrX939hgjuSxzVhAhWysHWhZQytgW9ODb12jVIMRdPAxmyCWH1Syw7PXjoT6Jo3d62Uqzi6NpzBOMxmrIFdhxQdQubpmBzrJknPCXfYrvHFhMjDFlQ__';
const horrorGenreImage =
    'https://s3-alpha-sig.figma.com/img/2d05/d196/b6c32122775f2b8d6e74296ba90718dc?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=X7TsYLuz7bJHqbBHsFao1aABjTjraoTsX0IXOD0EuzqbUo1C3OjkwCGXrarNYwH3zZqb4sdTLvEKovUc-HCZy9QUX~rogFnPu0TukYKtPELCfrtWP~htOEtqMXHtGj2dnPv4Ux7nU~FM3BUe5xj5LhUeQJ0OI0CT~LiR-FA-QIxnn~-tOVqsVmOhaaIPuPqEXznB0E7Uw0-raPkUuZeBdCg8gJu-Ft9TT0rEKqutxEa99EldYIZXs8IqPWlpEDZMWCXq42EDpnpDrg4ntsV9LeOJS-~pJ0z-aK7wegw0T4NpmZThmb4deCseG-g~nntYRMtEl2CTCb8PRa~ekCvPog__';
const scifiGenreImage =
    'https://s3-alpha-sig.figma.com/img/78a1/733b/0222f38442e4899d13062a60c0dc408b?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nji~OSEBZTwj8ZgcIvCNL-BuMkMAuDFIoqEUAdGRSsXL7yefhPj8sojmgrMVy6XZYHckluuz0y6HLeWCAZXTo1ju56cCfcRuDI0hkzmBLfRa6hhep6iFSvnj44mMJW6H9u~4SGYGBfOQTKbXzl5LoFm8Zr~WaaVSnqrFBwpoLNkmAgb1TREM~VfR5zfRiW3AStqaQGY4eraHQ1novOgPjrKsLNzS6V6MqCTeqLG6Np-FcjgaitisPhlTSf2RBO39AKE5oBZPPDped8wQiwZxQIA82qZDnOWKPwq6I1BbzAU6MJnowj8Nq~3Junpp5h3og~KVbodLropF~LC-oSGEng__';
const thrillerGenreImage =
    'https://s3-alpha-sig.figma.com/img/d074/cc8b/a5205d1ae37915b6b0c9cd23e2d414d4?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=eNEdZX3~luS7vp5Li7la~zX5NvTfsKORmN-dVQSaOr7Dqq9RTHlYz4rXKuWCUAKID0HkJav0c1YOt8lo21XNX7myovqE4u8ZVAShMpG14Ro4cMtTUje4Cco3RxmSEtF9HlsG5fo4Up4z2M~uVgp-g3XW6-wUaZD7ho3kxa7eldS7JLP7srWhuGTb3RXVyBoj7KgWXf4hEIYMCYposl~99lPmlfl74hFr50DmPnf0FFODJf8oFAp4flXDlRJWdkNg8~BlTMm~DH2LZPkIYJEzJtroewdBDws24SQ9qOUEl~osErsPMvaS4JQXNa10ZmGAvfH5X33ggtZto1f9SXlRIA__';
