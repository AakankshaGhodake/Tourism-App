import 'package:flutter/material.dart';

import '../../models/category.dart';

import '../../models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Pune',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Mumbai',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Kolhapur',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Satara',
    color: Colors.blue,
  ),
  Category(
    id: 'c5',
    title: 'Nagpur',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'c6',
    title: 'Solapur',
    color: Colors.pink,
  ),
  Category(
    id: 'c7',
    title: 'Thane',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Nashik',
    color: Colors.green,
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Shaniwar Wada',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/The_entrance_of_Shaniwar_Wada..JPG/1200px-The_entrance_of_Shaniwar_Wada..JPG',
    duration: 20,
    contactInfo: [
      'Address: Shaniwar Peth, Pune',
      'Open on: 7days',
      'Time: 9.30 to 5',
      'Guide: Ram Kharat',
      'Guide No: 9956231426',
      'Rating: 4.5'
    ],
    about: [
      'Shaniwar Wada in Pune is a historical palace and fort that chronicles the glory and grandeur of the Maratha Empire. This old mansion boasts of a history of 287 years and was the seat of the Peshwas, who were the Prime Ministers to the Maratha rulers. It served as a melting pot of culture and politics until the Peshwas lost the Wada to the British in 1818.',
      'Today, it stands as one of the finest architectural legacies and a prime tourist attraction in the city of Pune. If you are a history buff or enjoy art and architecture, this monument must be on your itinerary when you book your hotels in Pune.',
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: false,
    isAmusement: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Rajiv Gandhi Zoo Park',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://www.tourmyindia.com/states/maharashtra/images/rajiv-gandhi-zoological-park-pune1.jpg',
    duration: 30,
    contactInfo: [
      'Address: Pune -Satara Rd, Katraj',
      'Open on: 7days',
      'Time: 9.30 to 5.30',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 4.5'
    ],
    about: [
      'The park also incorporates a rescue centre for injured and orphaned animals. It has run an animal adoption scheme since October 2010.',
      'The Rajiv Gandhi Zoological Park, commonly known as the Rajiv Gandhi Zoo or Katraj Zoo, is located in Katraj, Pune district, Maharashtra State, India. It is managed by the Pune Municipal Corporation.',
      'Many wild cats, the white tiger, leopard, sloth bear, barking deer, sambhars, black bucks, crocodiles and the Indian tortoise also live here. The zoo is thus a one-stop destination for children and wildlife enthusiasts.'
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: false,
    isAmusement: true,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'DagduSheth Halwai Ganpati Mandir',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://live.staticflickr.com/7503/16032449921_64a27d84d7_b.jpg',
    duration: 10,
    contactInfo: [
      'Address: Budhwar Peth Pune',
      'Open on: 7days',
      'Time: 6 to 11',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 4.5'
    ],
    about: [
      'The Dagadusheth Halwai Ganapati temple is a Hindu Temple located in Pune and is dedicated to the Hindu god Ganesh.',
      'The deity of Lord Ganesha was incepted by Shri Dagdusheth Halwai and his wife Lakshmibai way back, when they lost their only son to the plague epidemic.',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isHistorical: false,
    isReligious: true,
    isEntertainment: false,
    isAmusement: false,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c1',
    ],
    title: 'Imagica aqua',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://www.holidify.com/images/cmsuploads/compressed/bannerpark1_20200717163309.jpg',
    duration: 90,
    contactInfo: [
      'Address: Khopoli, Lonavala',
      'Open on: 7days',
      'Time: 10 to 5',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 5'
    ],
    about: [
      'Imagicaa is the place where your little one can have the most fun! Book your tickets now. Imagicaa is a themed entertainment destination featuring multiple attractions.',
      'Imagicaa is India\'s largest themed entertainment park comprises Theme Amusement Park, Water Park, Snow Park, Stay & more.',
      'Imagicaa is a themed entertainment destination featuring multiple themed experiences, an on-premise hotel, unique characters, innovative and unique attractions, thrilling rides and shows, meeting spaces, and major events - it\'s a place for all seasons, all interests, and all ages.',
    ],
    isHistorical: false,
    isReligious: false,
    isEntertainment: true,
    isAmusement: true,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
    ],
    title: 'Gateway of India',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl: 'https://www.holidify.com/images/cmsuploads/compressed/1030_20190404091854.jpg',
    duration: 60,
    contactInfo: [
      'Address: Apollo Bandar, Colaba, Mumbai',
      'Open on: 7days',
      'Time: No Specific Time',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 5'
    ],
    about: [
      'The Gateway of India is an arch-monument built in the early 20th century in the city of Mumbai (Bombay), India.',
      'The Gateway of India was built to commemorate the arrival of George V, Emperor of India and Mary of Teck, Empress consort, in India at Apollo Bunder, Mumbai (Bombay) on 2 December 1911 prior to the Delhi Durbar of 1911; it was the first visit of a British monarch to India.',
      'The gateway monument has an inscription that reads “Erected to commemorate the landing in India of their Imperial Majesties King George V and Queen Mary on the Second of December MCMXI “.',
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: false,
    isAmusement: false,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c2',
      'c10',
    ],
    title: 'Chota Kashmir Park',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://www.holidify.com/images/cmsuploads/compressed/397889-1_20171223191832.jpg',
    duration: 120,
    contactInfo: [
      'Address: Goregaon, Mumbai',
      'Open on: 7days',
      'Time: 10 to 6',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 5'
    ],
    about: [
      'Chota Kashmir garden, and lake are the place for all age groups. Whether coming with family, friends or partners, this place promises you a complete peace. Here, you will surely encounter a genuine feeling of serenity.',
      'The place is open all the seven days of the week from 10:00 AM to 6:00 PM. The ticket price of the place is affordable; you might have to pay some extra charges for the camera. Apart from this, you can go boating in the Kashmir lake. You can choose the swan-shaped two, four and six-seater paddle boats according to your requirement. You can relish the moments during your boat ride at an affordable price of INR 20 per person (the price may change as well).',
      'The place is open all the seven days of the week from 10:00 AM to 6:00 PM. The ticket price of the place is affordable; you might have to pay some extra charges for the camera. Apart from this, you can go boating in the Kashmir lake. You can choose the swan-shaped two, four and six-seater paddle boats according to your requirement. You can relish the moments during your boat ride at an affordable price of INR 20 per person (the price may change as well).',
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: true,
    isAmusement: true,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c2',
    ],
    title: 'Nehru Science Center',
    affordability: Affordability.Pricey,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://nehrusciencecentre.gov.in/wp-content/uploads/2022/03/Brain-and-Senses-Exhibit.jpg',
    duration: 120,
    contactInfo: [
      'Address: Worli, Mumbai',
      'Open on: 7days',
      'Time: 10 to 6',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 5'
    ],
    about: [
      'Nehru Science Centre, the largest Science Centre in the country has a sprawling 8 acres (32,000 m2) of science park with varieties of plants, trees and shrubs. More than 500 hands-on and interactive science exhibits on energy, sound, kinematics, mechanics, transport, etc. are installed in the park.',
      'The objective of the National Science Centre is to engage, educate and entertain the visitor through thematic exhibitions, interactive educational activities and outreach programmes.',
      'Science centres stimulate curiosity, develop inquiring minds and expose children and adults to positive new experiences.',

    ],
    isHistorical: false,
    isReligious: false,
    isEntertainment: true,
    isAmusement: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c2',
    ],
    title: 'Marine Drive',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://www.holidify.com/images/cmsuploads/compressed/shutterstock_1073721995_20191213105915_20191213105938.jpg',
    duration: 50,
    contactInfo: [
      'Address: Marine Drive, Mumbai',
      'Open on: 7days',
      'Time: No Specific time',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 5'
    ],
    about: [
      'Marine Drive is a 3 kilometre-long Promenade along the Netaji Subhash Chandra Bose Road in Mumbai, India.',
      'Marine Drive is also known as the Queen\'s Necklace because, when viewed at night from an elevated point anywhere along the drive, the street lights resemble a string of pearls in a necklace.',
      'Marine Drive is a 3.6-kilometre-long Promenade along the Netaji Subhash Chandra Bose Road in Mumbai, India. Often, the names Marine Drive and Marines are used interchangeably to refer to this 3.9 km stretch. The road and promenade were constructed by Pallonji Mistry.',
    ],
    isHistorical: false,
    isReligious: false,
    isEntertainment: true,
    isAmusement: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c2',
    ],
    title: 'Shree SiddhiVinayak Temple',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPmRm5yffL-0uz-jID53yqvPOYLbpDTsuh-yL2Ck5zutaiFJ8mad0ubVNS9R3L2FljARg&usqp=CAU',
    duration: 125,
    contactInfo: [
      'Address: Prabadevi, Mumbai',
      'Open on: 7days',
      'Time: No Specific time',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 5'
    ],
    about: [
      'Shree Siddhivinayak temple which is located at Prabhadevi is very famous and favourite as Desire Fulfilling Shrine of Greater Mumbai. This ancient shrine is a place of worship for finding solace for its devotees and the pilgrims all over the globe.',
      'Siddhivinayak Temple traces its roots to the year 1801 when it was originally built by a man named Laxman Vithu. ',
      'It is one of the richest temples in India. The temple has a small mandap with the shrine for Siddhi Vinayak ("Ganesha who grants your wish"). The wooden doors to the sanctum are carved with images of the Ashtavinayak (the eight manifestations of Ganesha in Maharashtra).'
    ],
    isHistorical: true,
    isReligious: true,
    isEntertainment: false,
    isAmusement: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
    ],
    title: 'Kamala Nehru Park',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://thumbs.dreamstime.com/b/malabar-hill-kamala-nehru-park-india-mumbai-january-175716044.jpg',
    duration: 30,
    contactInfo: [
      'Address: Prabadevi, Mumbai',
      'Open on: 7days',
      'Time: No Specific time',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 5'
    ],
    about: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isHistorical: true,
    isReligious: true,
    isEntertainment: true,
    isAmusement: true,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c3',
    ],
    title: 'Shri Mahalakshmi Devi - Ambabai Temple',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://blog.devdarshanapp.com/wp-content/uploads/2021/11/Kolhapur-Mahalaxmi-Temple-3.jpg',
    duration: 55,
    contactInfo: [
      'Address: Tarabai road, Mahadwar Rd, Kolhapur',
      'Open on: 7days',
      'Time: 5 am - 10pm',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 4.8'
    ],
    about: [
      ' Ambabai Temple is an important Hindu temple dedicated to Goddess Lakshmi, who resides here as Supreme Mother Mahalakshmi and is worshipped by locals as Ambabai.  ',
      ' The temple belongs architecturally to the Chalukya empire and was first built in the 7th century. The temple is referred to in multiple Puranas. There is evidence to show that the Konkan king Kamadeo, Chalukyas, Shilahara, Yadavas of Devagiri dynasties visited this city. Adi Shankaracharya also visited.   ',
      'The Kolhapur peetha is of special religious significance, being one of the six places where it is believed one can either obtain salvation from desires or have them fulfilled. The temple takes its name from Mahalakshmi, the consort of Vishnu, and it is believed that the divine couple reside in the area  '
    ],
    isHistorical: true,
    isReligious: true,
    isEntertainment: false,
    isAmusement: false,
  ),

  Meal(
    id: 'm12',
    categories: [
      'c3',
    ],
    title: 'Chhatrapati Shahu Palace',
    affordability: Affordability.Affordable,
    complexity: Complexity.Remote,
    imageUrl:
    'https://dynamic.tourtravelworld.com/hotspot-images/shri-chhatrapati-shahu-museum-kolhapur-5250.jpg',
    duration: 130,
    contactInfo: [
      'Address: New Palace, Kolhapur',
      'Open on: 7days',
      'Time: 9am - 5pm',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 4.5'
    ],
    about: [
      ' New Palace, Kolhapur is a palace situated in Kolhapur, in the Indian state of Maharashtra. The Palace took 7 years to complete, from 1877 to 1884, costing about seven lakhs of rupees. Being an excellent specimen of Indian architecture built in black polished stone, it has been an attraction for tourists.  ',
      '   It has extensive premises with a garden, fountain and wrestling ground. The whole building is eight-angled and has a tower in the middle. The clock on it was fixed in 1877.  ',
      ' The ground floor of the New Palace accommodates the Shahaji Chhatrapati Museum, given over to memorabilia of the Kolhapur rulers.    '
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: false,
    isAmusement: false,
  ),

  Meal(
    id: 'm13',
    categories: [
      'c3',
    ],
    title: 'Rankala Lake',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://www.touristplaceskolhapur.com/wp-content/uploads/2019/07/ranakala-lake-kolhapur.jpg',
    duration: 160,
    contactInfo: [
      'Address: Hari Om Nagar, Kolhapur',
      'Open on: 7days',
      'Time: No specific Time',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 4.7'
    ],
    about: [
      ' Rankala Lake is on the western side of Ambabai temple , it is a popular evening spot and recreation centre. This lake was constructed by late Maharajah, Shri Shahu Chhatrapati.  ',
      '  The Lake is surrounded by Chaupati and other gardens. In the backdrop stands majestic Shalini Palace.  ',
      'Before the eighth century, Rankala was a stone quarry. In the 9th century, an earthquake caused immense structural damage to the quarry, causing water to accumulate from an underground source forming the Rankala Lake. This historic lake features a Hindu temple with a Nandi.  '
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: false,
    isAmusement: true,
  ),
  Meal(
    id: 'm14',
    categories: [
      'c3',
    ],
    title: 'Panhala Fort',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://www.orientrailjourneys.com/blog/wp-content/uploads/2018/08/Torna-Fort-Pune.jpg',
    duration: 55,
    contactInfo: [
      'Address: Panhala, Kolhapur',
      'Open on: 7days',
      'Time: No specific Time',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 5'
    ],
    about: [
      ' The history of Panhala is closely linked with the history of the Maratha empire, and with its founder, Chatrapati Shivaji Raje. ',
      '  Panhala is the only fort where Shivaji spent more than 500 days, other than his childhood homes. It was Maratha State capital until 1782 and in 1827 it became part of the British Empire.  ',
      'It is strategically located looking over a pass in the Sahyadri mountain range which was a major trade route from Bijapur in the interior of Maharashtra to the coastal areas.  '
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: false,
    isAmusement: false,
  ),
  Meal(
    id: 'm15',
    categories: [
      'c3',
    ],
    title: 'Bhavani Mandap',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://budgetindianvacations.files.wordpress.com/2014/03/bhavani-mandap-kolhapur-1.jpg ',
    duration: 180,
    contactInfo: [
      'Address: Bhavani Mandap, C ward, Kolhapur  ',
      'Open on: 7days',
      'Time: 10 am - 5pm',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 4.7'
    ],
    about: [
      'Bhavani Mandap is a historical building situated in the walled city center of Kolhapur in southern Maharashtra, India. It is located near the famous and mammoth Mahalaxmi Temple on the west.',
      ' Bhavani Mandap was an important meeting venue in yesteryears. It housed the offices of various court officials and was centre of many celebrations. It also saw a famous murder in the central courtyard.  ',
      'At Bhavani Mandap, we can find the life size statue of Kolhapur\'s most loved prince Shahu Maharaj. Although, he was deemed king by the city dwellers, most of his political life was spent under the Raj.  '
    ],
    isHistorical: true,
    isReligious: true,
    isEntertainment: false,
    isAmusement: false,
  ),
  Meal(
    id: 'm16',
    categories: [
      'c4',
    ],
    title: 'Ajinkyatara Fort',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://i0.wp.com/mhexplorer.in/wp-content/uploads/2019/09/Ajinkyatara_Prathamesh-Ghone-1-1.jpg?fit=1024%2C768&ssl=1',
    duration: 55,
    contactInfo: [
      'Address: MXCR+W5Q, Satara',
      'Open on: 7days',
      'Time: 5 am - 9pm',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 4.5'
    ],
    about: [
      ' Ajinkyatara (literally "The Impregnable Star") is a fort on one of the seven mountains surrounding the city of Satara in the Sahayadri Mountains of Maharashtra.  It is a 16th-century fort, that was called "Ajimtara", during Aurangzeb regime and was based on Aurangzeb son\'s name, Ajim.  ',
      ' The word \'Ajinkyatara\' literally means \'the impregnable fort\'. It is one of the most stunning specimens of Maratha architecture in Satara. The fort provides a spectacular view of the entire Satara city and is a popular place of sightseeing in the current times.  ',
      'Ajinkyatara Fort was constructed around the twelfth century CE by the Shilahara King Bhoj II. It is situated on one of the slopes encompassing Satara city and was once the capital of the Maratha domain.'
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: false,
    isAmusement: false,
  ),

  Meal(
    id: 'm17',
    categories: [
      'c4',
    ],
    title: 'Kaas Plateau ',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://www.outlookindia.com/traveller/wp-content/uploads/2017/04/Kaas-plateau1_FI.jpg',
    duration: 40,
    contactInfo: [
      'Address: Kas, Satara',
      'Open on: 7days',
      'Time: No Specific Time',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 4'
    ],
    about: [
      ' The Kaas Plateau, also known as the Kaas Pathar  is a plateau situated 25 kilometres west from Satara and is declared as a  UNESCO World Natural Heritage Site in 2012.',
      ' It is a biodiversity hotspot known for various types of seasonal wild flowers bloom and numerous species of endemic butterflies annually in the months of August and September. The plateau is situated at an altitude of 1200 metres and is approximately 10 square kilometres in area. Kaas has more than 850 different species of flowering plants.  ',
      'Kaas Plateau has more than 150 or more types of flowers, shrubs and grasses. The orchids bloom here for a period of 3–4 weeks during this season. Kaas lake, built 100 years ago, is a perennial source of Water supply for western part of Satara city.'
    ],
    isHistorical: false,
    isReligious: false,
    isEntertainment: true,
    isAmusement: true,
  ),
  Meal(
    id: 'm18',
    categories: [
      'c4',
    ],
    title: 'Thoseghar Waterfall',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://onhisowntrip.com//wp-content/uploads/2020/03/thoseghar-waterfalls.jpg2_.jpg',
    duration: 55,
    contactInfo: [
      'Address: Thoseghar, Satara',
      'Open on: 7days',
      'Time: 9 am - 6pm',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 4.5'
    ],
    about: [
      ' Thoseghar waterfalls is a scenic spot located near the small village of Thoseghar, 20 km from Satara city, at the edge of the Konkan region, in Western India. There are a series of waterfalls, some of them 15 to 20 metres and one of approx 200 metres in height. ',
      'People come from all over Maharashtra to visit the area, especially during the rainy or monsoon season, July to November  ',
      'Heavy rain falls during that season and because of this the falls have more water and are more spectacular. The immediate area is calm and quiet, with a clean lake and dark woods in a hilly area.'
    ],
    isHistorical: false,
    isReligious: false,
    isEntertainment: true,
    isAmusement: true,
  ),
  Meal(
    id: 'm19',
    categories: [
      'c4',
    ],
    title: 'Vasota Fort ',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://gafindia.in/wp-content/uploads/2022/12/image-15.png',
    duration: 25,
    contactInfo: [
      'Address: Kasabe Bamnoli Vasota, Taluka, Jawali, Bamnoli, Satara',
      'Open on: 7days',
      'Time: No specific Time',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 4.6'
    ],
    about: [
      ' Vasota fort is attributed to the Kolhapur Shilahara Chief Bhoja II, of Panhala. Vasota always remained with Marathas, Shirkes & Mores in 16th century. Shivaji Maharaj incorporated the fort into Swarajya in 1655 during the conquest of Javli., 1178–1193',
      'The fort is in dilapidated condition and is overgrown. The remnants of Shree Mahadev mandir and the plinth of a huge "sadar", discussion place, are there.It is a protected natural reserve.',
      'It was famously defended by Tai Telin a mistress of Pant Pratinidhi a killedar of the fort when he was captured.'
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: true,
    isAmusement: true,
  ),
  Meal(
    id: 'm20',
    categories: [
      'c4',
    ],
    title: 'Koyna Dam ',
    affordability: Affordability.Affordable,
    complexity: Complexity.Remote,
    imageUrl:
    'https://www.holidify.com/images/cmsuploads/compressed/6890088845_9344b20c4e_b_20171121161259.jpg',
    duration: 25,
    contactInfo: [
      'Address:  Koyna Nagar, Satara',
      'Open on: 7days',
      'Time: No specific Time',
      'Guide: Syam Kharat',
      'Guide No: 8956231426',
      'Rating: 4.6'
    ],
    about: [
      'The Koyna Dam is one of the largest dams in Maharashtra, India. It is a rubble-concrete dam constructed on Koyna River which rises in Mahabaleshwar, a hillstation in Sahyadri ranges. It is located in Koyna Nagar, Satara district, in the Western Ghats on the state highway between Chiplun and Karad.',
      'The spillway of the dam is located at the center. It has 6 radial gates. The dam plays a vital role of flood controlling in monsoon season. The catchment area dams the Koyna river and forms the Shivasagar Lake which is approximately 50 km, in length.',
      'The dam has withstood many earthquakes in the recent past, including the devastating 1967 Koynanagar earthquake, resulting in the dam developing some cracks. After the disaster grouting of the cracks was done.'
    ],
    isHistorical: false,
    isReligious: false,
    isEntertainment: true,
    isAmusement: true,
  ),
  Meal(
    id: 'm21',
    categories: [
      'c5',
    ],
    title: 'Deeksha Bhoomi',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl: 'https://media.gettyimages.com/id/141318585/photo/symbol-of-peace.jpg?s=612x612&w=gi&k=20&c=cRUsT1hU3NrNFBFfNpoPlK_yhmOL-iZE5bzR4i2OsUg=',
    duration: 20,
    contactInfo: [
      'Address: Deeksha Bhoomi, Ambazari Road,Nagpur',
      'Open on: 7 days',
      'Time: 9.30 to 5',
      'Guide: Manish Mokhare',
      'Guide No: 7854963210',
      'Rating: 5'
    ],
    about: [
      'Deekshabhoomi is a sacred monument of Navayana Buddhism located at Nagpur city in Maharashtra state of India, where Dr. B. R. Ambedkar, embraced Buddhism with approximately 600,000 of his followers mainly scheduled caste peoples on Ashoka Vijaya Dashami on 14 October 1956. Ambedkar revived Buddhism in India. Ambedkar\'s conversion to Buddhism is deeply significant for millions of people in India. According to the 2011 India census more than 87% of the total Buddhist population in India are Ambedkarite Buddhists.'
          'Deekshabhoomi is in Nagpur, Maharashtra, a location regarded as a sacred place,prernabhoomi (inspiring land) of social revolution being an atheist and a preparation for social actions against class conflicts, discrimination, inequality also the first pilgrimage center of Ambedkarite Buddhism in India. Millions of pilgrims visit Deekshabhoomi every year,',
    ],
    isHistorical: true,
    isReligious: true,
    isEntertainment: false,
    isAmusement: false,
  ),
  Meal(
    id: 'm22',
    categories: [
      'c5',
    ],
    title: 'Crazy Castle Aqua Park , Ambazari Lake, Nagpur',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl: 'https://res.cloudinary.com/thrillophilia/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_auto,h_600,q_auto,w_auto/v1/filestore/ex0k7tq9qvdd8u7aezckp2fnndoc_1585116470_shutterstock_618681866.jpg.jpg',

    duration: 30,
    contactInfo: [
      'Address: Ambazari Lake,Nagpur',
      'Open on: 7days',
      'Time: 9:00 to 6:00',
      'Guide: Ravi Mahajan',
      'Guide No: 8979531426',
      'Rating: 4.5'
    ],
    about: [
      'Krazy Castle Aqua Park, one of the most entertaining locations to visit in Nagpur, allows you to enjoy yourself with your family. It also attracts visitors from surrounding towns and states. Like any other water park, Krazy Castle Aqua Park has drawn many tourists due to the variety of exciting rides.'
      'Additionally, it provides mind-blowing packages for college students, business workplaces, and educational institutions. Furthermore, the most pleasant time to visit this location is during the hot and humid summer months.'
    ],

    isHistorical: false,
    isReligious: false,
    isEntertainment: true,
    isAmusement: true,
  ),
  Meal(
    id: 'm23',
    categories: [
      'c5',
    ],
    title: 'Swaminarayan Temple, Nagpur',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl:

    'https://nagpurtourism.co.in/images/places-to-visit/header/swaminarayan-temple-nagpur-tourism-entry-fee-timings-holidays-reviews-header.jpg',

    duration: 10,
    contactInfo: [
      'Address: Swaminarayan Marg Middle Ring road, Wathoda, Nagpur',
      'Open on: 7days',
      'Time: 6 AM to 12 PM & 4 PM to 8:30 PM',
      'Guide: Rahul Jagtap',
      'Guide No: 8496587226',
      'Rating: 5'
    ],
    about: [
      'Well constructed and decorated, Swaminarayan Temple has been meeting devotees from far. The green carpet inside temple premises is soothing to the eyes and adds to the positivity of the environment while the staircase to the temple makes one keep staring in awe.'
          ' The best time to visit the temple is in evening, post or during sunset when the temple gets fully lit with hues against the dark background of the night sky'

    ],
    isHistorical: false,
    isReligious: true,
    isEntertainment: true,
    isAmusement: false,
  ),
  Meal(
    id: 'm24',
    categories: [
      'c5',
    ],
    title: ' Pench National Park',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl: 'https://nagpurtourism.co.in/images/places-to-visit/header/pench-national-park-nagpur-tourism-entry-fee-timings-holidays-reviews-header.jpg',
    duration: 20,
    contactInfo: [
      'Address: Sillari Gate, NH44, from Pauni take left, Nagpur,',
      'Open on: 7 days',
      'Time: 6:00 am – 11:00 am and 3:00 pm – 6:00 pm',
      'Guide: Tanmay Deshmukh',
      'Guide No: 9356556425',
      'Rating: 4.5'
    ],
    about: [

      'Pench National Park is nestled on the border of Madhya Pradesh and Maharashtra. A total protected area of 1197 sq km across the two states provides shelter to more than 35 species of fauna and numerous species of flora. Pench National Park is also a tiger reserve, one of the biggest in the country.' 'Tiger sighting is a common activity in the tiger reserve. Pench Weekend tour takes you across the heartlands of Pench Tiger Reserve, acquainting you to some of the most endangered species of animals in India like Bengal'
          'Tiger, Porcupine and Black Naped hare. The 3 day Pench Weekend tour will take you to the exotic locations inside the Pench National Park and Tiger Reserve.'
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: false,
    isAmusement: true,
  ),
  Meal(
    id: 'm25',
    categories: [
      'c5',
    ],
    title: 'Dragon Palace Buddhist Temple',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:

    'https://nagpurtourism.co.in/images/places-to-visit/header/dragon-palace-buddhist-temple-nagpur-tourism-entry-fee-timings-holidays-reviews-header.jpg',

    duration: 20,
    contactInfo: [
      'Address: Gautam Colony, Kamptee, Nagpur,',
      'Open on: 7 days',
      'Time: 9.30 to 5',

      'Guide: Manish Mokhare',
      'Guide No: 7854963210',
      'Rating: 5'
    ],
    about: [
      'The Dragon Palace Temple, also known as the Lotus Temple of Nagpur, is a Buddhist placeof worship located in Kamptee, Nagpur.' 'The temple was established in 1999 with funds fromthe Japan-based Ogawa Society, a charitable trust.' 'The temple complex surrounded by theDragon Palace has a carved sandalwood statue associated with the Buddha, and the building is a pilgrimage site for practitioners of the faith.'
    ],
    isHistorical: true,
    isReligious: true,
    isEntertainment: false,
    isAmusement: false,
  ),
  Meal(
    id: 'm26',
    categories: [
      'c6',
    ],
    title: 'Sidheshwar Temple',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://www.tourmyindia.com/states/maharashtra/images/siddheshwar-temple-solapur1.jpg',
    duration: 20,
    contactInfo: [
      'Address: MWC3+48M, MH SH 151, Sidheshwar Temple Area, Solapur, Maharashtra 413002',
      'Open on: 7days',
      'Time: 7 to 9',
      'Guide: pravin raut',
      'Guide No: 9956231426',
      'Rating: 4.5'
    ],
    about: [
      'The temple is dedicated to its namesake Siddheshwar, a twelfth-century devotee of Shiva who is considered a god in the Lingayat faith and the grāmadevatā of Solapur. It is at the temple\'s site where he is recorded as having attained samadhi, and as such the location is revered by devotees.''Upon achieving samadhi in 1167AD, Siddeshwar attained samadhi and A marble samadhi exists at the centre of the temple today.'
          'Siddheshwar is attributed to having installed 68 Shiva lingams in the main courtyard; the amrit (immortality) linga being one of them.' 'There are several smaller temples within the complex, such as ones dedicated to Ganesha, Vithoba and Rukmini. Additionally, within the sanctum of the main temple complex there is an idolic effigy of Siddheshwar. A silver-plated figure of the mythological bull nandi is also present.',
    ],
    isHistorical: true,
    isReligious: true,
    isEntertainment: false,
    isAmusement: false,
  ),
  Meal(
    id: 'm27',
    categories: [
      'c6',
    ],
    title: 'Solapur Bhuikot Killa',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://i.ytimg.com/vi/y_z-GWdI5WA/maxresdefault.jpg',
    duration: 20,
    contactInfo: [
      'Address:2, Killa Rd, Sidheshwar Temple Area, Solapur, Maharashtra 41300',
      'Open on: 7days',
      'Time: 7 to 5',
      'Guide: raj mahadik',
      'Guide No: 9956256667',
      'Rating: 4.6'
    ],
    about: [
      'Bhuikot fort is situated on the banks of Siddheshwar lake in the 12th century. The fort is a must visit for history lovers, scholars and hosiery tourists. The Bajirao Peshwa, Chhatrapati Pratap Singh Bhosale of Satara, stayed here for a month in 1818. According to the information received, Srikanth had built the fort of Solapur in 1719 for his wisdom. According to some, Mahmud Gawan built another fort around the fort built during the reign of Hindu kings and made the fort impregnable.Muhammad Gawan Bahmani was the Diwan of Sultan Mahmud Shah. The fort of Solapur, which witnessed many historical events, was the refuge of many dynasties. There is so much fun in these historical events. This is the record of \'Fort of Solapur\' given as dowry in marriage. This record is not once but twice. Burhan Nizam Shah ascended the throne of Ahmednagar. (Bhuikot fort information in Marathi) while Bijapur was ruled by Ismail Adilshah. A cordial relationship was established between them. The marital relationship was created to strengthen this relationship. Adilshah\'s daughter Burhan was given to Nizamshah and the marriage ceremony was celebrated with great pomp. The marriage took place at Solapur fort.At that time, that is. In 1523, the fort was in the possession of Bijapur. Adilshah had announced to give the fort as dowry to Javaya but after marriage Adilshah refused to give the fort. This was followed by a war between Nizamshah and Adilshah. In this battle Jawai Nizam Shah was defeated.In 1552, it was given to Chandbibi Ali Adilshah, the second princess of Ahmednagar. Ali Adilshah\'s sister Hadiya Sultan was married to Mutarza Nizamshah. However, as accepted, Nizam Shah gave the fort to the Sultan of Bijapur as a dowry.After Bahmani, Adilshahi and Nizamshahi, Solapur fort came under Mughal rule. During Aurangzeb\'s reign most of his time was spent around the fort. Later this fort came under the control of Nizam of Hyderabad and later Marathas.'
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: true,
    isAmusement: false,
  ),
  Meal(
    id: 'm28',
    categories: [
      'c6',
    ],
    title: 'Great Indian Bustard Sanctuary in Solapur',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://www.deccanherald.com/sites/dh/files/article_images/2019/07/19/great%20indian%20bustard-1563525001.jpg',
    duration: 20,
    contactInfo: [
      'Address:  RVG9+PFH, Nannaj, Maharashtra 413222',
      'Open on: 7days',
      'Time: 7 to 9',
      'Guide: ravi raut',
      'Guide No: 9934551426',
      'Rating: 4.5'
    ],
    about: [
      'Great Indian Bustard Sanctuary (established in 1979, also known as the Jawaharlal Nehru Bustard Sanctuary of Maharashtra) is a wildlife sanctuary for the great Indian bustard (Ardeotis nigriceps) at Solapur, Maharashtra, India. The land is drought-prone and semi-arid.[2] It is in the Deccan thorn scrub forests ecoregion.[3]maharasthtra'
          'Maharashtra is one of the six states of India where great Indian bustards (Ardeotis nigriceps) are still seen. The great Indian bustard at Nannaj and Karmala was first identified By Mr B.S.Kulkarni in 1972 and with his constant efforts to save the bird had resulted in Dr. Salim Ali visiting Nannaj and starting a research project. Mr Kulkarni wrote extensively in local newspapers and made people aware of its existence and he is still active in trying to protect the bird and its habitat at Nannaj, near Solapur. In former days the bustard was a common bird in the dry districts of Maharashtra.',
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: false,
    isAmusement: true,
  ),
  Meal(
    id: 'm29',
    categories: [
      'c6',
    ],
    title: 'Dharmaveer Sambhaji Lake in Solapur',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://d3pc1xvrcw35tl.cloudfront.net/images/1200x900/sambhaji-lake-12_202202765602.jpg',
    duration: 20,
    contactInfo: [
      'Address:JWX3+P35, Vijapur Rd, Konark Nagar, Jule, Solapur, Maharashtra 413004 ',
      'Open on: 7days',
      'Time: 24 hours',
      'Guide:Ramesh Mahajan ',
      'Guide No: 9457788226',
      'Rating: 4.5'
    ],
    about: [
      'It is one of the largest lakes in Solapur that was recently sheltered by the government for a beautification and conservation mission. Take a long walk along the lake in the evening and spend some leisure hours watching people. It can be a good pit-stop for you and your family to steal a few moments of self-indulgence before turning in for the night.',
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: true,
    isAmusement: false,
  ),
  Meal(
    id: 'm30',
    categories: [
      'c6',
    ],
    title: 'Akkalkot Swami Samarth Maharaj Temple in Solapur',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://temple.yatradham.org/wp-content/uploads/2020/06/akkalkot-temple.jpg',
    duration: 20,
    contactInfo: [
      'Address:Akkalkot is a Holy place of Shri.Swami Samarth Maharaj. It is located at a distance of 38 kms. by road from Solapur District headquarters. ',
      'Open on: 7days',
      'Time: 5 to 10',
      'Guide:Ramesh Joshi ',
      'Guide No: 9457788226',
      'Rating: 4.5'
    ],
    about: [
      'Akkalkot Temple, Ambabai Temple,Akkalkot Swami Samarth Temple or Akkalkot Swami Samarth Maharaj Temple is one of the important pilgrimage in Maharashtra. It is also called as Vatavruksha Swami Mandir because of the presence of the huge banyan tree (Vatavruksha). Swami Samarth Temple is located in Akkalkot, Sholapur district, Maharashtra State. Akkalkot is the holy abode to Shri Swami Samarth Maharaj, a 19th century saint who is believed to be an incarnation of Lord Dattatreya.Shri Swami Samartha is believed to be the incarnation of Shri Narasimha Saraswati, who in turn is the believed incarnation of Shri Shripad Shrivallabha. The Akkalkot Temple Timings is from 05:00 am to 22:00 pm.Devotees can get Akkalkot Temple Darshan Timings, Akkalkot Swami Samarth Temple Timings, Akkalkot Temple Pooja Timings,Akkalkot Temple Aarti Timings, Akkalkot Temple Opening Time & Closing Time with How to Reach Akkalkot Temple here at Darshanbooking.',
    ],
    isHistorical: true,
    isReligious: true,
    isEntertainment: false,
    isAmusement: true,
  ),
  Meal(
    id: 'm31',
    categories: [
      'c7',
    ],
    title: 'Elvis Butterfly Garden ,Thane',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://res.cloudinary.com/thrillophilia/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_auto,h_600,q_auto,w_auto/v1/filestore/ng05sb3isv2gw3sa0q6blkbffuyg_1612782959_Butterfly_garden.jpg.jpg',
    duration: 20,
    contactInfo: [
      'Address: Ward.No.1, Village Rd, Gowniwada, Owale, Thane',
      'Open on: Sundays',
      'Time: 8:30am to 12:00 pm',
      'Guide: Aashish Mokhare',
      'Guide No: 4569871230',
      'Rating: 4'
    ],
    about: [
      'One of the most sought after places to visit in Thane, the Elvis Butterfly Garden is home to over 132 species of colourful butterflies. An open air butterfly park, the Elvis Garden offers a uniquely informative experience for visitors of all ages.'
          'The owner of the park takes all visitors through a tour of the Garden, explaining the various life stages of the butterfly as they go. Visitors can also witness all the butterflies at their different stages- from a larvae, to a pupa, then a caterpillar and eventually a butterfly- in their natural habitats.',
    ],
    isHistorical: false,
    isReligious: true,
    isEntertainment: false,
    isAmusement: true,
  ),
  Meal(
    id: 'm32',
    categories: [
      'c7',
    ],
    title: 'Vardhaman Fantasy Amusement Park,Thane ',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl: 'https://res.cloudinary.com/thrillophilia/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_auto,h_600,q_auto,w_auto/v1/filestore/4wij6s4mu300797j5a3vvemaql11_100g0n000000egb8e91E9.png',
    duration: 30,
    contactInfo: [
      'Address: near McDonalds, Shivar Garden, Mira Road',
      'Open on: 7days',
      'Time: 09.00AM-09.00PM ',
      'Guide: Syam Neware',
      'Guide No: 7412503698',
      'Rating: 5'
    ],
    about: [
      'Built after the Disney World, Vardhaman Fantasy Amusement Park is one of the freshest new places to visit in Thane. The expansive amusement park is separated into seven distinct zones- Texas Cowboy, Greek Village, Colo Theatrum, Viva Las Vegas, Wonders of the World, Lake Venetia and Spanish food.'
          'Each section is bustling with thrilling rides that promise to keep both adults and children on their feet throughout the day. Apart from this, the Amusement Park also has an all-accommodative food court.'
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: false,
    isAmusement: true,
  ),
  Meal(
    id: 'm33',
    categories: [
      'c7',
    ],
    title: 'Kalibari Temple',
    affordability: Affordability.Affordable,
    complexity: Complexity.Crowded,
    imageUrl:
    'https://res.cloudinary.com/thrillophilia/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_auto,h_600,q_auto,w_auto/v1/filestore/07w9bc829j4jmz0nx9vr7x6cx4d4_shimla-kali-bari.jpg',
    duration: 10,
    contactInfo: [
      'Address:  64, Vartak Nagar, Thane West, Thane',
      'Open on: 7days',
      'Time: 6:00 AM - 1:00 PM; 5:00 PM - 9:30 PM',
      'Guide: Rajesh Mani',
      'Guide No: 7856941230',
      'Rating: 4.5'
    ],
    about: [
      'A joint effort by the Bengali community in Thane, the Kalibari Temple was started in the year 1996. The main deity of the temple is the Goddess Kali, although Goddess Laxmi and Goddess Saraswati are worshipped here as well.'
          'The Kali temple resembles the ancient temples of Orissa, and contains a black stone idol that was crafted in Kolkata. The temple conducts puja and aarti on all days of the week at different timings.'
    ],
    isHistorical: false,
    isReligious: true,
    isEntertainment: false,
    isAmusement: true,
  ),
  Meal(
    id: 'm34',
    categories: [
      'c7',
    ],
    title: 'Gorakhgad Fort ,Thane',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://res.cloudinary.com/thrillophilia/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_auto,h_600,q_auto,w_auto/v1/filestore/8ze5oeg85h7q5bplc28a57t6v2fk_f47294400955d3ddd8753fc70c720a93.jpg',
    duration: 20,
    contactInfo: [
      'Address: Murbad, Thane',
      'Open on:  7 days',
      'Time: 9:00am to 9:00 pm',
      'Guide: Dhiraj Yadav',
      'Guide No: 1592634870',
      'Rating: 5'
    ],
    about: [
      'An unusual treat for history lovers and trekkers in the region, Gorakhgad Fort was once used by hermits for meditation due to its idyllic location. It is a hill fort that couldn\'t stand the tests of time and is in ruins now.'
          'However, a trekking trail here has maintained the popularity of this fort, attracting locals and outsiders to partake in the adventure that leads them to the spot. So, if you are craving some action while in Thane, you can always opt for Gorakhgad Fort which is ideal even for beginners.',
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: true,
    isAmusement: false,
  ),
  Meal(
    id: 'm35',
    categories: [
      'c7',
    ],
    title: 'St. John Baptist Church,Thane',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://res.cloudinary.com/thrillophilia/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_auto,h_600,q_auto,w_auto/v1/filestore/ey99f83coo0110d86zlu8mxday37_425527531_25bd169afd_b.jpg',
    duration: 20,
    contactInfo: [
      'Address: Jambli Naka LBS Marg, Near, Ahilyadevi Holkar Marg, Talav Pali, Thane West, Thane',
      'Open on:  7 days',
      'Time: 06.00AM-09.00PM ',
      'Guide: Pradip Modi',
      'Guide No: 4159824670',
      'Rating: 5'
    ],
    about: [
      'Standing testament to the city’s Portugese past, St. John Baptist is a 16th century church in Thane. Standing tall for over 500 years, the Church is well known for its architectural brilliance. The Church is decorated brilliantly during Christmas and Easter, making it a popular place in Thane during this time.'
          'Located just by the Masunda Lake, the Church is known to command beautiful views of the surrounding as well.',
    ],
    isHistorical: false,
    isReligious: true,
    isEntertainment: false,
    isAmusement: false,
  ),
  Meal(
    id: 'm36',
    categories: [
      'c8',
    ],
    title: 'Panchvati',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://www.holidify.com/images/compressed/142.jpg',
    duration: 20,
    contactInfo: [
      'Address: Panchvati,Nashik',
      'Open on: 7days',
      'Time: 24 Hours',
      'Guide: Rohan Kharat',
      'Guide No: 9256732426',
      'Rating: 4.5'
    ],
    about: [
      'Holy land for the believers of Ramayana, Panchvati attracts a lot of pilgrims. A serene town located near Nasik, the site offers small sightings having a lot of significance in the epic of Ramayana.'
          'Given the legend of Panchvati, the place holds a lot of religious significance even in the present day. Sites such as the Kalaram Temple and the Sita Gufaa are on every pilgrims list. The Kumbh Mela takes place on the river banks of Godavari, and has a surplus of pilgrims from every corner of world during the occasion.',
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: true,
    isAmusement: false,
  ),
  Meal(
    id: 'm37',
    categories: [
      'c8',
    ],
    title: 'Dudhsagar falls, Nashik',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://www.holidify.com/images/compressed/139.jpg',
    duration: 20,
    contactInfo: [
      'Address:2PHF+M97, Ambedkar Nagar, Nashik, Maharashtra 422222 ',
      'Open on: 7days',
      'Time: 24 Hours',
      'Guide: Rahul Jagtap',
      'Guide No: 9253342426',
      'Rating: 4.7'
    ],
    about: [
      'Regarded as one of the best falls in the view, Dhudsagar falls offer a panoramic view with a spectacular scenery. The cascade is in full verve during the monsoon season and quiet a sight to behold.',
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: true,
    isAmusement: false,
  ),
  Meal(
    id: 'm38',
    categories: [
      'c8',
    ],
    title: 'Trimbakeshwar, Nashik',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://www.holidify.com/images/cmsuploads/compressed/144_20190423153914.jpg',
    duration: 20,
    contactInfo: [
      'Address:Kevdiban Rd, behind dental college, Godavari MIDC, tapovan, Nashik, Maharashtra 422003 ',
      'Open on: 7days',
      'Time: 7 to 9',
      'Guide: Rahul Badgujar',
      'Guide No: 9168782496',
      'Rating: 4.3'
    ],
    about: [
      'Trimbakeshwar Temple is one of the twelve Jyotirlingas in India. Located in Trimbak, 28 kilometres from Nashik city, this Shaiva temple is found at the foot of Brahmagiri Hills. Established by the Maratha ruler, Peshwa Nana Saheb in the 18th century, the temple is mentioned in the powerful Mrityunjaya Mantra that bestows immortality and longevity.'
          'Designed in classic architecture, the temple premises also cites the Kusavarta or Kunda which is said to be the source of river Godavari. The fascinating feature of the Jyotirlinga is its three faces symbolizing Lord Brahma, Lord Vishnu and Lord Rudra. Only male devotees are allowed in the core area or \'garbhgriha\' of the temple. It is mandatory to wear a sovala or a silk dhoti here. Devotees need to book pandits if they wish to participate in the Abhishekam. ',
    ],
    isHistorical: true,
    isReligious: true,
    isEntertainment: false,
    isAmusement: false,
  ),
  Meal(
    id: 'm39',
    categories: [
      'c8',
    ],
    title: 'Pandavleni Caves, Nashik',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://www.holidify.com/images/cmsuploads/compressed/4032px-Pandavleni_caves_20171024172442.jpg',
    duration: 20,
    contactInfo: [
      'Address:WPRX+FCM, Pandav Lene Rd, Buddha Vihar, Pathardi Phata, Nashik, Maharashtra 422010',
      'Open on: 7days',
      'Time: 8 to 6',
      'Guide: Kartik Patil',
      'Guide No: 9165533496',
      'Rating: 4.2'
    ],
    about: [
      'Located about 8 kilometres to the south of the centre of Nashik in Maharashtra in India, the Pandavleni Caves, also known as Pandu Caves or Nasik Caves are ancient rock-cut caves that are situated on the tableland of the Trivashmi Hills. These caves date back to the period between the 3rd century BC and 2nd century AD. The Pandavleni caves are a group of 24 caves that represent Hinayana Buddhism. The mystic caves also comprise of musical fountains, museums and various outlets of food. Multiple monasteries, shrines, water tanks, pillars, and carvings can also be found inside.'
          'The Pandavleni Caves were built by prominent rulers of that time, such as the Satavahanas and Kshaharatas, for the Hinayana Buddhist monks.  Of all the twenty-four caves, cave numbers 3 and 10 are the most beautiful ones. The architecture of these caves is unique and impressive. The inside of these caves also consists of inscriptions which act as significant study material for researchers and scholars till this day. Cave number 15 has an inscription about the King of Western Maharashtra. ',
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: true,
    isAmusement: false,
  ),
  Meal(
    id: 'm40',
    categories: [
      'c8',
    ],
    title: 'Anjaneri Hills, Nashik',
    affordability: Affordability.Affordable,
    complexity: Complexity.Intermediate,
    imageUrl:
    'https://www.holidify.com/images/compressed/141.jpg',
    duration: 20,
    contactInfo: [
      'Address:Anjaneri is located 20 km away from Nasik by Trimbak Road. It is a popular trekking spot, especially in the rainy season.',
      'Open on: 7days',
      'Time: 24 Hours',
      'Guide:Samir Patil',
      'Guide No: 9243367886',
      'Rating: 4.2'
    ],
    about: [
      'Believed to be the birthplace of Lord Hanuman, Anjaneri derives its name from Hanuman\'s mother Anjani. Perched in the picturesque mountain range of Nashik-Trimbakeshwar, Anjaneri fort is at a distance of ~20 km from Nashik. Apart from its spiritual significance, Anjaneri is also a popular spot for hikers.',
    ],
    isHistorical: true,
    isReligious: false,
    isEntertainment: true,
    isAmusement: true,
  ),
];
