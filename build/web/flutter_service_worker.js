'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "63331c4e208ba572cee1fdc9e84dbdcb",
"assets/assets/icons/design.svg": "69940c5490b588a44812015e715d97a0",
"assets/assets/icons/development.svg": "25d309749ebdd365ba26443780721bf2",
"assets/assets/icons/favicon.svg": "3fdb2fbd3e4c7d48e56930e6569aa9ca",
"assets/assets/icons/prototyping.svg": "160689861490d944e2e57296c4228925",
"assets/assets/icons/systems.svg": "24bdbe2182324f878cc34aae3669eeca",
"assets/assets/icons/system_design.svg": "13e06489a01977dc8e5db4cfaf79e434",
"assets/assets/icons/testing.svg": "ec7c6afa8b46003150df05c96ff10e40",
"assets/assets/icons/wireframing.svg": "6717c7f0b76c10654075d38010e379d0",
"assets/assets/images/about_me_bg.jpg": "62117ab7583f513587d2a9cf783dbf77",
"assets/assets/images/chicago.jpg": "2c73b43a7e7cc98730489f41d370f995",
"assets/assets/images/darryljohnson.png": "8bd862f410e072f072bf4eac28f1aaa0",
"assets/assets/images/hero_bg.jpg": "83c0d86e4190684257d1eccbda3c2960",
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
"assets/NOTICES": "89e19ae24412faf1d0f27690c22a31b1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "174c02fc4609e8fc4389f5d21f16a296",
"favicon.svg": "3fdb2fbd3e4c7d48e56930e6569aa9ca",
"icons/favicon.svg": "3fdb2fbd3e4c7d48e56930e6569aa9ca",
"index.html": "7919198529479d255b176215664947ad",
"/": "7919198529479d255b176215664947ad",
"main.dart.js": "49e810f5d47cf606f32a9176ef6cbfd6",
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
