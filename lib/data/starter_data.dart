import 'package:flutter/material.dart';
import 'package:taste_app/model/category.dart';
import 'package:taste_app/model/taste_item.dart';

const List<TasteItem> itemsStarterData = [
  TasteItem(
    id: 't1',
    title: 'One Piece',
    description:
        '''Gol D. Roger was known as the "Pirate King," the strongest and most infamous being to have sailed the Grand Line. The capture and execution of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece—which promises an unlimited amount of riches and fame—and quite possibly the pinnacle of glory and the title of the Pirate King.

Enter Monkey D. Luffy, a 17-year-old boy who defies your standard definition of a pirate. Rather than the popular persona of a wicked, hardened, toothless pirate ransacking villages for fun, Luffy's reason for being a pirate is one of pure wonder: the thought of an exciting adventure that leads him to intriguing people and ultimately, the promised treasure. Following in the footsteps of his childhood hero, Luffy and his crew travel across the Grand Line, experiencing crazy adventures, unveiling dark mysteries and battling strong enemies, all in order to reach the most coveted of all fortunes—One Piece.

[Written by MAL Rewrite] ''',
    imageUrl: 'https://cdn.myanimelist.net/images/anime/6/73245.jpg',
    summaryProperties: {
      'release date': [Icons.calendar_month, '1999-09-01'],
      'episodes': [Icons.tv_sharp, 1043],
      'score': [Icons.bar_chart, 8.68]
    },
    tags: [
      'Action',
      'Adventure',
      'Fantasy',
      'Shounen',
    ],
    categories: ['c1'],
  ),
  TasteItem(
    id: 't2',
    title: 'The Eminence in Shadow',
    description:
        '''For as long as he can remember, Minoru Kagenou has been fixated on becoming as strong as possible, which has led him to undertake all kinds of rigorous training. This wish, however, does not stem from a desire to be recognized by others; rather, Minoru does everything he can to blend in with the crowd. So, while pretending to be a completely average student during the day, he arms himself with a crowbar and ruthlessly thrashes local biker gangs at night. Yet when Minoru finds himself in a truck accident, his ambitions seemingly come to a sudden end. In his final moments, he laments his powerlessness—no matter how much he trained, there was nothing he could do to overcome his human limitations.

But instead of dying, Minoru reawakens as Cid, the second child of the noble Kagenou family, in another world—one where magic is commonplace. With the power he so desired finally within his grasp, he dons the moniker "Shadow" and establishes Shadow Garden: a group whose sole purpose is to combat the enigmatic Cult of Diablos, an organization born from Cid's imagination. However, as Shadow Garden grows in both membership and influence, it becomes increasingly apparent that the Cult of Diablos is not as fictional as Cid had intended.

[Written by MAL Rewrite]''',
    imageUrl: 'https://cdn.myanimelist.net/images/anime/1874/121869.jpg',
    summaryProperties: {
      'release date': [Icons.calendar_month, '2022-10-05'],
      'episodes': [Icons.tv_sharp, 20],
      'score': [Icons.bar_chart, 7.87]
    },
    tags: [
      'Action',
      'Comedy',
      'Fantasy',
      'Isekai',
      'Reincarnation',
    ],
    categories: ['c1'],
  ),
  TasteItem(
    id: 't3',
    title: 'Bleach: Thousand-Year Blood War',
    description:
        '''Substitute Soul Reaper Ichigo Kurosaki spends his days fighting against Hollows, dangerous evil spirits that threaten Karakura Town. Ichigo carries out his quest with his closest allies: Orihime Inoue, his childhood friend with a talent for healing; Yasutora Sado, his high school classmate with superhuman strength; and Uryuu Ishida, Ichigo's Quincy rival.

Ichigo's vigilante routine is disrupted by the sudden appearance of Asguiaro Ebern, a dangerous Arrancar who heralds the return of Yhwach, an ancient Quincy king. Yhwach seeks to reignite the historic blood feud between Soul Reaper and Quincy, and he sets his sights on erasing both the human world and the Soul Society for good.

Yhwach launches a two-pronged invasion into both the Soul Society and Hueco Mundo, the home of Hollows and Arrancar. In retaliation, Ichigo and his friends must fight alongside old allies and enemies alike to end Yhwach's campaign of carnage before the world itself comes to an end.

[Written by MAL Rewrite]''',
    imageUrl: 'https://cdn.myanimelist.net/images/anime/1764/126627.jpg',
    summaryProperties: {
      'release date': [Icons.calendar_month, '2022-10-11 to 2022-12-27'],
      'episodes': [Icons.tv_sharp, 13],
      'score': [Icons.bar_chart, 9.16]
    },
    tags: [
      'Action',
      'Adventure',
      'Fantasy',
      'Shounen',
    ],
    categories: ['c1'],
  ),
  TasteItem(
    id: 't4',
    title: 'Steins;Gate',
    description:
        '''Eccentric scientist Rintarou Okabe has a never-ending thirst for scientific exploration. Together with his ditzy but well-meaning friend Mayuri Shiina and his roommate Itaru Hashida, Rintarou founds the Future Gadget Laboratory in the hopes of creating technological innovations that baffle the human psyche. Despite claims of grandeur, the only notable "gadget" the trio have created is a microwave that has the mystifying power to turn bananas into green goo.

However, when Rintarou decides to attend neuroscientist Kurisu Makise's conference on time travel, he experiences a series of strange events that lead him to believe that there is more to the "Phone Microwave" gadget than meets the eye. Apparently able to send text messages into the past using the microwave, Rintarou dabbles further with the "time machine," attracting the ire and attention of the mysterious organization SERN.

Due to the novel discovery, Rintarou and his friends find themselves in an ever-present danger. As he works to mitigate the damage his invention has caused to the timeline, he is not only fighting a battle to save his loved ones, but also one against his degrading sanity.

[Written by MAL Rewrite]''',
    imageUrl: 'https://cdn.myanimelist.net/images/anime/1935/127974.jpg',
    summaryProperties: {
      'release date': [Icons.calendar_month, '2011-04-06 to 2011-09-14'],
      'episodes': [Icons.tv_sharp, 24],
      'score': [Icons.bar_chart, 9.08]
    },
    tags: [
      'Drama',
      'Sci-fi',
      'Suspense',
      'Psychological',
      'Time Travel',
    ],
    categories: ['c1'],
  ),
  TasteItem(
    id: 't5',
    title: 'Lookism',
    description:
        '''Park Hyung Suk has spent all 17 years of his life at the bottom of the food chain. Short, overweight, and unattractive, he is used to being bullied by his classmates and constantly discriminated against for his looks. In an attempt to escape his biggest bully, Lee Tae Sung, he decides to transfer to Seoul's Jae Won High School, a vocational preparatory school notorious for its liberal education system and carefree students.

Days before his transfer, Hyung Suk wakes to find that he is no longer in his usual chubby body, but is instead in a perfect body! Tall, handsome, and beautifully toned, Hyung Suk has become the ideal version of himself. The only problem is that his original body still lays beside him—and when one body falls asleep, he awakens in the other.

Now possessing two extremely different bodies, Hyung Suk must learn to navigate his new and much more popular life at J High whilst also solving the mystery of where his second, almost superhuman, body came from.

[Written by MAL Rewrite]''',
    imageUrl: 'https://cdn.myanimelist.net/images/manga/2/208866.jpg',
    summaryProperties: {
      'release date': [Icons.calendar_month, '2014-11-20'],
      'chapters': [Icons.library_books, 420],
      'score': [Icons.bar_chart, 7.93]
    },
    tags: [
      'Action',
      'Comedy',
      'Drama',
      'Supernatural',
      'Korean',
    ],
    categories: ['c2'],
  )
];
const List<Category> categoryStarterData = [
  Category(
    id: 'c1',
    title: 'Anime',
    color: Colors.red,
  ),
  Category(
    id: 'c2',
    title: 'WebToon',
    color: Colors.purple,
  ),
  Category(
    id: 'c3',
    title: 'Game',
    color: Colors.blue,
  ),
  Category(
    id: 'c4',
    title: 'Manga',
    color: Colors.cyan,
  ),
  Category(
    id: 'c5',
    title: 'Movie',
    color: Colors.orange,
  ),
  Category(
    id: 'c6',
    title: 'Series',
    color: Colors.yellow,
  ),
  Category(
    id: 'c8',
    title: 'Book',
    color: Colors.green,
  )
];
