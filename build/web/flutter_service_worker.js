'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "06311561891625812624e292e8bd99c1",
"assets/AssetManifest.bin.json": "1d14a06c944e7bb8b5cf879767e46de5",
"assets/AssetManifest.json": "cb1a5619652fd2fa06959280d8dc9478",
"assets/assets/fonts/Acme-Regular.ttf": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/images/12v_Battery.png": "f75a6c95387f05556bf1c7f2d0d3b7a9",
"assets/assets/images/12v_Battery2.png": "18f669d2fe81dce9efd9cc7941e4c99f",
"assets/assets/images/16x2_LCD.png": "0534e3debb47dedd50bc4fe44b9829bc",
"assets/assets/images/16x2_LCD2.png": "74333ca4bac2297d38145eb2225609cb",
"assets/assets/images/2.jpeg": "3782357e54e88d87ebbe908ec709cc2b",
"assets/assets/images/2.png": "2e830be3fbd297ce80a6a40ced40c4c0",
"assets/assets/images/3.jpeg": "da172aa133eb22931b34a90f7880d061",
"assets/assets/images/4.jpeg": "03ad8c8446829371f5a65ade0d4e5dfc",
"assets/assets/images/4G_5G_kit.png": "c8fa0b5ab43f7316b417af4f95ecbcbb",
"assets/assets/images/6.jpeg": "3d121aedb6d6d7da608a1d4d46bdd825",
"assets/assets/images/7.jpeg": "51a996ec3d82fb1922e943e74a22ce63",
"assets/assets/images/about_us.jpg": "0782ddde683a9a1b07dfedc442f8aa44",
"assets/assets/images/About_us_page_final.png": "58a5c8dc71b15bbe07d23c2c0deabb9c",
"assets/assets/images/acc.bgr.png": "edf108a0ab6324b78361966b64b99052",
"assets/assets/images/acc.png": "9bd23159917a13bd4250ccb472eb29d8",
"assets/assets/images/Acoustic_Module_Node-removebg-preview.png": "2ca1d8877934810c137165afd1f677a8",
"assets/assets/images/Activity_Monitor_Kit-removebg-preview.png": "95d499a0d37c9c39a760be568d37cb3e",
"assets/assets/images/Activity_Monitor_Kit.jpg": "17287a3f84d573514fdefdf818ff2c59",
"assets/assets/images/Awadh.PNG": "32ab471f28a99a8af46e91dc7c3ff5a7",
"assets/assets/images/awadhlogo.png": "6d6b64421d1b4a04c1d5c30a14e66161",
"assets/assets/images/awadh_banner.jpeg": "3f415f6af78bac905ae82a84f13b600d",
"assets/assets/images/awadh_logo.jpeg": "b7f6b0ac4dbc70106a236c57cccd04c5",
"assets/assets/images/awadh_logo2.jpeg": "8c36cb4a40dc386dd0fd91291e22edc7",
"assets/assets/images/Awadh_logo_New-removebg-preview.png": "85d0ff32c81ba89783df572202ccb006",
"assets/assets/images/awadh_logo_only.jpeg": "e0398ebc6696db87de1cd3cf06e278dc",
"assets/assets/images/awadh_logo_super_new%2520copy.png": "a5f1a93e200079cda227b2b213ca487b",
"assets/assets/images/awadh_logo_super_new.png": "a5f1a93e200079cda227b2b213ca487b",
"assets/assets/images/background.png": "431abaf09141de9d275fced419865e5b",
"assets/assets/images/back_front_new.png": "7ffc08500670a215cb78d1e0dd5c4389",
"assets/assets/images/Battery-removebg-preview.png": "930dad6331e95fb61b8c3c8349e87c9e",
"assets/assets/images/bg1.jpg": "bed0517063f0e2b887b89cb810052032",
"assets/assets/images/bg_for_CPS_tutorials.png": "447c101d00c1fe4c7efb5d1681de3765",
"assets/assets/images/bg_main.png": "c041e2f7f6d8f2df977ff16745f2331c",
"assets/assets/images/BLE_Development_Kit-removebg-preview.png": "e6387cab6b72a753219aff95f21f297d",
"assets/assets/images/BLE_Development_Kit__2_-removebg-preview.png": "142db2d1dad15b7fcde1dcec0bae7f02",
"assets/assets/images/BLE_Gateway-removebg-preview.png": "6baa3619a152f65b6316301f5315520b",
"assets/assets/images/BLE_Node_PCB-removebg-preview.png": "c47e51a34980e75cf7f16d01f06302ce",
"assets/assets/images/Bluetooth_module.png": "46e8a5794f5d87ae9f171bdd716f660f",
"assets/assets/images/Bluetooth_module2.png": "f1af93241b2bc22055b11d38e7269767",
"assets/assets/images/Buttons_exp.jpg": "4977aa3efd3dfc7c75eaf001e3b6af61",
"assets/assets/images/Buzzer_Board-removebg-preview%2520(1).png": "95de5a837c21c728fa5518fe02090ac8",
"assets/assets/images/Buzzer_Board-removebg-preview.png": "95de5a837c21c728fa5518fe02090ac8",
"assets/assets/images/Car_Chassis.png": "a67f780aab156b61c9ef05d6c89cdb6d",
"assets/assets/images/Car_Chassis2.png": "ced5183c00575c13d67805028d89b075",
"assets/assets/images/cloud.png": "cc30f032ccb235d8dbd8bbaf9e872e2c",
"assets/assets/images/co2_bg.jpg": "d0885a541b83e24ec40c5cec165cba11",
"assets/assets/images/Co2_Monitor_Device-removebg-preview.png": "a09bd4584d3bbec44c87e3d68156faba",
"assets/assets/images/Co2_sensor.jpg": "c2f83aa49ddb7fc944af4a41bc05080f",
"assets/assets/images/Co2_Sensor_new.png": "2fbc9d2c9176c632a37123478a544736",
"assets/assets/images/contact.jpg": "0edce5eee13cbb266e82a6b0e9fb63e9",
"assets/assets/images/contact_background.jpg": "3721750cbc376a9e696f0707bafd08a8",
"assets/assets/images/CPS_Lab.jpg": "5a717bdfa9e1788fa06dde27a633d682",
"assets/assets/images/CPS_Lab_Hardware.png": "5541ebb1f4ed0255800a8f10b18fb6ca",
"assets/assets/images/DC_motor.png": "ab28e62736c2b12a8a90d1db07433ebd",
"assets/assets/images/DC_motor2.png": "f288e28af1bd7ac7242a2cc7205cb8c7",
"assets/assets/images/Deployment_images_front-removebg-preview.png": "3294a3da29e45ddf21febea623a98c2b",
"assets/assets/images/deshraj_sir.png": "1d713a72fc2dc881c000490b81b9197c",
"assets/assets/images/distance.png": "1709ad626b7d4cb02535434a57a926fe",
"assets/assets/images/dist_bgr.png": "6ee8175727defff3a74f6a53922c080e",
"assets/assets/images/Front_bg_Final.png": "f4817c7db0c6eb5879b45e450e2715b7",
"assets/assets/images/front_foto-removebg-preview.png": "3b84136e5d0d79c06f3e4fdd60853dd1",
"assets/assets/images/gateway_img.png": "a386ecc8e2800cd30a514777fb88d97d",
"assets/assets/images/GPS_Sensor_module.png": "0eb16f98ee7f49f7771a83ea5b72a986",
"assets/assets/images/GPS_Sensor_module2.png": "0fef946e88011ec69813da32161927d9",
"assets/assets/images/Grove_Shield_with_Sensors-removebg-preview.png": "ca2eec1b21309e59c480247711de8623",
"assets/assets/images/Hall_effect_sensor_module.png": "abe762b7e11453f3f3d81e5ff970a9fd",
"assets/assets/images/Hall_effect_sensor_module2.png": "ab036b873a49bc0db37c3b5de575c7ad",
"assets/assets/images/home_page_1.png": "377a5e17fffc5057fd8719b007faeee0",
"assets/assets/images/home_page_2.png": "72b6dae3090ce40d8cec2ccac29e2d79",
"assets/assets/images/home_page_3.png": "d9b9237d813b782c981246a5e288ca9a",
"assets/assets/images/home_page_4.png": "cedadf2bedf495b615790d7a945e28fd",
"assets/assets/images/iitropar_logo.png": "5a6eb829762e36a3f3daddc2e0255ad6",
"assets/assets/images/image%2520(1).png": "b65c1a92cd3a13494fccdfd7a4a62e25",
"assets/assets/images/image%2520(2).png": "e77cdec628220118b090d485ff5d8463",
"assets/assets/images/img1.jpeg": "4f23bc60249afa8b3076f2d15c6d279c",
"assets/assets/images/img2.png": "5c3f1e6962fba6f673b625dbd7092afd",
"assets/assets/images/imgr1.png": "c180461063bf1ee165c15cdde7dd22ca",
"assets/assets/images/inacc.png": "2ca14ec26061f15278bd12bab0dcf2f4",
"assets/assets/images/inspeed.png": "3605053ceb084bed2b893f04c674e6c1",
"assets/assets/images/instep.png": "4db3ddf033068fb907c82a6a67b37581",
"assets/assets/images/iot.jpg": "c9968aaa6d770071b9f1732633caa099",
"assets/assets/images/iot_lab.png": "30240ac9c2e11c2081c2d7eae7fbbd24",
"assets/assets/images/Iot_logo_Picture_final-removebg-preview.png": "43ca4d2f2afe8a554757287eb208c5a3",
"assets/assets/images/IR_Sensor_module.png": "00c3cb34491e203c2d5206f2db9026f0",
"assets/assets/images/IR_Sensor_module2.png": "77704f0924bfb5da6609aa7618b63690",
"assets/assets/images/LCD_Display-removebg-preview.png": "8724886841ad60b52cadb2b6dc310037",
"assets/assets/images/LED_exp.jpg": "998a727e5c7043c2676a824fab519a2f",
"assets/assets/images/LIS3DH_Sensor_Board-removebg-preview.png": "b2ffe32cf9d3d5706c63b7b37f0b629b",
"assets/assets/images/login.png": "b56ef485cbc7f4f4f5269dd2abff6124",
"assets/assets/images/logo1.jpeg": "dbf3b369aae67ee9d76dd8e77dcbcf72",
"assets/assets/images/logo2.jpeg": "dc596b4f8728af0929d7708b0d720e56",
"assets/assets/images/Lux_Sensor.png": "bc210780f428938a7ce60ce2040f4350",
"assets/assets/images/micro.png": "db8904108ba6c9c83297d9fa2a2e4b1f",
"assets/assets/images/micro2.png": "7b966ca3ac6d65cb7086ac85c80355dd",
"assets/assets/images/mobile.png": "85602b0b971a6567febd866c4d2e3db6",
"assets/assets/images/mobile2.png": "ff6f469ebd3111a60ca24067f8b30b9a",
"assets/assets/images/moon.png": "287210aa9707238a0eb05f20c6bf798c",
"assets/assets/images/New_deployment_pic-removebg-preview.png": "fcc351af0c181d92372a9bcb6ded6108",
"assets/assets/images/partially_sunny.png": "933bba089226de09852fc771a4944e04",
"assets/assets/images/pastel_bg_sensor.png": "da529b836a3e51b6db67eae404517e17",
"assets/assets/images/person.jpg": "01c4d0cac7b4f2ed1ce6f342be256f79",
"assets/assets/images/Power_Profiler_Kit-removebg-preview.png": "165b13be12066255aedb9e0074e22488",
"assets/assets/images/query.jpg": "c02d5a47dfdc41dad54b93ab244a8f24",
"assets/assets/images/Raindrop_Sensor_module.png": "ae249e6f140bfc79320ff6c4457532a0",
"assets/assets/images/Raindrop_Sensor_module2.png": "500f4e4b3d7f1e67f7d51f5dc8c22e28",
"assets/assets/images/relay_image-removebg-preview.png": "8711f6014c2a828b811deb4b06fd008e",
"assets/assets/images/robo.jpg": "308d596e742d8ac0e1be77f01c48f48a",
"assets/assets/images/robobg.png": "e87f7d1c4a883678f78887ff64bfac5b",
"assets/assets/images/robobg2.png": "2bcfa0f18b484fe1fdc4049c2243fa0e",
"assets/assets/images/robokit.png": "39b7b80219fdafdf7d7e2a0059c241de",
"assets/assets/images/science_tech_logo.png": "296486d162cc230c3c84832635fc11b0",
"assets/assets/images/sct_logo.jpeg": "057c783fe9caf58410247563e7ef82c0",
"assets/assets/images/sensor.png": "ba019bf0d50e3272e947e5faeab02031",
"assets/assets/images/sg.png": "3f3c38bb1bcc7107c4ec0493c6ea8156",
"assets/assets/images/SG90_Servo_Motor.png": "280624888a231b63696e70a843a87644",
"assets/assets/images/SHT40_Sensor_Board-removebg-preview.png": "912846265cafc39fb54642f1f39ce633",
"assets/assets/images/Solar_Charging_and_Discharging_Module-removebg-preview.png": "84e4b0b96b8d02c556b991f6463ef90e",
"assets/assets/images/Solar_Panel-removebg-preview.png": "82a27cadfe3d5b31b1cb5b3b9625ec73",
"assets/assets/images/speed.bgr.png": "336f7e1800a1a49455700d3dc3455229",
"assets/assets/images/speed.png": "db84a9aadd25362979ca620977e4d8d1",
"assets/assets/images/step.bgr.png": "dbee689aa5bc2d561e74824bb8c0e5a5",
"assets/assets/images/step.png": "551ee8c7d422692bd52500a2e3ff8b6c",
"assets/assets/images/STTS751.jpg": "13bed3141cfafcdf74a3b537bd62554c",
"assets/assets/images/STTS751_Sensor_Board-removebg-preview.png": "d730b2de2acecf12fb729297092a6094",
"assets/assets/images/sunny.png": "058eeb479d826e718512b2b51bd15737",
"assets/assets/images/sunset.png": "897a651ef098d6bc365ab49221fc457f",
"assets/assets/images/UART_to_USB_Converter-removebg-preview.png": "c99f0c83fa46580a73ac6baa40202264",
"assets/assets/images/Ultrasonic_Sensor_Module.png": "b6c3f645cd52f630015858c3bd56399c",
"assets/assets/images/Ultrasonic_Sensor_Module2.png": "a991d5819ed48d705f1a4c8b5cfd1ceb",
"assets/assets/images/USB_Cable_&_Jumper_wire.png": "23dcb11767168512b7cc1aed69e3dd16",
"assets/assets/images/USB_Cable___Jumper_wire2.png": "c7613ad72ce98d28fafa347a43477364",
"assets/assets/images/W25Q16_Memory-removebg-preview.png": "c399f711e7e6c3d31b6fc1f3f6924ebd",
"assets/assets/images/wall1.webp": "f022b112de7f5954e8c7d8cc0a9371be",
"assets/assets/images/wall2.jpeg": "df52e691381c5fa9c73e558eb04a248b",
"assets/assets/images/Water_level_Sensor_module.png": "5d8170837c52f3e3e5fc0ed51a089a6e",
"assets/assets/images/Water_level_Sensor_module2.png": "41f76dcbad7810713e70d4096688f753",
"assets/assets/images/Water_pump_with_pipe.png": "3ff0d65684630291bafe7519a6c5c667",
"assets/assets/images/Water_pump_with_pipe2.png": "723c637050cee2a6deb317c1f241b33c",
"assets/assets/images/weather.png": "efde235bf2fb575cd8fa8fbc3e364c02",
"assets/assets/images/weather1.jpeg": "fe21802e177e05a1515991ad2455b117",
"assets/assets/images/weather_bg.jpg": "2b0d80f8f31276de0f4c77b34e77ecf5",
"assets/assets/images/Weather_Monitoring_Sensor_System-removebg-preview.png": "2de0d17037d6bd2b65a6ae2505c94588",
"assets/assets/images/weather_sensor_boards_new-removebg-preview.pn": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/images/weather_sensor_boards_new-removebg-preview.png": "dc2e5846f5bd72d66e2636b7d3ffee43",
"assets/assets/images/Weather_sensor_widget-removebg-preview.png": "3f746b586c4124c9ab7e5e92a61d9a27",
"assets/assets/images/WhatsApp%2520Image%25202024-08-26%2520at%252012.13.08.jpeg": "9b410f5c7809f6b72b3fe48d8e971322",
"assets/assets/images/Wheel.png": "adca8b7c44ccf3aaf87fa3c0b8fc3846",
"assets/assets/images/Wheel1.png": "2894333bf4ac8cd6c3870d4dbb1be506",
"assets/assets/images/zoom_in.png": "2b16391808787689eeb2cda8a08bfa22",
"assets/assets/images/zoom_out.png": "907ea2ae41287b6e9d71852c69eb1dc5",
"assets/assets/pdf/LED1.pdf": "77e98a30499c3b67d069e75e3049f7e9",
"assets/assets/pdf/LED2.pdf": "052aca989ec73fec061600b3279e1dce",
"assets/assets/pdf/LED3.pdf": "06a6d65b4710096dbe51d298d7f21919",
"assets/assets/pdf/LED4.pdf": "05b1abf33ff3e6be77fe89d67ed13a6f",
"assets/assets/pdf/LEDD1.pdf": "f81126c9525da1c4d1813297d38f6472",
"assets/assets/pdf/LEDD2.pdf": "3eb5273254f429e919620d8587ecc781",
"assets/assets/pdf/LEDD3.pdf": "62de13b2432f86fcc4a8d065d4c21613",
"assets/assets/pdf/LEDD4.pdf": "e1c2965f5e83d10e43e13de07792f9b7",
"assets/assets/pdf/LEDD5.pdf": "c5a1857babd786a84221263718a0f04e",
"assets/assets/pdf/LEDD6.pdf": "cbebccb7b9b8a9a6c9e3984e5fe33b84",
"assets/assets/pdf/LIS3DH2.pdf": "897d912b24d4666a3a94be13812040b4",
"assets/assets/pdf/Relay.pdf": "8eb308071c02107fdd3a9e5eb89044f8",
"assets/assets/pdf/SHT401.pdf": "c1e83551a878716724b6a48c60317995",
"assets/assets/pdf/SHT402.pdf": "29502ee5ed9c8cef59cf6078faa9f6ec",
"assets/assets/pdf/STTS7511.pdf": "ecc376d332763ec2bfaabae97bc5594b",
"assets/assets/videos/nRF5_SDK_home.mp4": "dfcf0c6b2cdde166ad73d4ddbcab75e0",
"assets/FontManifest.json": "c1d4f27f6a43768c636852bc1ce213e7",
"assets/fonts/MaterialIcons-Regular.otf": "18b044e502abd2788f6f0d035a8f72f7",
"assets/NOTICES": "7d41cff0b029ec984bb09040c7e64b89",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/packages/syncfusion_flutter_pdfviewer/assets/highlight.png": "7384946432b51b56b0990dca1a735169",
"assets/packages/syncfusion_flutter_pdfviewer/assets/squiggly.png": "c9602bfd4aa99590ca66ce212099885f",
"assets/packages/syncfusion_flutter_pdfviewer/assets/strikethrough.png": "cb39da11cd936bd01d1c5a911e429799",
"assets/packages/syncfusion_flutter_pdfviewer/assets/underline.png": "c94a4441e753e4744e2857f0c4359bf0",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/packages/youtube_player_iframe/assets/player.html": "ea69af402f26127fa4991b611d4f2596",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "9299e21d4e19fca65f4715ca2bae6641",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "8e45a5303ffe150c4a412fd2ed991687",
"icons/Icon-192.png": "9299e21d4e19fca65f4715ca2bae6641",
"icons/Icon-512.png": "9299e21d4e19fca65f4715ca2bae6641",
"icons/Icon-maskable-192.png": "9299e21d4e19fca65f4715ca2bae6641",
"icons/Icon-maskable-512.png": "9299e21d4e19fca65f4715ca2bae6641",
"index.html": "f4b0e6e49602853d16ad27a0de4823d1",
"/": "f4b0e6e49602853d16ad27a0de4823d1",
"main.dart.js": "cf131c28a6f23adbf2c43f850651e02a",
"manifest.json": "d37c4da88379fe0a558eae1a785147b2",
"version.json": "685967bb8af53004b48d3e49a4067d65"};
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
