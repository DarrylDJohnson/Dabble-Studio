'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/objects/00/08acba5d236f7e17b4255b24f07cc492d9f026": "570b62e154249df04bd9e9d2198aba75",
".git/objects/03/73f5913c8e2b0fd951742efc51c975c14bb310": "e6f013deb455baf08af43bd5270716a9",
".git/objects/04/23ada25d378fcf8c327630d24db259ba6318b1": "8193d079b41a6759a57887851441d5f1",
".git/objects/04/4335dd96fd283f341cc4cb40df312bafe2bf84": "7d35c8da02bcea6aba590fbf421f3e46",
".git/objects/04/ac4b02305c04670a2502a27463c52be521a1c3": "5563b9a28f164805e5cf56206cf4518d",
".git/objects/04/d8a33697b5a01221876317a7b6e4c4715446e7": "389f35866db6d58107818818d5607b0b",
".git/objects/04/fb669eda01c5b64da07c06f46b21be60a53ece": "157c5c20515535c3c592c73a6406b419",
".git/objects/06/4e3dd86aec75e48f17597c4f85ea4e9eb34a09": "4b4a6e2bd29401f702f99c943180351c",
".git/objects/06/8eb791918998277f63f4a22ea53051527f6dc9": "3dc77ece90cfeeb6ac70880e560d8ca2",
".git/objects/07/65139efedfdff5e04e1b1904a26989958cbc7a": "74e96aaf4478d648d348073719c09593",
".git/objects/08/1a737c1b914028840a4d53246dd451a3dea01c": "408b52e1fb9ffe0ac43effde9c193987",
".git/objects/09/d29e438cc266e99851f2d18941174b9c388468": "04df9fc75cbd36469f484b317d159b8d",
".git/objects/09/d4391482be68e9e4a07fab769b5de337d16eb1": "a603712ac5534497bc4fd35ebd46b0b7",
".git/objects/0b/2d479c08504549ca6e74f0743bd584f068f9bd": "6e5067fad23e6b3668953456728eef6c",
".git/objects/0d/c9f495c88f72c97c63e26b7a545ecd018cbf4a": "02d996136fbc7c48eda45a9ca26cfc85",
".git/objects/0e/d06c6fd2a49994f4d2050b9628dffd7a73d452": "3177915023925906c664a563f6f51dd1",
".git/objects/10/73475d3404763fc892c00fa8d21248a0c6927b": "1f2bd81d4e11e8ae14ee93776549aca3",
".git/objects/11/7273a8f85391ba64f4cddd852091f2ce9fcd01": "59d0523ab1d406ce4fcd2ddd635c4e43",
".git/objects/14/09249ae46dd9aff5a189d1fc87f7ae589a2e37": "e797d66e14297a7b8d732a68a8a89c22",
".git/objects/14/7685d26d27a8d209919d56ace0f686cde1f94c": "0c453da175dc6a4467bc267725090a0b",
".git/objects/17/987b79bb8a35cc66c3c1fd44f5a5526c1b78be": "f47de426b1d6c272d2659c734c9de80f",
".git/objects/17/a579b3ec812deae84eaed35c5ec10ad89be481": "cc36b0b15c5a62e1d1bf28287921e802",
".git/objects/18/81ba8c45d4e2f334d417e6c82ef3f0288db8f1": "92a6782c0a8e5703694c7eba527bba16",
".git/objects/18/e3e378e299fd5863edc2ffb95f0008de7a6b6f": "869f614774c609dff1efbc9daf598a11",
".git/objects/19/0b9cfffc6c056179cb2a322625ead9c2bde606": "510a6c427f0988dfc05f764452938ff1",
".git/objects/19/50fd80edd4b0b01afb3901a2f4787251280206": "eac3c6fa7ad8ac95dbc2725076110a53",
".git/objects/19/98bec87235bf743bec8c0f611d148135a033d4": "002a96bea34d19d326e65131951265fb",
".git/objects/19/a47167155e964c3052b5d445a3bd42cfbd6add": "61f0f5992f8c04081d7943bfa4d455e0",
".git/objects/1b/d07708f8ffdae35952e951f66e1dce31f71d23": "ab31446cc20843b2dfd5744e0707bb4e",
".git/objects/1b/d5e18db951ebb5db685bf0d4dc1d5aa9dcf482": "c3f5d03e60129dd915fbdebe7bcc13c2",
".git/objects/1c/09b2e87be4bd2af2790009a3f569300a3212e0": "6c28e3aeb48aaca355f05bf3dd3ae71c",
".git/objects/1c/b66a2b4717bfd5dd01af308dfc920a73d6614c": "c9999390f40dec600817b81a16031f74",
".git/objects/1c/b7aa2f6e8c2438e50149b6ec567b515c243c88": "6d3c861b7218b7b2be419c97780681cd",
".git/objects/1e/1a87da45134856eda79e1ff4cf5f2abab837e0": "c3ea23ff7627c61298709f43bc9dc43a",
".git/objects/1e/6d863e79c8391756e5cdf50e4186154f674d8e": "6bffd38fa3dcfe0dde65473dc7c9dc3c",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/28/7dc2c1349940ee51120aeca7f02cd41f329fd7": "66be7e7067045d0b4b505a3a7a348784",
".git/objects/28/c6bf03016f6c994b70f38d1b7346e5831b531f": "859e347621927457ff896dba865a18fd",
".git/objects/29/a4359ed0ba945a1af87078f3c0f08d298b0285": "c9950050390c4b4ad98b39a19214d607",
".git/objects/2a/009296057e90c944c373f46ba2170eb2f9b981": "9a9cc918e41104494e6bb7cdcd4571a6",
".git/objects/2a/34ca3a3b0aaffbd542ccac106535a16cadafb2": "aa63dcf6effb027d145bcff89d8c1a23",
".git/objects/2b/6392ffe8712b9c5450733320cd220d6c0f4bce": "8c5765aae9760c295ac45acfb0e04a63",
".git/objects/2c/53608ee9652e392237ad01c0a61b926d25c2fd": "cefaf04ebb3d1367bb2af0b231484306",
".git/objects/2c/cbfd967d9697cd4b83225558af2911e9571c9b": "79f574379587d27e91d5ebf05ea6e777",
".git/objects/2d/452383651a6ef279743a9926b90234b8b79366": "c509d556b2a9b17abfe6a4b405457ff8",
".git/objects/2d/4aac6163b974cc9e8a21b6456b69dcea9ebc05": "d0db0e241b16b89ccc9df25cdf1ad5f1",
".git/objects/2e/4edb9ce95f5a22553ef266e3af79ec2a2de4d3": "b5487e65675d6082fc7873e7f78bd7de",
".git/objects/31/990f615a16819698920bf20a1aae2976daff32": "508815c078805a9e35946a65cbd4d1a3",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/33/57d3a68188753eabcd963fc5dc96e1e4dab33b": "ba81778806e7a3493cf84862b70b51a6",
".git/objects/33/f0745d1f811414fe3de85f22f2145c94a2cf2b": "a263ddc745dc0f17304effa6e9291035",
".git/objects/33/f0c423a854fc4a56ae5170074ea92388e3262f": "d085c2dbb34ff40f8dc620ccd53b8a87",
".git/objects/35/267989deca17116c70c987e90035303e2e3404": "50c87c2481cc197e8d549e03b7ac507c",
".git/objects/36/6dd0a5f259f1d18bb6238298025225904b59dd": "7976aa3b1f7d050e50c72164121367d1",
".git/objects/36/cbce676bcfbddfa689b9d0abf23ac40fd2e60b": "8c963983d40f36e775abdac45c7810e0",
".git/objects/36/d3985a3a26a9d4b381e2d7dfcba2d3db0a06f7": "dabdad17beb31fc45fbc340dd9479455",
".git/objects/37/63683793b8430b3e8c7859ecbc87482fc1cc92": "0f6972e403126b3e98ce960a60380a5b",
".git/objects/38/07750c6cddf02cb0c2e0889e54fa78756db074": "d010c43fe5d6e5cb6113126c42696216",
".git/objects/39/051986146007d4d9c9bb89101f9ae1bb068156": "d2f6eae0faab1e3a76298cd6f3cdab87",
".git/objects/3a/960788b1104bcbcfd0f94feebea3c7c4b96e82": "c0b10df1d6e5fa4ac0464da7078cc3ed",
".git/objects/3c/4a7964901845c9b3ebf169e80046ba78c83fc8": "4e4cb6beab2568e57bf261b758262cb0",
".git/objects/3c/770930d3de6e95884408f7e67b896e5c59b318": "f53eb94e53d35bafaa50eb37f4264f08",
".git/objects/3d/d37118afe01a54ecaf64bea2203696eb0febc1": "3417a6c3a344069aa840b2ffcd24b90d",
".git/objects/3d/f3d1a91dec9f419bbf32c7dbd7ffe3049577b7": "2da7aed2720fec500109845fe6130ee3",
".git/objects/3e/a174c45c1e14e3678e5670cd27070b4b26b364": "127d1ccfa3ce0c8c4bed597860dc492f",
".git/objects/3f/1e0a85df908c2cdac567639e39a8a35ce6cf24": "d1fb73e86efa1c5c8eb5b823fd4f3da2",
".git/objects/3f/802b4fcb2b4687713af3c1435ce97fd38b1da4": "4750b2fafbd5122831b32c4144b9b1ae",
".git/objects/42/ad02d0f243134560248db93b278739b43c505e": "cf3a2dfbc20842041411424a031bbfe8",
".git/objects/42/ef072667312bdca2bf348d5ff6b17d20a68e0b": "56712cd7e8a7a3f8eb9eb5302abf9f15",
".git/objects/43/6ebb0ecfd4d2a9311ba69db6c4b0369c5241e2": "52c646f806d1ef7e6f8b6f3b79d38cb5",
".git/objects/44/5c500fac34e1628eec8dd5bde937c3154fc3a6": "71cd5b42448ded7cf26b17e61221f318",
".git/objects/45/c4babd4b66ddee48de5a1842f91810e1eb3b28": "bd705cd7caa661bebf5e6c8a6ac1e682",
".git/objects/46/0a0827972bfbdf980e5ba515cec25b5663494c": "f50f7031f5988d84b5014b16b053a8c1",
".git/objects/46/b726bd53d47e61ba941eb355b9c8633ebbaa20": "480b1cf7af4c452e5722818c06aca052",
".git/objects/46/c1f169affc8780e4d36b676bb291931b7782e7": "180b6738a9ed3ebb87f675b082b99b4c",
".git/objects/46/e9bf7c95adb27c042d0646deb1f8a3beb8087e": "5c1a11ea89825664117b5ed3e271e2f7",
".git/objects/48/6951020c4911caf14f1589d4550ea0f625070f": "50ac4dfa310ffccc6173ec20b227d977",
".git/objects/49/7371ea23a88889b582a79836d65568268f5fd3": "dd9d19442b2b5b73770e2274b9145031",
".git/objects/49/871b062aad790c06a51c5a494c7f7cf534f4be": "5a76eacaa50c7c29f715e7c732508f5d",
".git/objects/4c/53a3a6bb04712de954218d729eb77095a7660e": "b43e8ed270307ce6e6ef89220dba6ffa",
".git/objects/4c/da582acd6a1d85d124117172d457001c2c7de1": "72b1fd794e649389b48a64add11a6000",
".git/objects/4c/de12118dda48d71e01fcb589a74d069c5d7cb5": "28e8a446706511f1a67da714824896ea",
".git/objects/4d/6372eebdb28e45604e46eeda8dd24651419bc0": "1a6a714da9180a4b75ff188c6eb0514f",
".git/objects/4d/bb9c36b50b0efa948984351e9739d22d9b8797": "f963701d646d442a9cd620cbf82e71ae",
".git/objects/4e/4f31686f9db6c5f29b950573c759d09519ec0c": "fdcb7d14f6a80dec505b6b08187c3b66",
".git/objects/4e/797cf7ef9758a9209fae4e0b07e6b186b2c69d": "45a46ebf637590e5cc3e7871ba7ccfd3",
".git/objects/4f/d4c30c82ee69ecd53644071c322dd012988dbe": "6d1280d9e37752ce1814a64e81c63d6a",
".git/objects/51/5bfeb2159cc452c3a6f82e441c61bd23d327f4": "4ae545534c6a46fdc863110d0318c356",
".git/objects/51/e5b193c524737f2e529ad33f68a5c799b3b0e8": "62423f4b53ae9154de736a8f7ae23b3b",
".git/objects/52/51ae657b984ee3c98026d32f1994135f73a60d": "ca7cb1b51cafe06eec8af4db7ba724a0",
".git/objects/55/34b2b726458fa8d4f5999ab7f0bb5372b85e37": "74aefcdbbf57b225fb94221af2804901",
".git/objects/55/456295b3f19915380fa8d5c4c99db2b034bbc9": "08214898a93bbc3eefc8f47fb838b857",
".git/objects/55/6c99f4daff139a267d2809505b006d7eba5f4e": "bd8c8a971e3036331cdecf491e980ed9",
".git/objects/56/98f48bb8b86e776f5623a7c8ffe699646c5886": "0a436d1425ff4012fbeb0d4d4cd0ee10",
".git/objects/57/1984ad1976d5e2a9263a7a2c54416986c39e22": "8de3020185c9ebaee2ba487b27f99aed",
".git/objects/58/214ac497c320ffce7f179c2615e230d0593731": "898f1d43b0fd1d5253f489bb18ee7062",
".git/objects/59/7b54b73c3114d001c9b5e3cdcd4d2820007d7c": "83c13e8291b0fe4b5fe3ee6fe0e55118",
".git/objects/59/c6d39465edc08bd1e919a6248c68b1b72cfd33": "e87ccef1050125c12beb6931a4ca4f42",
".git/objects/5a/deb40bb930d7ff0a3033f589d73c79ba001290": "3e2dc42d9d087adbfe9d146384a89971",
".git/objects/5b/390ff950e6539bdfd4d84265fdb01e0c35f291": "dac6e694e07cee528be3bcb1da3beca8",
".git/objects/5d/c6a2dc6c38c1b1ee54b0ad5072c6e29968ed24": "ce6d2eeb4535e5950986c78ab3686dd5",
".git/objects/5d/e70304d1aa4677d322ad9772ba5a4bdd390f01": "6284ef4cc3dc292c467a9f1c5e60c1f3",
".git/objects/5f/6ec4a7b4373648f76248e3a8f604b7d2a12365": "99e23a6697425c8799a33f042ed03d28",
".git/objects/61/8639f12ce8317bac82b63dddde3a3de2b45aa6": "b748f7bbf358341ee9dcabfd02c1da3c",
".git/objects/61/e475ea0c94999758dba3d3b292c2864a531568": "237616a1cc6866b0fe79b6a6c8afdeb4",
".git/objects/63/ae91781b27ac492da799ae4010e2a6bd0c1183": "5fb3a33e244995a80bc868ba08d2ca4b",
".git/objects/64/5b21b1093ab0b2d46b934e636cdade38f0b5a1": "f7840a33a04e6b83e9cc4d0323ccb3ce",
".git/objects/64/9f09671ff0051a7dd9760eef202b4a3e9093a5": "9122260f07086743233eed36e7feb3d7",
".git/objects/65/a94b5db54ec02257c0fd4e74ebea1a7a34e881": "15392f6f9ae54d4709fc8d50c27933e3",
".git/objects/65/f656ea677b6db02277271e02fd525bc1c33b55": "cc06bc71176f9fa7abfa4121e5b2bf86",
".git/objects/69/fead73228e3dcf0a20dc754706d4b59d2dcd9c": "7c2c71e596b2d26b0e16773886ec32a3",
".git/objects/6a/12eca5807290799006c2d911f44c094dd75dd0": "5ec73021b3b65ef4929d487fafed9f63",
".git/objects/6a/84f41e14e27f4b11f16f9ee39279ac98f8d5ac": "a913aaf750cc736879f14f53488f5c42",
".git/objects/6b/1be80e5816c7252132f12eae461a92de5a59a9": "e54f2e71d2d5424a5867099779a2b8bb",
".git/objects/6b/4e4c50abf07e5009463f095eedd53d0a4b56de": "5a25572da1b7176c84c77b31d7a32c80",
".git/objects/6b/6bbd7619783abd2cff45f96877cff5573b3f35": "1d495771dbb02d230a3670838261b165",
".git/objects/6b/a0fabf1149b97a0a0c28bc1f79e6df3f47d9f3": "b431f9d46b494994af48929afbcc83ce",
".git/objects/6f/fe1678d6d94ee69f898f72bf0f36dc595139c4": "1ec425e02885fd3e506069a7ac660ee3",
".git/objects/70/e5eafd8764ca5b2b08abfdade0fa748ce10a7b": "b40687fcac0340b4c7aea9aeea7b3899",
".git/objects/71/a8e8355a8832099bf93e8befdae174d7cf9d1a": "d44b85daec13ef45cd8cbd0434171f89",
".git/objects/73/00745c4daf7ce5c7270c23daea9f44a6c5ac48": "4e753322f66bf9f940542136b5a98112",
".git/objects/73/2cb3ac674bd0de58d8e10cfccc0ac1a879010e": "0f79db4e0776f8f1f2641d2085f7f419",
".git/objects/74/da34165b851dcab2ea280989caf23dd01373e5": "b0144c018e36b7b400045ea30f527480",
".git/objects/75/b2d164a5a98e212cca15ea7bf2ab5de5108680": "d453ef5dc75a6b2e158c081f7a51acac",
".git/objects/75/b52484ea471f882c29e02693b4f02dba175b5e": "abde8da409a47de8393ecd2e34a93779",
".git/objects/78/b9aff08ae4713f19ea7d497e64cccaf264e9df": "9670adf8f4a7ecac1774ba0a2cc1d633",
".git/objects/79/b4c2d8c06230b143f8672b1e2b1743614e540d": "8f219a346ebdc03b84cb6eb9d6af120e",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/79/f1e34acf397f0cfaa6f5bd623a2de7fae1ea27": "b9db1a1cd627dd6e01288ab41ef6b78d",
".git/objects/7a/1689be28724b2f09b57340afb35cba4c5827c0": "e3d050230b0ae66267c7d993bfe56c4c",
".git/objects/7a/70c1b5eef2525abb45bfa5384f4c290d206db6": "e865e0e03d2525a5eed9db5569274129",
".git/objects/7d/97a65fb0887847bbcb583c01abf83540f62ecb": "4428d0ed56f1e4187d0318b4fa424409",
".git/objects/7e/adfad2fa6d8f258c865a843ee1754d80e8b317": "1b458b4ab1fd237bc5c08f10aaad3742",
".git/objects/80/afb390c83194f2826ef16f945b5408421497c4": "79075cab219283467b0358e6b1c1506f",
".git/objects/81/308afc583a9aec4739be0f0a7c09782e5983cb": "6708bbd77b6058bc08f22e0fd1fa9b76",
".git/objects/82/7f12fb013c4ea46e5105287b894f1f392db60b": "fac79c2760390cb6d1c1c5fac3e6cdc1",
".git/objects/84/037589b06bb17b24ba7acffee949159cd99a16": "09b213102933266f897d17042b926b6a",
".git/objects/85/020e85fbe3065c4a774ba3b45b2ceeb23a5bf2": "ce52ca622d169bd2ffa1ee8d913a344c",
".git/objects/85/8c26c992305a7f85f77c849548a4f08f440b6a": "3c0bd914e04f905622ce719d31aec689",
".git/objects/87/5752b34026704f958e2783b1e54854eb098d7f": "091aac7a6da069b41b03381ad70e91b5",
".git/objects/88/0edb8879bcc370ee8b445f0676ed6c798cad06": "d22ad6ec0de1b70a3287824bd0aaa9b6",
".git/objects/88/72b004d9a9fa105402aec51178e71ceba5cb83": "3a04275690126fd0a9aaa85c904d0772",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/06afc62f4edabe449f93d4137a6c3c3d3a70c4": "06f881b0860d96ea8f876e35f4d4a0ea",
".git/objects/89/5423c72527129d0aafe35e85bb8828c92ab471": "452333bfe60d1073da5d829939717f5c",
".git/objects/89/ff95e73c47e424647f1528a56e451ffca1cb88": "3ddd54569209d831b6584b55f5f03238",
".git/objects/8a/0dc03278d045450802f187b35327e46582c3c6": "54e27cdf1de79d2ed55c2b15aedef06d",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8a/dea5a466866e800869049dbe288f154a43841a": "a621e80cf810955bfa9aa139dfe14cd6",
".git/objects/8a/f9040a0f591c5d8c62a07e9e935bb212fc4a07": "ed7a3c2c44d89af089ca53444cb319a8",
".git/objects/8f/1c15c3647314cfdeeb0cbc612ce53c26d3604b": "bea718ad431ffa95e521eb2980e014b6",
".git/objects/8f/37cede2c0828227bdedaa93651b1d0c75b1d2b": "6cc79e4629103e19ad2ed4c0545390f8",
".git/objects/90/4875cedcaa1496faa28ae11017891fcd0513be": "2097bc0a8e7c2dc3faed719699fa5d04",
".git/objects/90/7d954c4a7118aaa0c345f522e68678233a94b2": "d0df92bb14dc988f43ba3c55028c943a",
".git/objects/92/93256e122be40b226b212404cc9f6e0d265ab7": "fd398db7000850b2f2ec968a7da5ff05",
".git/objects/92/c0ff033ce382cf9f36887412b1275f606ae572": "b534c889e43d49bdfff1681ebe9fa825",
".git/objects/93/42fc5eb834c719366e9acf778f6b75f673b737": "d07b72bfceea0fdcbe87a7e4939c9f8b",
".git/objects/94/49b3c9af8c1f622dd05ce58dd0e23a6c22ee79": "2de631fbd7a1a93ecaf13cba643a74bb",
".git/objects/94/78b3ccdc11167edde5b0687988924fda393958": "80647061ce127575d772a5a584f1bc74",
".git/objects/9a/f19084f2fa0871f54b705e7190d5decaf53cfc": "658131af1172d970e2a176d3f98819af",
".git/objects/9c/1f2acb8c026c84ba95666ae485d3452062da98": "fa595a16b1dbd8dc60021bb9d1a6e7fb",
".git/objects/9d/a19eacad3b03bb08bbddbbf4ac48dd78b3d838": "1176aaa6ff7a19c56cf9a6ea692a2c03",
".git/objects/9e/cf157ee4d9d0dfe31b967a962bea6b5dd0946d": "03e0d83f621c0f57b2dc2f0d22f8fcf6",
".git/objects/9f/f985de6a7da35773cae8e76b4509e07fb7146a": "ee4642ba707a6077761fd42d2b498af4",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a2/864ae40d0695ac1b2d00d9ac4b77f330d9d10d": "bec40251ee8d7ed50d7ba24c1e937a05",
".git/objects/a5/bc38641993de67b9c772af688048dfc77f3964": "866716470ae2fe43a6ff1152b3db4f16",
".git/objects/a5/fe1a2a24c2911799609efa20ddf207cacd8baf": "063ef6705b2759ba8232ea4f24d0dc05",
".git/objects/a6/368af0ee7628fa194ef8fe3bbe4523113d6e05": "bafb07bb0e67f8a015ad7c670f7072fd",
".git/objects/a6/9c4fe1d4863f06f5abf0122299d78eab2aaa5c": "43c11f2d93219af32daa69c83b85f817",
".git/objects/a6/d6b8609df07bf62e5100a53a01510388bd2b22": "821831c6c42de47994c16f6a1db3ea7e",
".git/objects/a6/fcd20a8a65c91fe1427a3d95a5c723ac9baf8f": "7f6f3ddcd711f289e587a5d7ca4f10f2",
".git/objects/a9/e334adc0152b23467e48340e9a9a5e68f099fb": "b16812e0bea7e70d83a429f29ba932f3",
".git/objects/aa/8f3b94e011e0f3f6a7216de1a8e5b935c18452": "5d9dc5e192942035c623d3c5cd5ab97b",
".git/objects/ad/b621bc114be56ccc065066eacc3adf312fecf4": "5904df40054ed02071112624e437dfe3",
".git/objects/af/0309c4dc26b0880121296bc3fd0bd14aad8420": "f33a62df9864158b9207688428e15e47",
".git/objects/b2/80a9d9befab777a91d2492c4792aa92f076d4d": "447020db74c2fc55e997689f2966dfeb",
".git/objects/b4/24646697d1537dbff1bae74ff83cb83af08629": "8878433159a990034849ec51b7c0b7c3",
".git/objects/b4/e22103936078c50cdc7ddf7a3e2d51dd2d3c44": "dea5fe604cb7b8d6a367fb17b01c8584",
".git/objects/b5/d1e4c53b430520ed98e5c216d0f6fbcf687d8a": "33e0a6194dd180be839284a87379f148",
".git/objects/b5/e9a5a96de884111a45706c71602b73630d06bb": "f54ba2d013202912e46200635ef47d83",
".git/objects/b6/0a5f634f408d8d77615019ca9b66f75cb6c097": "c833268ccbfa6958e08d05cb41eb2ec4",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/87063604f584104ab49107427ae112d3f06a2b": "5ed3a1beb7670c6e8b7e20210dd2daae",
".git/objects/b9/b39f35d48b3fd69e4022d30a40eecbe25d907d": "f958cf33c3f20aae91f9b3586382d513",
".git/objects/bb/b83caaec5481ea63968cdfdf6e574aa9584a1b": "78bf577fdfad6483b7c2612664ef3745",
".git/objects/bb/ba78c85238c19d02bf5dfe4b70cee9e21fa64f": "084c97dbd65f7cfed6f93d4b99400754",
".git/objects/bc/ce0983c131237c61c13329f55dceae06de731f": "0339ed3900647fba6481c2bc178dbe7f",
".git/objects/bd/8372349f0fd4e15f338be92078014a3ab670cd": "53020e83bd0cbc1e987148f8be3dec59",
".git/objects/be/0b92eff4249920984a4591df4fec6fba35e942": "2973090fcbf63debc81045cad75b8fe1",
".git/objects/bf/19a00befd421c5b5cbae9758c8ca82e451ebee": "2eb101a67f53871c01e59a74ecedb579",
".git/objects/c2/7c9ee35d2624ba86e2b0ca8f052a52a8e72623": "9b01a9249290d294c9486c358930c177",
".git/objects/c2/dbdaf65c62194c6a2c8c5b329b663ea036e303": "565716f5cce2e8515cb7b8aadeaaee5b",
".git/objects/c4/2ab57d682f245ec3b7f6a3286a68961b87cc02": "b8ff1057e73543dc172d01218567e5a0",
".git/objects/c4/b79bd8c0e5b685bc62bc82f93335b2a95fd7fd": "a45bec2103d05f6b8b90bf0c55faad32",
".git/objects/c4/df70d39da7941ef3f6dcb7f06a192d8dcb308d": "d394f8200d968d57839b22cbe657146e",
".git/objects/c6/4647606443e5e9e5eaddbd1bff257d364842a8": "03da44f212a10ac3c4665348a4c61f94",
".git/objects/c7/823437d825e1843a09bdcf6a52372aaf7edc54": "af448c6886e197787f3253a209b158cd",
".git/objects/c7/b082bb96757aedd509ef9f9da39fb06378c618": "5ab9fa3be2dcfa1f65c5846a99ae13dd",
".git/objects/c8/75c54b941181144974a7fcbcaa5ef6b51a792c": "1e95565960da955a305caf0486f628a3",
".git/objects/c8/f9ed8f5cee1c98386d13b17e89f719e83555b2": "0fc2e076b543f37f90a9e7159555320c",
".git/objects/c9/c2487524105f4f034c9d5e72f51ea26e6525de": "82be9f5c4597146846b63f9b741f6372",
".git/objects/cb/1596d5bc27f958c098dd04959cf9af5b0e2ed8": "a47633f4d8dca913793172c1b5499240",
".git/objects/cc/f2854acfefc20d9770e7a79157d211d352c880": "e59f847f505a413c3f858c0c57891cf1",
".git/objects/ce/b9c618bb649ef05a2ce6312fc328144c2bb75f": "df59b87a6f8cd28b56fb53e90f94fd3c",
".git/objects/d0/8a4de320fe20e3d3b11b519313713413c7e21e": "698fb410269689c8d63f3c4f8a33f20b",
".git/objects/d0/e1f58536026aebc4f1f70e481f6993c9ff088d": "18109e32e7fc3bf04e529c14b8723746",
".git/objects/d0/ef06e7edb86cdfe0d15b4b0d98334a86163658": "4d865184682ad08c3405e3934cd91fa9",
".git/objects/d3/19cf8dc230f31b49f79519339bf746340e4c2f": "ab9aac0438a675a7e8ffd983c54275a6",
".git/objects/d3/91f7782fe327f591c910de9439a28879f8e88e": "eb293a69610cbec147715d53524af214",
".git/objects/d5/703175517e35ff0944baeafbfcf6a89e1e6a41": "e00b664b1fcc8ad75cbafb1e55a82411",
".git/objects/d5/f1c8d34e7a88e3f88bea192c3a370d44689c3c": "2e5a4148dc9ebc15b186574d9fb60432",
".git/objects/d7/61c53178cc135119f252e047fb2f6e08512ed0": "54c64d1a96d272170806761ec67134b6",
".git/objects/d7/75aeda805279278ed171b0d9a263b201e4d4b0": "1d2f5c5e76a7b1d635cc2e001c17c49f",
".git/objects/d9/98cf5b468413ca1c950096dc9d0f5dfdb1359f": "872d06090d2311cd71232a001d72623a",
".git/objects/da/86d58412081802232f7a992cfd0d75fdf4e265": "cd0cf3ba5f2dc1e59321f764d8d0bf62",
".git/objects/da/c0d19a9a11917b1d45fc1f74094c38fbd441c4": "618aead60a74e4e72f69e8e6947779c9",
".git/objects/db/77bb4b7b0906d62b1847e87f15cdcacf6a4f29": "a2e10fc9c4f60ac00e2b9b1ed3a0b5ac",
".git/objects/dc/9ada4725e9b0ddb1deab583e5b5102493aa332": "e8022082c258e4c83e27519f77484618",
".git/objects/dc/dc2306c28505ebc0b6c3a359c4d252bf626b9f": "e712bf13b0d526e57c6ee1c8acc412d4",
".git/objects/dd/69fd19a7d31d6e18754cfc687183c48d7fa673": "5a354eea3fb606baf71309e3bd04b6b2",
".git/objects/e3/3f6cd75724df22f0a3b591d9b290f12355132a": "16262817bf544cc05a569c0c436a10ad",
".git/objects/e3/7d7eb142cfe3e85c534be01a18dd4435c32ac3": "ee3c28965ce733ccc59b40fc7586ed33",
".git/objects/e4/a03dd40242dde2dd26d0a21ab816f8f57dd6e7": "c8eb6cad8428edc0dd381040d878e0bd",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e6/82511b4075a6d59474847114ab10a38e18d4de": "9be4c1a573f62360a263819dff9eb90e",
".git/objects/e7/4ef6939fe995360c33985beb0063055d8849da": "11a953a7e30f6e99e32d6206c1561648",
".git/objects/ed/fa93f21b477d39cb6f1715d998fd306879b5f9": "e350b2bb4f61d3815f8a85efb368377f",
".git/objects/ee/98802f02097fc78bbe8198d67e54ad1b9511be": "252b3c4c6035aa6dabe07ea9e010f6bc",
".git/objects/ee/a836f4a37fea4afe61d6483692dc431a9b1c20": "a7cab6b495018984cd39f6310f99d9e0",
".git/objects/f0/91b6b0bca859a3f474b03065bef75ba58a9e4c": "1aef8d0dea7cfdb7ffb51559c81d2fdf",
".git/objects/f0/dc1015734e7a0d59f464146709cff5cede7cc8": "97f4ac959cbe5d0629a91b449989b166",
".git/objects/f1/6bb9b553ad5de5bbbde234efb3e8f625ba5c5e": "333cfd6a6e81de283563bedd9bbf44d5",
".git/objects/f1/8420cc87f3d009cbd64bd084996efaa98bdcc2": "e689cf9b7b5a80feeeccef5bc50be97b",
".git/objects/f2/97fd4c5c6e5c88af7a56ce384098973e031f01": "0a4696f4c80c675a3ef26a5b9e362e57",
".git/objects/f4/1e49d3279f250216013325163053bfe6571148": "edb5bd20a7cf8b862d80360a45d147c8",
".git/objects/f4/500284794ca3fea1ee20dce5866f8f18d9fe79": "64666fc848b655a7a3c14a7fc1428fd7",
".git/objects/f7/14a514d94e495095e2f1e525a341eade187c17": "ca0d4350dcdad8026382089554e0448e",
".git/objects/f8/0cbd21b9e2098c34614c7af77ee5dac183fb8a": "a7b9abb123306abb120bdbfb078a4a6c",
".git/objects/f8/62390cf3fcb5841d36e645aced0ea1c7dc2887": "d03619d9aabb68cfb66b4bb5da60b8fb",
".git/objects/fa/57afe492bb24bd0a87bc537c82035fe71c8705": "255a1311007c86ffa33a054aa1ce8c42",
".git/objects/fa/e207f9e2b9302728c2199314243bda2088bb8b": "d63a8508141c045bc24e62d7dcd791d1",
".git/objects/fc/6bf8074854f8fd9fea8d9cc80d5ca1b8d932db": "b3eac8aa45df6801e5ed6d9fba39863d",
".git/objects/fc/ce686b36effefb92b5199332b1e816d9822292": "f30a51549572e97ed5db57ad1c7b0004",
".git/objects/fd/8c6d3c33b507958b6eaa757254dfc712b8e466": "6fc1a26bc799c8571b54b2320d49f4d4",
".git/objects/fe/5e0e04ead050c8626d73410883c57e2f372874": "7384fb8f5c145ac4fd2a1239a9671fd6",
".git/refs/heads/master": "bab119f03f717945b222084bd5972d7a",
".git/refs/heads/web": "bab119f03f717945b222084bd5972d7a",
".git/refs/remotes/origin/master": "bab119f03f717945b222084bd5972d7a",
".git/refs/remotes/origin/web": "bab119f03f717945b222084bd5972d7a",
"assets/AssetManifest.json": "f5052cb13c91d8ccecc12160217b20fc",
"assets/assets/icons/design.svg": "69940c5490b588a44812015e715d97a0",
"assets/assets/icons/development.svg": "25d309749ebdd365ba26443780721bf2",
"assets/assets/icons/favicon.svg": "3fdb2fbd3e4c7d48e56930e6569aa9ca",
"assets/assets/icons/prototyping.svg": "160689861490d944e2e57296c4228925",
"assets/assets/icons/systems.svg": "24bdbe2182324f878cc34aae3669eeca",
"assets/assets/icons/testing.svg": "ec7c6afa8b46003150df05c96ff10e40",
"assets/assets/icons/wireframing.svg": "6717c7f0b76c10654075d38010e379d0",
"assets/assets/images/chicago.jpg": "2c73b43a7e7cc98730489f41d370f995",
"assets/assets/images/darryl_johnson.png": "cae6f389d2b6c410674595b621486996",
"assets/assets/images/notes.png": "f4920335cc8aa89b65770f75e3e86918",
"assets/assets/images/weather.png": "381863a47194290abfb4d5a6883f5eaf",
"assets/assets/images/weather_icons.png": "cc2d4815cdb52da7d399543b953e6cbd",
"assets/FontManifest.json": "d5aa133561bc03aee56216e655ef4e04",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/fonts/quicksand/Quicksand-Bold.ttf": "0738679df4cf4e566f60343830da7bfa",
"assets/fonts/quicksand/Quicksand-Light.ttf": "188ca708e4cbbbe3837c3d904b8eeb61",
"assets/fonts/quicksand/Quicksand-Medium.ttf": "865b25e449878b6b4d1f9e098ff2f510",
"assets/fonts/quicksand/Quicksand-Regular.ttf": "216d43ee8707910af457af569eda1dec",
"assets/fonts/quicksand/Quicksand-SemiBold.ttf": "c82b184bf7450e14adccb7b0d6117474",
"assets/NOTICES": "44b78298831c87bbcadfd238519334fa",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "174c02fc4609e8fc4389f5d21f16a296",
"favicon.svg": "3fdb2fbd3e4c7d48e56930e6569aa9ca",
"icons/favicon.svg": "3fdb2fbd3e4c7d48e56930e6569aa9ca",
"index.html": "2df1c9bbefdca09afc120c1df7f1294d",
"/": "2df1c9bbefdca09afc120c1df7f1294d",
"main.dart.js": "debd955db085b8a4c3721406f3017197",
"manifest.json": "de582f42234f854ed3d8a69efb7e5636",
"version.json": "bddb03467ceb8b8ca3bc625411460c63"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
