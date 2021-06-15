'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "a53a66827ce87db2479306b6d533582c",
"assets/assets/icons/design.svg": "69940c5490b588a44812015e715d97a0",
"assets/assets/icons/development.svg": "25d309749ebdd365ba26443780721bf2",
"assets/assets/icons/favicon.svg": "3fdb2fbd3e4c7d48e56930e6569aa9ca",
"assets/assets/icons/prototyping.svg": "160689861490d944e2e57296c4228925",
"assets/assets/icons/systems.svg": "24bdbe2182324f878cc34aae3669eeca",
"assets/assets/icons/testing.svg": "ec7c6afa8b46003150df05c96ff10e40",
"assets/assets/icons/wireframing.svg": "6717c7f0b76c10654075d38010e379d0",
"assets/assets/images/about_me_bg.jpg": "62117ab7583f513587d2a9cf783dbf77",
"assets/assets/images/darryljohnson.png": "8bd862f410e072f072bf4eac28f1aaa0",
"assets/assets/images/darryl_johnson.png": "f0f2cab174e6e334e849b8463e32753f",
"assets/assets/images/hero%2520%25E2%2580%2593%25202.png": "b875669c44356308f1b72d1334245919",
"assets/assets/images/hero_bg.jpg": "83c0d86e4190684257d1eccbda3c2960",
"assets/assets/images/notes.png": "f4920335cc8aa89b65770f75e3e86918",
"assets/assets/images/uic_bg.jpg": "d22c82830dd62d4b9b09edae925bcca4",
"assets/assets/images/uic_logo.svg": "669bd579f38c37e057120b9fef3e8dd7",
"assets/assets/images/weather.png": "381863a47194290abfb4d5a6883f5eaf",
"assets/assets/images/weather_icons.png": "cc2d4815cdb52da7d399543b953e6cbd",
"assets/assets/logos/android.png": "79ded82b7f6df44465c785abaf7b7bf3",
"assets/assets/logos/flutter.png": "580e40f135eed67fd6e40059108112ed",
"assets/assets/logos/language.png": "6e2cdf52e13f1044eddff04ac6cf8a7e",
"assets/assets/logos/sicp.png": "28571a04cb839e3ffb4fd717a70c8263",
"assets/assets/logos/uic.png": "8d07db4c71f1829c91b46d2c457eafe1",
"assets/assets/logos/vector.png": "316407ffafc721fb27088482cf4e08e9",
"assets/FontManifest.json": "7b8a049eb1370d5902abf0ec2c1b67b3",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/fonts/quicksand/Quicksand-Bold.ttf": "0738679df4cf4e566f60343830da7bfa",
"assets/fonts/quicksand/Quicksand-Light.ttf": "188ca708e4cbbbe3837c3d904b8eeb61",
"assets/fonts/quicksand/Quicksand-Medium.ttf": "865b25e449878b6b4d1f9e098ff2f510",
"assets/fonts/quicksand/Quicksand-Regular.ttf": "216d43ee8707910af457af569eda1dec",
"assets/fonts/quicksand/Quicksand-SemiBold.ttf": "c82b184bf7450e14adccb7b0d6117474",
"assets/fonts/roboto/Roboto-Black.ttf": "5ebb24ee1112dd9562629375c387879a",
"assets/fonts/roboto/Roboto-BlackItalic.ttf": "99682a78fa4fe61e1177b94757336bbf",
"assets/fonts/roboto/Roboto-Bold.ttf": "e07df86cef2e721115583d61d1fb68a6",
"assets/fonts/roboto/Roboto-BoldItalic.ttf": "5b44818d2b9eda3e23cd5edd7b49b7d5",
"assets/fonts/roboto/Roboto-Italic.ttf": "a720f17aa773e493a7ebf8b08459e66c",
"assets/fonts/roboto/Roboto-Light.ttf": "88823c2015ffd5fa89d567e17297a137",
"assets/fonts/roboto/Roboto-LightItalic.ttf": "a3ce4440f2abf76f4a1b14b83920138c",
"assets/fonts/roboto/Roboto-Medium.ttf": "58aef543c97bbaf6a9896e8484456d98",
"assets/fonts/roboto/Roboto-MediumItalic.ttf": "cf23e1bb619029496260760b72aebd30",
"assets/fonts/roboto/Roboto-Regular.ttf": "11eabca2251325cfc5589c9c6fb57b46",
"assets/fonts/roboto/Roboto-Thin.ttf": "321de678e592d0b8f44f1a82d7ca4b62",
"assets/NOTICES": "4d32597424682750edd12eed24d5f643",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "174c02fc4609e8fc4389f5d21f16a296",
"favicon.svg": "3fdb2fbd3e4c7d48e56930e6569aa9ca",
"icons/favicon.svg": "3fdb2fbd3e4c7d48e56930e6569aa9ca",
"index.html": "5873b3a51cb42d8714a354f966703b16",
"/": "5873b3a51cb42d8714a354f966703b16",
"main.dart.js": "000326c5ecf174955dd95936376ef011",
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
