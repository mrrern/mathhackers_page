'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-192.png": "d7e7bb30eacfa39f666c7acb77b9cedf",
"icons/Icon-512.png": "d58bde43360ea6fe321b5e268d52e707",
"icons/Icon-192.png": "d7e7bb30eacfa39f666c7acb77b9cedf",
"icons/Icon-maskable-512.png": "d58bde43360ea6fe321b5e268d52e707",
"version.json": "d42075ae5382f7e711800fd2a8ebdd5a",
"manifest.json": "22f2f8e3fe9493088255c86063c19250",
"canvaskit/canvaskit.wasm": "567c5aeda8f673d1b76256d2682fd3b9",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.wasm": "5a5c6171d2eed658e3b5fff70c4af82c",
"canvaskit/skwasm.js.symbols": "f1b800f6a9fac877f65a545b9f76c703",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js.symbols": "d0b3bf92014e698856d505a65b5f0ee9",
"canvaskit/chromium/canvaskit.wasm": "e86670fe2af62cbdd3b75e098f393924",
"canvaskit/chromium/canvaskit.js.symbols": "e3a8db3bea434c929936f69d84e2f2bd",
"canvaskit/chromium/canvaskit.js": "2f82009588e8a72043db753d360d488f",
"canvaskit/canvaskit.js": "7737f5fc722b6a040ac15271ea8d92fb",
"index.html": "7b06a751c10b96bd0de1a612d61c1f73",
"/": "7b06a751c10b96bd0de1a612d61c1f73",
"flutter.js": "4af2b91eb221b73845365e1302528f07",
"favicon.png": "db46b0f6ee7b1e798cf5b42a737dc0b0",
"main.dart.js": "26ebe16b3893fbdb6ef3f68fd8279da1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/AssetManifest.bin": "b26a6f227726d6e502a78c096555a847",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "6acb27b80b0795fd39770eb55934aaa3",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/AssetManifest.bin.json": "bb1fb1bdabbe056307e9b4d9e91d0f15",
"assets/NOTICES": "c3baee56dfbb3f45b104511661c4dfc3",
"assets/assets/rive/shapes2.riv": "593dd7524d46b88adc0769da2754e2fa",
"assets/assets/rive/shapes.riv": "98ab961f483245679dd42d6f2d3b5b66",
"assets/assets/rive/slogan.riv": "69d6da2a2a57fd9ab25f43f7a22233be",
"assets/assets/rive/shapes1.riv": "2051a8205d9642be9b98d7569b8ed83a",
"assets/assets/logo2.png": "ac38f1165c8c33c7c792f7c25d8c110a",
"assets/assets/modesafe.png": "24732dff62a1fb49b8bcb09a0b49cac1",
"assets/assets/logo.png": "7a3e60e9248b5ad6d7e75337a84f9459",
"assets/assets/exp1.png": "18fda17674e2d4425268b4d035e42b84",
"assets/assets/group/yolo.jpg": "2b2d75e696d2953ea2577fc9d2513d63",
"assets/assets/group/grendel.jpg": "bd1e5ab4b902371219de17087cd1c14d",
"assets/assets/group/altuos.jpg": "bd3635dbe1066f8f3c0c07653facf354",
"assets/assets/group/geison.jpg": "14daa2ab59263a5c2e14e9d5c022be4f",
"assets/assets/group/daniel.jpg": "9955b7d65734572fcca8c719b284952f",
"assets/assets/CoAfinaLogo.png": "8d4a81a7f352650a4adfd2292b3b599d",
"assets/assets/exp2.png": "0cad0581cd438c1ce72720abd94b7b29",
"assets/assets/logo2ln.png": "7e486ecafbebaec0065f8e97c233a9f8",
"assets/assets/modesafed.png": "2b66f3f512ccfc6058ad95546e81b28f",
"assets/assets/modesafew.png": "4c46b6330b61d2d677b52103853b10a4",
"assets/assets/logobn.png": "0117bd64edadc26be8c5fb41055fba0d",
"assets/assets/logo2ln1.png": "615442d6cb23b775467892f856ed2e21"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
