import 'package:interview_challenge/data/dtos/product_dto.dart';

final List<ProductDto> _testProducts = [
  ProductDto(
    id: '0000',
    title: 'Apple MacBook Air Laptop',
    description:
        '''All-Day Battery Life – Go longer than ever with up to 18 hours of battery life.
Powerful Performance – Take on everything from professional-quality editing to action-packed gaming with ease. The Apple M1 chip with an 8-core CPU delivers up to 3.5x faster performance than the previous generation while using way less power.
Superfast Memory – 8GB of unified memory makes your entire system speedy and responsive. That way it can support tasks like memory-hogging multitab browsing and opening a huge graphic file quickly and easily.
Stunning Display – With a 13.3” Retina display, images come alive with new levels of realism. Text is sharp and clear, and colors are more vibrant.
Why Mac – Easy to learn. Easy to set up. Astoundingly powerful. Intuitive. Packed with apps to use right out of the box. Mac is designed to let you work, play, and create like never before.
Simply Compatible – All your existing apps work, including Adobe Creative Cloud, Microsoft 365, and Google Drive. Plus you can use your favorite iPhone and iPad apps directly on macOS. Altogether you’ll have access to the biggest collection of apps ever for Mac. All available on the App Store.
Easy to Learn – If you already have an iPhone, MacBook Air feels familiar from the moment you turn it on. And it works perfectly with all your Apple devices. Use your iPad to extend the workspace of your Mac, answer texts and phone calls directly on your Mac, and more.
Fanless Design – Your MacBook Air stays cool and runs quietly even while tackling intense workloads.
AppleCare – Every Mac comes with a one-year limited warranty and up to 90 days of complimentary technical support. Get AppleCare+ to extend your coverage and reduce the stress and cost of unexpected repairs.
Environmentally Friendly – MacBook Air is made with a 100% recycled aluminum enclosure and uses less energy for a smaller carbon footprint.''',
    imageUrl:
        'https://cdn.vox-cdn.com/thumbor/vGTTyiMMUHIHLs0FjoF0z99m6_E=/0x0:2040x1360/1200x800/filters:focal(895x304:1221x630)/cdn.vox-cdn.com/uploads/chorus_image/image/68592461/vpavic_4291_20201113_0366.0.0.jpg',
    price: 8600.88,
    availableQuantity: 15,
    colorName: 'Silver',
    categories: ['Laptops'],
  ),
  ProductDto(
    id: '0001',
    title: 'Xiaomi Redmi 10 64 GB',
    description:
        '''Sistema operacional Android 10, MIUI 12 Mediatek Helio G80 processador (12 nm), tela sensível ao toque capacitiva IPS LCD, 16 milhµes de cores
Tamanho 6,5 polegadas, resoluo 1080 x 2340 pixels Corning Gorilla Glass 3 proteo
Compartimento para carto MicroSDXC (compartimento dedicado) cámera principal de 13 MP + 8 MP + 5 MP + cámera selfie de 8 MP
Possui LED flash, HDR, sensores panormicos, impresso digital (montado na parte traseira), acelerómetro, proximidade, bússola, bateria Li-Po 5020 mAh, carregamento rápido de 18 W
Sistema operacional Android 10, MIUI 12 Mediatek Helio G80 processador (12 nm), tela sensível ao toque capacitiva IPS LCD, 16 milhµes de cores
Tamanho 6,5 polegadas, resoluo 1080 x 2340 pixels Corning Gorilla Glass 3 proteo
Compartimento para carto MicroSDXC (compartimento dedicado) cámera principal de 13 MP + 8 MP + 5 MP + cámera selfie de 8 MP
Possui LED flash, HDR, sensores panormicos, impresso digital (montado na parte traseira), acelerómetro, proximidade, bússola, bateria Li-Po 5020 mAh, carregamento rápido de 18 W
Sistema operacional Android 10, MIUI 12 Mediatek Helio G80 processador (12 nm), tela sensível ao toque capacitiva IPS LCD, 16 milhµes de cores
Tamanho 6,5 polegadas, resoluo 1080 x 2340 pixels Corning Gorilla Glass 3 proteo
Compartimento para carto MicroSDXC (compartimento dedicado) cámera principal de 13 MP + 8 MP + 5 MP + cámera selfie de 8 MP
Possui LED flash, HDR, sensores panormicos, impresso digital (montado na parte traseira), acelerómetro, proximidade, bússola, bateria Li-Po 5020 mAh, carregamento rápido de 18 W''',
    imageUrl: 'https://cf.shopee.com.br/file/519731f13adbb5e21e2b46438fa5382e',
    price: 1249.89,
    availableQuantity: 21,
    colorName: 'Purple',
    categories: ['Smarthphones'],
  ),
  ProductDto(
    id: '0010',
    title: 'Apple Iphone 11',
    description:
        '''This phone is unlocked and compatible with any carrier of choice on GSM and CDMA networks (e.g. AT&T, T-Mobile, Sprint, Verizon, US Cellular, Cricket, Metro, Tracfone, Mint Mobile, etc.).
Tested for battery health and guaranteed to have a minimum battery capacity of 80%.
Successfully passed a full diagnostic test which ensures like-new functionality and removal of any prior-user personal information.
The device does not come with headphones or a SIM card. It does include a generic (Mfi certified) charger and charging cable.
Inspected and guaranteed to have minimal cosmetic damage, which is not noticeable when the device is held at arm's length
This phone is unlocked and compatible with any carrier of choice on GSM and CDMA networks (e.g. AT&T, T-Mobile, Sprint, Verizon, US Cellular, Cricket, Metro, Tracfone, Mint Mobile, etc.).
Tested for battery health and guaranteed to have a minimum battery capacity of 80%.
Successfully passed a full diagnostic test which ensures like-new functionality and removal of any prior-user personal information.
The device does not come with headphones or a SIM card. It does include a generic (Mfi certified) charger and charging cable.
Inspected and guaranteed to have minimal cosmetic damage, which is not noticeable when the device is held at arm's length
This phone is unlocked and compatible with any carrier of choice on GSM and CDMA networks (e.g. AT&T, T-Mobile, Sprint, Verizon, US Cellular, Cricket, Metro, Tracfone, Mint Mobile, etc.).
Tested for battery health and guaranteed to have a minimum battery capacity of 80%.
Successfully passed a full diagnostic test which ensures like-new functionality and removal of any prior-user personal information.
The device does not come with headphones or a SIM card. It does include a generic (Mfi certified) charger and charging cable.
Inspected and guaranteed to have minimal cosmetic damage, which is not noticeable when the device is held at arm's length''',
    imageUrl:
        'https://static.turbosquid.com/Preview/2019/10/07__02_51_23/02.jpg7CA4FBEC-B0D2-4D73-AF6D-6415DE1B1889Large.jpg',
    price: 3894.05,
    availableQuantity: 56,
    colorName: 'Green',
    categories: ['Smartphones', 'Iphones'],
  ), //HERE
  ProductDto(
    id: '0011',
    title:
        '''Clean Architecture: A Craftsman's Guide to Software Structure and Design''',
    description:
        '''By applying universal rules of software architecture, you can dramatically improve developer productivity throughout the life of any software system. Now, building upon the success of his best-selling books Clean Code and The Clean Coder, legendary software craftsman Robert C. Martin (“Uncle Bob”) reveals those rules and helps you apply them.


Martin’s Clean Architecture doesn’t merely present options. Drawing on over a half-century of experience in software environments of every imaginable type, Martin tells you what choices to make and why they are critical to your success. As you’ve come to expect from Uncle Bob, this book is packed with direct, no-nonsense solutions for the real challenges you’ll face–the ones that will make or break your projects.

Learn what software architects need to achieve–and core disciplines and practices for achieving it
Master essential software design principles for addressing function, component separation, and data management
See how programming paradigms impose discipline by restricting what developers can do
Understand what’s critically important and what’s merely a “detail”
Implement optimal, high-level structures for web, database, thick-client, console, and embedded applications
Define appropriate boundaries and layers, and organize components and services
See why designs and architectures go wrong, and how to prevent (or fix) these failures
Clean Architecture is essential reading for every current or aspiring software architect, systems analyst, system designer, and software manager–and for every programmer who must execute someone else’s designs.''',
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/41-sN-mzwKL.jpg',
    price: 280.20,
    availableQuantity: 3550,
    colorName: 'Black',
    categories: ['Books', 'Programming'],
  ),
  ProductDto(
    id: '0100',
    title: 'Amazon Kindle Paperwhite',
    description:
        '''Kindle Paperwhite – Now with a 6.8” display and thinner borders, adjustable warm light, up to 10 weeks of battery life, and 20% faster page turns.
Purpose-built for reading – With a flush-front design and 300 ppi glare-free display that reads like real paper, even in bright sunlight.
More books in more places – Store thousands of titles, then take them all with you. A single charge via USB-C last weeks, not hours.
Easy on the eyes – Now with adjustable warm light to shift screen shade from white to amber.
Waterproof reading – Built to withstand accidental immersion in water, so you’re good from the beach to the bath.
Find new stories – With Kindle Unlimited, get unlimited access to over 2 million titles, thousands of audiobooks, and more.
Go hands-free – Pair with an Audible subscription and Bluetooth headphones or speakers to listen to your story.
Kindle Paperwhite – Now with a 6.8” display and thinner borders, adjustable warm light, up to 10 weeks of battery life, and 20% faster page turns.
Purpose-built for reading – With a flush-front design and 300 ppi glare-free display that reads like real paper, even in bright sunlight.
More books in more places – Store thousands of titles, then take them all with you. A single charge via USB-C last weeks, not hours.
Easy on the eyes – Now with adjustable warm light to shift screen shade from white to amber.
Waterproof reading – Built to withstand accidental immersion in water, so you’re good from the beach to the bath.
Find new stories – With Kindle Unlimited, get unlimited access to over 2 million titles, thousands of audiobooks, and more.
Go hands-free – Pair with an Audible subscription and Bluetooth headphones or speakers to listen to your story.

''',
    imageUrl:
        'https://www.promobit.com.br/blog/wp-content/uploads/2019/02/12195850/ar/1200/kindle-paperwhite3.jpg',
    price: 558.0,
    availableQuantity: 697,
    colorName: 'Black',
    categories: ['Kindles'],
  ),
  ProductDto(
    id: '0101',
    title: 'TBS1000C Digital Storage Oscilloscope',
    description:
        '''Offering affordable performance in a compact design, the TBS1000C digital storage oscilloscope provides the features, versatility and durability required by today's educational institutions, embedded designers, and maker community.  
        The TBS1000C includes a 7-inch WVGA color display with up to 1 GS/s sample rate, bandwidths from 50 MHz to 200 MHz and a five-year warranty.  Its innovative courseware system integrates lab exercises with step-by-step instructions for students. 
        The HelpEverywhere® system provides useful tips and hints throughout the user interface to make the instrument more approachable to a new user.
        Offering affordable performance in a compact design, the TBS1000C digital storage oscilloscope provides the features, versatility and durability required by today's educational institutions, embedded designers, and maker community.  
        The TBS1000C includes a 7-inch WVGA color display with up to 1 GS/s sample rate, bandwidths from 50 MHz to 200 MHz and a five-year warranty.  Its innovative courseware system integrates lab exercises with step-by-step instructions for students. 
        The HelpEverywhere® system provides useful tips and hints throughout the user interface to make the instrument more approachable to a new user.
        Offering affordable performance in a compact design, the TBS1000C digital storage oscilloscope provides the features, versatility and durability required by today's educational institutions, embedded designers, and maker community.  
        The TBS1000C includes a 7-inch WVGA color display with up to 1 GS/s sample rate, bandwidths from 50 MHz to 200 MHz and a five-year warranty.  Its innovative courseware system integrates lab exercises with step-by-step instructions for students. 
        The HelpEverywhere® system provides useful tips and hints throughout the user interface to make the instrument more approachable to a new user.''',
    imageUrl:
        'https://www.tek.com/-/media/images/product-series/tbs1000/tbs1000c-360x220.png?h=220&w=360',
    price: 3500.98,
    availableQuantity: 55,
    colorName: 'White',
    categories: ['Oscilloscpopes', 'Electronics', 'Electrical Engineering'],
  ),
  ProductDto(
    id: '0110',
    title: 'Multimeter True-RMS Fluke-115',
    description:
        '''A compact trms digital multimeter for field service technicians

The Fluke 115 technicians digital multimeter is the compact, general purpose troubleshooting tool for field service technicians. Its simple, one-handed operation and compact design meets the needs of a wide variety of field service technicians. It measures True RMS voltage and current with 6000 count resolution as well as resistance, continuity, frequency and capacitance for quick verifications.

The Fluke 110 Series has five true-rms digital multimeters, each for specific users. The compact instruments offer convenient one-handed operation and a backlit display with large, easy-to-read digits.

General purpose digital multimeter for electrical and electronic testing

Ideal for quick verifications and field service
Presents a large white LED backlight for working in poorly lit areas
Measures AC and DC voltage to 600V
Measures AC and DC current to 10A (20 A overload for 30-seconds max)
Measures resistance, continuity, frequency, and capacitance
Provides Min/Max/Average with elapsed time to record signal fluctuations
Comes with a holster with probe holders for easy storage
Features a compact ergonomic design for one-handed operation
Fits into optional ToolPak™ magnetic hanger for hands-free operation
CAT III 600 V safety rated
For field service technicians, basic electronic repair.
Includes:

Holster
Installed 9V battery
4 mm silicone test lead set
User manual - 2019 BEST PRODUCT IN CATEGORY''',
    imageUrl: 'https://m.media-amazon.com/images/I/61z+0cHyQjL._AC_SY741_.jpg',
    price: 1136.45,
    availableQuantity: 215,
    colorName: 'Yellow',
    categories: ['Multimeters', 'Electronics', 'Eletrical Engineering'],
  ),
  ProductDto(
    id: '0111',
    title: 'Xiaomi Mi Band 5',
    description:
        '''AMAZON ALEXA BUILT-IN: Talk to Amazon Alexa on your Amazfit Band 5 activity fitness tracker. Ask Alexa questions, get translations, set alarms and timers, check the weather, control your smart home devices, and more.
15-DAY BATTERY LIFE: Say goodbye to daily recharge. With a fully charged Amazfit Band 5, you don’t need to bring a charger for a two-week trip. On a single charge, it has enough power to get you charged for 2 whole weeks mind-free.
BLOOD OXYGEN SATURATION MONITOR: You can measure your blood oxygen saturation and understand your physical state with OxygenBeatsTM. Ideal for high-intensity workouts and sports such as marathons and gym workouts.
24/7 HEART RATE, SLEEP TRACKER: With Huami-proprietary BioTracker TM2 PPG optical sensor, this health tracker performs 24/7 real-time heart rate monitoring and high heart rate warning. Band 5 can also professionally interpret the sleep characteristics at each stage and analyzes sleep quality, to help you adjust your sleep habits. It even monitors your 20-minute daily nap.
YOUR SMART SPORTS COMPANSION: An ultimate easy-to-use activity fitness tracker with 11 built-in sports modes, enable you to record the distance, speed, heart rate changes, calories burned, and other data during your workouts. With a water-resistance grade of 5 ATM, Band 5 can withstand all your daily activities and you can wear it while swimming.
WOMEN’S HEALTH TRACKING: With the female period tracking system, Band 5 records and predicts the female menstrual cycle and sends smart notifications reminders.''',
    imageUrl: 'https://m.media-amazon.com/images/I/61xSjdpeU0L._SX522_.jpg',
    price: 250.35,
    availableQuantity: 689,
    colorName: 'Black',
    categories: ['Smart bands'],
  ),
  ProductDto(
    id: '1000',
    title: 'Xbox Series S',
    description:
        '''Access your favorite entertainment through apps like YouTube, Netflix, and more
Enjoy over 100 games right out of the box with a 1 month Xbox Game Pass trial
Watch 4K Blu-ray movies and stream 4K video on Netflix, Amazon, Hulu, Microsoft Movies & TV, and more
Play with friends and family near and far—sitting together on the sofa or around the world on Xbox Live, the fastest, most reliable gaming network
Xbox 1 games and accessories work together.
Access your favorite entertainment through apps like YouTube, Netflix, and more
Enjoy over 100 games right out of the box with a 1 month Xbox Game Pass trial
Watch 4K Blu-ray movies and stream 4K video on Netflix, Amazon, Hulu, Microsoft Movies & TV, and more
Play with friends and family near and far—sitting together on the sofa or around the world on Xbox Live, the fastest, most reliable gaming network
Xbox 1 games and accessories work together.
Access your favorite entertainment through apps like YouTube, Netflix, and more
Enjoy over 100 games right out of the box with a 1 month Xbox Game Pass trial
Watch 4K Blu-ray movies and stream 4K video on Netflix, Amazon, Hulu, Microsoft Movies & TV, and more
Play with friends and family near and far—sitting together on the sofa or around the world on Xbox Live, the fastest, most reliable gaming network
Xbox 1 games and accessories work together''',
    imageUrl: 'https://m.media-amazon.com/images/I/71NBQ2a52CL._SX522_.jpg',
    price: 2481.00,
    availableQuantity: 968,
    colorName: 'White',
    categories: ['Xbox', 'Consoles'],
  ),
  ProductDto(
    id: '1001',
    title: 'Xbox Core Wireless Controller',
    description:
        '''Experience the modernized design of the Xbox Wireless Controller in Shock Blue, featuring sculpted surfaces and refined geometry for enhanced comfort and effortless control during gameplay with battery usage up to 40 hours.
Stay on target with the hybrid D-pad, textured grip on the triggers, bumpers, and back-case. Plug in any compatible headset with the 3.5mm audio headset jack.
Connect using the USB-C port for direct plug and play to console or PC. Support for AA batteries is included on the rear.
Seamlessly capture and share content with the Share button.
Use Xbox Wireless or Bluetooth to play across Xbox Series X|S, Xbox One, and Windows 10/11 devices.
Compatible with Xbox Series X|S, Xbox One, and Windows 10/11 devices.
Experience the modernized design of the Xbox Wireless Controller in Shock Blue, featuring sculpted surfaces and refined geometry for enhanced comfort and effortless control during gameplay with battery usage up to 40 hours.
Stay on target with the hybrid D-pad, textured grip on the triggers, bumpers, and back-case. Plug in any compatible headset with the 3.5mm audio headset jack.
Connect using the USB-C port for direct plug and play to console or PC. Support for AA batteries is included on the rear.
Seamlessly capture and share content with the Share button.
Use Xbox Wireless or Bluetooth to play across Xbox Series X|S, Xbox One, and Windows 10/11 devices.
Compatible with Xbox Series X|S, Xbox One, and Windows 10/11 devices.''',
    imageUrl: 'https://m.media-amazon.com/images/I/51v0T9+NgdL._SX522_.jpg',
    price: 250,
    availableQuantity: 367,
    colorName: 'Blue',
    categories: ['Controllers', 'Consoles'],
  ),
];

List<ProductDto> get products => [..._testProducts];
