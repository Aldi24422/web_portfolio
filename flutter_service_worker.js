'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"manifest.json": "7f5daba8709628aebae327838f83c506",
"index.html": "16d5bc7b20c63382942343565c9a9baf",
"/": "16d5bc7b20c63382942343565c9a9baf",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "bee13994d09cb40dd4ae84281b0ead68",
"assets/assets/annogram/Screenshot%25202025-12-31%2520173427.png": "74b9075770f5ed72737e8802ae3bf37c",
"assets/assets/annogram/Screenshot%25202025-12-31%2520205808.png": "02cb59976f535650cac57be8dd6962cb",
"assets/assets/annogram/WhatsApp%2520Image%25202026-01-12%2520at%25205.09.45%2520AM.jpeg": "169283a1067bcc16d1987a5f2caeb8a3",
"assets/assets/annogram/Screenshot%25202025-12-31%2520171947.png": "af1d31bf57ca8c40b7388b723cf4aa1e",
"assets/assets/notification%2520tester/WhatsApp%2520Image%25202026-01-12%2520at%25205.23.40%2520AM.jpeg": "3f369d293ae554f36e4c79831f34c72b",
"assets/assets/notification%2520tester/WhatsApp%2520Image%25202026-01-12%2520at%25205.23.40%2520AM%2520(1).jpeg": "ad8cb6e335b2ff68d0597f0358ff43a9",
"assets/assets/siniops/WhatsApp%2520Image%25202026-01-12%2520at%25205.23.13%2520AM.jpeg": "d75484a46f4200e4b4ccb4959938e2a2",
"assets/assets/siniops/WhatsApp%2520Image%25202026-01-12%2520at%25205.23.12%2520AM%2520(1).jpeg": "1c4ee23e05e3d75960454510b88028e0",
"assets/assets/siniops/WhatsApp%2520Image%25202026-01-12%2520at%25205.23.10%2520AM%2520(1).jpeg": "543f40fc75ccee1089b864deb42521fd",
"assets/assets/siniops/WhatsApp%2520Image%25202026-01-12%2520at%25205.23.12%2520AM.jpeg": "e65c4deeab8640e88565775f575020a8",
"assets/assets/siniops/WhatsApp%2520Image%25202026-01-12%2520at%25205.23.09%2520AM.jpeg": "572bd964953be40e213510acc158cf44",
"assets/assets/siniops/WhatsApp%2520Image%25202026-01-12%2520at%25205.23.11%2520AM%2520(1).jpeg": "280b42e2ff9c1b098d0db4f7d5e5f5ae",
"assets/assets/siniops/WhatsApp%2520Image%25202026-01-12%2520at%25205.23.10%2520AM.jpeg": "49995f3bb3f3d8e8eecbd4f8efe319d0",
"assets/assets/siniops/WhatsApp%2520Image%25202026-01-12%2520at%25205.23.11%2520AM.jpeg": "5d765fd4c8cdd08c0127873b355b43de",
"assets/assets/siniops/WhatsApp%2520Image%25202026-01-12%2520at%25205.23.12%2520AM%2520(2).jpeg": "cab8eb6d4be0867bbd06534165159ec5",
"assets/assets/whisk%2520bot/Screenshot%25202026-01-12%2520053616.png": "10b5c40e8eaa0fdfe5ca94f496bc4a57",
"assets/assets/foto_profil.png": "70598401709447ff784c8df1073e2421",
"assets/assets/qr%2520studio/Screenshot%25202026-01-12%2520052021.png": "2eab2ecc48b72cdc2b60bc990d364228",
"assets/assets/qr%2520studio/Screenshot%25202026-01-12%2520052010.png": "b841088a7fb63f16278500107c36142c",
"assets/assets/qr%2520studio/Screenshot%25202026-01-12%2520051805.png": "f3f57464429e1b7a2a12589172e1f1ba",
"assets/assets/woodball%2520scoreboard/WhatsApp%2520Image%25202026-01-11%2520at%25207.37.37%2520PM%2520(1).jpeg": "10f4aa83d5e9a2e64158e8a632886d42",
"assets/assets/woodball%2520scoreboard/WhatsApp%2520Image%25202026-01-11%2520at%25207.37.38%2520PM.jpeg": "5525d8d214597351401e79dff231ecc7",
"assets/assets/woodball%2520scoreboard/WhatsApp%2520Image%25202026-01-11%2520at%25207.37.37%2520PM.jpeg": "9b5f18d9b19050e9b349b36aa0a5348a",
"assets/assets/woodball%2520scoreboard/WhatsApp%2520Image%25202026-01-11%2520at%25207.37.39%2520PM.jpeg": "df00dced1ff7271d52d4c7cff59c218d",
"assets/assets/woodball%2520scoreboard/WhatsApp%2520Image%25202026-01-11%2520at%25207.37.40%2520PM.jpeg": "a39b21e52a7921e3457b3178c234d5c2",
"assets/assets/kurash%2520usul%2520scoring/Screenshot%25202026-01-12%2520051617.png": "f1061c7fcd88a16853e3ae73400a15db",
"assets/assets/kurash%2520usul%2520scoring/Screenshot%25202026-01-12%2520051533.png": "2d5201cdee961e3d73d709def19b1842",
"assets/assets/kurash%2520usul%2520scoring/Screenshot%25202026-01-12%2520051437.png": "0350851cc2ce8c388e5e508162c43ffa",
"assets/assets/kurash%2520usul%2520scoring/Screenshot%25202026-01-12%2520051503.png": "93d501effdd8df27e944c62cc6516c4f",
"assets/assets/kurash%2520usul%2520scoring/Screenshot%25202026-01-12%2520051559.png": "c65fb9008bc0cffae51ecf3046d4e02c",
"assets/fonts/MaterialIcons-Regular.otf": "75de5cce8db4f67f5e4bea510143d03f",
"assets/NOTICES": "3c7c4c081c544baae10aa6cc9a4eca6f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Solid-900.otf": "5b8d20acec3e57711717f61417c1be44",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Brands-Regular-400.otf": "fd932bb7fbdd29de906fdf0b190f9956",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Regular-400.otf": "b2703f18eee8303425a5342dba6958db",
"assets/FontManifest.json": "c75f7af11fb9919e042ad2ee704db319",
"assets/AssetManifest.bin": "8e0cf5f6440e7447d50a659a23cf53b5",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter_bootstrap.js": "eed015a9f9b2e3b8635d5e5788fdbdc9",
"version.json": "bd341ba74d38c530da636604a427deda",
"main.dart.js": "4fcd71bade1dc06d8fbcc4bf95692e03"};
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
