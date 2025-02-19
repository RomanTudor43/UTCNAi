'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "5e46a44e4828b43cf9017cc4a4c77d15",
"version.json": "d38992b0a9dd07e3e5ad91dfd1712a09",
"index.html": "85e552d2804839402a35e2f88325765b",
"/": "85e552d2804839402a35e2f88325765b",
"main.dart.js": "4b7cd3c395280c3331654f8f49ac7be9",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "7e67ed1f0d50f1ef805ef18c7856ad23",
".git/config": "9844ccab2297ff1aa734d1db1772041b",
".git/objects/0d/7c4979f83ac9d56d340766009be9d35b2dc208": "577f65049d6c733461c3c18cca3a51df",
".git/objects/0d/9b491b071e734d6f1b6e8f2806c7b055645959": "9ff992df45cf072fcf4e00d974b9363c",
".git/objects/57/7946daf6467a3f0a883583abfb8f1e57c86b54": "846aff8094feabe0db132052fd10f62a",
".git/objects/6f/18f306b22478416b5a5b2b553b2d6c606b1712": "2ce89a2c05d88259e5a59dbf6782aeff",
".git/objects/35/96d08a5b8c249a9ff1eb36682aee2a23e61bac": "e931dda039902c600d4ba7d954ff090f",
".git/objects/67/31499e61bef6a79bc83b6c6007e53c2a101a02": "5ebb2bcd6f488756f4ece78f6476f043",
".git/objects/0b/81f462768622c225e2483dd9630415815096b3": "2c0b00cea7f3e78554d701dbea10ed51",
".git/objects/93/e59100530e75c9f11070c7862d344a238b4af5": "b04249d74fd6b1ecf17c6e2c94762d43",
".git/objects/0e/1cbbcfd20e308cb8adad4118e53414961ef1cc": "5223c88ff8c75bebc6f6c6f45cf7ea58",
".git/objects/5f/bf1f5ee49ba64ffa8e24e19c0231e22add1631": "f19d414bb2afb15ab9eb762fd11311d6",
".git/objects/05/619fe5a572d2f47970d375f642c636d8ed2e10": "1bea9bad3225cc89e97872364e3642d0",
".git/objects/a3/2b45c9bd0182b83407354ca080e442f4034a7a": "f6c9312566605086c6c51463710ca542",
".git/objects/d9/3952e90f26e65356f31c60fc394efb26313167": "1401847c6f090e48e83740a00be1c303",
".git/objects/ad/9044604fa2e96091462d179eda1922dbd0da68": "fa74c2168fd1eb48eeb4ea199a3fed65",
".git/objects/d7/7cfefdbe249b8bf90ce8244ed8fc1732fe8f73": "9c0876641083076714600718b0dab097",
".git/objects/b3/0f0f7a34bb55ddc18db94c411c8ef87fc142d6": "86b031d9d359a4e867f7d54ede46c524",
".git/objects/df/436412d7f76fb8f344ada73de312f04b9be364": "1d241635e1f0abc2561d5181a4f9c472",
".git/objects/a5/de584f4d25ef8aace1c5a0c190c3b31639895b": "9fbbb0db1824af504c56e5d959e1cdff",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d8/fa938d82c0cfb5a14c52173ba7b7ba2ef34869": "8430297693295d67a4973ea669d8e5d9",
".git/objects/f3/c8187d47a563b7fa5e9191b6b4f6394b53238f": "1ad32f3bc4cb5b8486eaef6c465b9920",
".git/objects/f3/709a83aedf1f03d6e04459831b12355a9b9ef1": "538d2edfa707ca92ed0b867d6c3903d1",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/c9/4ad21c87a20284509b0d8ce78a8e27c7cca863": "0060b3c9de0ae371d2aa33a7cd0138dd",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/e4/0be706357a60ff8679decc9fddc510b0510d53": "f6b5f6d9ecb14459a79b3bd221c4bb35",
".git/objects/4b/28c60ec0420d177656d69dc0f8dafe8105263c": "bfad59b03977447f27e279a5efb6dd8e",
".git/objects/1f/771cf6a084cb183390331b53a1299713fe2d7e": "2c74f98b8a0f7c04ec05b852f82c3bd5",
".git/objects/28/3c7b9690e1576402d5b7663d04aec6edd03020": "8eaddd40d503b350619b30a7753d5523",
".git/objects/8f/c8be62f202c40e7d3e2e16242fb065cfc4e1a7": "6fda1b80da67a8d96186cf8ab8b24087",
".git/objects/8a/51a9b155d31c44b148d7e287fc2872e0cafd42": "9f785032380d7569e69b3d17172f64e8",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/26/340dd458cfedd952d03f88893f016bf8255502": "cfe788e8fce3b64ad55eda7150373609",
".git/objects/21/9697c1b6b1574387a86b46a1a3bfb96e793c89": "fc9b8cbd856a7ab1a87e02074ce88727",
".git/objects/4d/e4ee615f3a47923f6063020a5d859d0f82b967": "d43fc7132720b573abc05893f55207e0",
".git/objects/4d/d1511ecc94d899618cea02137d873308dfe23b": "dc3c04f9232dc01598a0c7aec59f6d4b",
".git/objects/4d/c6cb4d8fee484de07038efff256cd7e68d3462": "2b40cda58dc91e4f520f6cfb9b48b740",
".git/objects/75/37d8f54da02bf14f12d6e956b37c0cfd35a3c5": "a90106d7d54214bdad20e78219e2cead",
".git/objects/86/b121efd1d5f4ec5c5e7278699f79b79d4afda1": "69223648d2526898a9d288ebdb92e530",
".git/objects/86/f4436b5862526c10c249859664deb0feb4e3a3": "e41ace5eb9d338a2a569861dea2fa5e2",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/91/4a40ccb508c126fa995820d01ea15c69bb95f7": "8963a99a625c47f6cd41ba314ebd2488",
".git/objects/65/a28925312b067ff5dcb4ad023a3ae885967200": "868b407fc5b6278682ce49dba1901e91",
".git/objects/54/a1ad448d2fe56da3acfa93c55d731b797b91c0": "47bffe00fd695d054f302fabb6628d06",
".git/objects/98/001f8429113eeb6b474640d286fcdac3e6d09a": "b0cef4b6ce642b182032b96bf952b19e",
".git/objects/37/b18950e5fa14e34528b73407ce83b7461130e3": "57849bc9516c0931b466ff76187f9e5c",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/ba/2bf8b761ca1529b9f8b853c95164194d89a088": "a238d51a345679b4156df0ebafd18d96",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a8/8c9340e408fca6e68e2d6cd8363dccc2bd8642": "11e9d76ebfeb0c92c8dff256819c0796",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ef/b875788e4094f6091d9caa43e35c77640aaf21": "27e32738aea45acd66b98d36fc9fc9e0",
".git/objects/ea/fb6ffc125fb5170b8f659f42ca0a4a6a646fd3": "e196110d4578fa39c801070043c011f1",
".git/objects/e6/cc1238dbc0b7ccf7f9688c5ed49177fcfbf8c9": "9cc5a5efdd3c45e2b3243d052fb3b9f1",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/77/23df6883d3077e773e6609152482d5e5852b1e": "df09841a552a345d93d4fad8d4771128",
".git/objects/77/1bde84a39da9bd6373c1854af3b965d39d2205": "cbc3cadce4f47c48e52425d8c751ffd4",
".git/objects/48/e97eaadea1cb5b6b1762bf4869d3993412d3a3": "3d0ac39050ee1ef2f20c608470fe3ccd",
".git/objects/1d/468b85698a60041b450286f31b3264b3bbd6f7": "5c8c497111befde32ac151f14cf92f85",
".git/objects/82/0f424b6a73efd9b70d671262ab6ad6c8454b82": "7f43eecf6d551ab2ecd4441be7ee201a",
".git/objects/82/a68a585eb194bc51671a46c8425b6f0ac4e24d": "937a33ac6da9d3a703a71edb74150c9d",
".git/objects/40/1184f2840fcfb39ffde5f2f82fe5957c37d6fa": "1ea653b99fd29cd15fcc068857a1dbb2",
".git/objects/13/0b12585c8328e6910db913e2a9a80cca84eb18": "839d229182dfa0169a0be004fc3f5b17",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "9e87e2eaf9cc44270f667105d5d32224",
".git/logs/refs/heads/gh-pages": "478625951bde6bd2e4766ed871af5df0",
".git/logs/refs/remotes/origin/gh-pages": "7a63f18ec346a708f4421892c5d83b7c",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/gh-pages": "f9506daeed9ab5c2be52bfc68396b2cc",
".git/refs/remotes/origin/gh-pages": "f9506daeed9ab5c2be52bfc68396b2cc",
".git/index": "a0b8f57abb1e1c042b0a866b811bb595",
".git/COMMIT_EDITMSG": "7e1e957cb51b4c16de6e154c09cdb7c1",
"assets/AssetManifest.json": "a83904efa7be89515b159cccbd9d5e34",
"assets/NOTICES": "9f6ab3ccb38716545120bd1431d1e2f5",
"assets/FontManifest.json": "1d4d7e5d5cf4a44de38fb15c9b52182a",
"assets/AssetManifest.bin.json": "f72997e1049959d98ca2a7490d00ace2",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "f222f40f925e3a89f292635e953b27a8",
"assets/fonts/MaterialIcons-Regular.otf": "27a5d29ee9790b2d8aa49ea239bf57b9",
"assets/assets/images/news_photo.jpg": "acfe016f75541d87840e4c5558ad3303",
"assets/assets/images/home8.jpg": "988a838a6a3de9d37d588d83942afc63",
"assets/assets/images/pcia.png": "c248a868e7089689ffaff54620f83a5a",
"assets/assets/images/utcn-logo.png": "585f15ab57c3a82ceac7693989ae5b76",
"assets/assets/images/logo.jpg": "1d6cec05a24a95a331d2a58f9dba38e1",
"assets/assets/images/home3.jpg": "e4c6d876e2232ee11bd4d1f1ad18eb6c",
"assets/assets/images/home2.jpeg": "b88513f4d9d9ef45958346e1013229cd",
"assets/assets/images/home1.jpg": "da13c3289344c775935e120437bfb23e",
"assets/assets/images/home5.jpg": "688904c02190f45913ab8b9756323973",
"assets/assets/images/home4.jpg": "1b225b822d81ef6270d53d744185d6e6",
"assets/assets/images/news_image.jpeg": "284beee0b763ccb952f34af48ef303ad",
"assets/assets/images/home6.jpg": "8b4a2506a64e03fe5bcf1975da736207",
"assets/assets/images/utcn_logo.png": "a368b0857db48023ed40a198a7e75fe8",
"assets/assets/images/home7.jpg": "4dd7f383e1ecc6314d343ad7391bf738",
"assets/assets/images/about_image.jpeg": "6fccacf153026962fc7fa3d88f8e6d5d",
"assets/assets/fonts/PlayfairDisplay-VariableFont_wght.ttf": "5c26cb0a6cef324c460754822591bd93",
"assets/assets/fonts/PlayfairDisplay-Italic-VariableFont_wght.ttf": "c6bd3951c4797106c1dac753a795534a",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
