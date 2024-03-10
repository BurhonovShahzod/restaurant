class Meal {
  int? id;
  String? name;
  String? imageUrl;
  String? cost;
  String? details;
  String? type;
  String? time;
  int? ingCount;
  int? bannerColor;

  Meal(
      {this.id,
      this.name,
      this.details,
      this.imageUrl,
      this.ingCount,
      this.time,
      this.bannerColor,
      this.cost,
      this.type});

  static List<Meal> mealsRu = [
    Meal(
        id: 1,
        name: "Шашлык бараньих ребрышек",
        imageUrl: "images/maskgroup.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFF2DFE1,
        cost: "9000 sum",
        type: "Кавказская",
        details:
            "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. "
            "На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники "
            "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
            "Будем готовить барань и ребрышки. Не те кусочки, где больше всего мяса, а те кусочк и, которые остались после налета саранчи"),
    Meal(
        id: 2,
        name: "Шашлык ",
        imageUrl: "images/meal2.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFDCC7B1,
        cost: "15 000 sum",
        details:
            "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. "
            "На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники "
            "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
            "Будем готовить барань и ребрышки. Не те кусочки, где больше всего мяса, а те кусочк и, которые остались после налета саранчи",
        type: "Кавказская2"),
    Meal(
        id: 3,
        name: "Шашлык ",
        imageUrl: "images/meal3.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFFFC5A8,
        cost: "10 000 sum",
        details:
            "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. "
            "На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники "
            "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
            "Будем готовить барань и ребрышки. Не те кусочки, где больше всего мяса, а те кусочк и, которые остались после налета саранчи",
        type: "Кавказская"),
    Meal(
        id: 4,
        name: "Шашлык ",
        imageUrl: "images/meal4.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFF71C3A1,
        cost: "18 000 sum",
        details:
            "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. "
            "На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники "
            "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
            "Будем готовить барань и ребрышки. Не те кусочки, где больше всего мяса, а те кусочк и, которые остались после налета саранчи",
        type: "Кавказская 3"),
    Meal(
        id: 5,
        name: "Шашлык ",
        imageUrl: "images/meal5.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFA8B6FF,
        details:
            "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. "
            "На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники "
            "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
            "Будем готовить барань и ребрышки. Не те кусочки, где больше всего мяса, а те кусочк и, которые остались после налета саранчи",
        cost: "25 000 sum",
        type: "Кавказская 4"),
    Meal(
        id: 6,
        name: "Шашлык ",
        imageUrl: "images/meal6.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFFFE7A8,
        cost: "12 000 sum",
        details:
            "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. "
            "На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники "
            "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
            "Будем готовить барань и ребрышки. Не те кусочки, где больше всего мяса, а те кусочк и, которые остались после налета саранчи",
        type: "Кавказская 5"),
    Meal(
        id: 7,
        name: "Шашлык ",
        imageUrl: "images/meal7.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFCEA8FF,
        cost: "23 000 sum",
        details:
            "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. "
            "На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники "
            "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
            "Будем готовить барань и ребрышки. Не те кусочки, где больше всего мяса, а те кусочк и, которые остались после налета саранчи",
        type: "Кавказская 6"),
    Meal(
        id: 8,
        name: "Шашлык ",
        imageUrl: "images/meal8.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFA8FFB1,
        cost: "44 000 sum",
        details:
            "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. "
            "На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники "
            "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
            "Будем готовить барань и ребрышки. Не те кусочки, где больше всего мяса, а те кусочк и, которые остались после налета саранчи",
        type: "Кавказская 7"),
    Meal(
        id: 8,
        name: "Шашлык ",
        imageUrl: "images/meal8.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFFFA8A8,
        cost: "56 000 sum",
        details:
            "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. "
            "На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники "
            "\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. "
            "Будем готовить барань и ребрышки. Не те кусочки, где больше всего мяса, а те кусочк и, которые остались после налета саранчи",
        type: "Кавказская 8"),
  ];
  static List<Meal> mealsUz = [
    Meal(
        id: 1,
        name: "Qo'zi qovurg'asi kabobi",
        imageUrl: "images/maskgroup.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFF2DFE1,
        cost: "9000 sum",
        type: "Кавказская",
        details:
        "Menga nima deyishmasin, eng mazali kabob qo‘zi go‘shtidan chiqadi. Haqiqatan ham bitta minus bor. "
            "Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma uni kabobchilardan sotib oladi."
            "\n\nFarqi yoʻq, agar qoʻlingiz toʻgʻri joydan oʻsgan boʻlsa, bu uçurtmalar bizga qoldirgan narsadan kabob yasashingiz mumkin."
            "Biz qo'zichoq va qovurg'a pishiramiz. Eng ko'p go'shtli bo'laklarni emas, balki chigirtka hujumidan keyin qolgan bo'laklarni pishiramiz."),
    Meal(
        id: 2,
        name: "Shashlik 1",
        imageUrl: "images/meal2.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFDCC7B1,
        cost: "15 000 sum",
        details:
        "Menga nima deyishmasin, eng mazali kabob qo‘zi go‘shtidan chiqadi. Haqiqatan ham bitta minus bor. "
            "Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma uni kabobchilardan sotib oladi."
            "\n\nFarqi yoʻq, agar qoʻlingiz toʻgʻri joydan oʻsgan boʻlsa, bu uçurtmalar bizga qoldirgan narsadan kabob yasashingiz mumkin."
            "Biz qo'zichoq va qovurg'a pishiramiz. Eng ko'p go'shtli bo'laklarni emas, balki chigirtka hujumidan keyin qolgan bo'laklarni pishiramiz.",


        type: "Кавказская2"

    ),
    Meal(
        id: 3,
        name: "Shashlik 2",
        imageUrl: "images/meal3.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFFFC5A8,
        cost: "10 000 sum",
        details:
        "Menga nima deyishmasin, eng mazali kabob qo‘zi go‘shtidan chiqadi. Haqiqatan ham bitta minus bor. "
            "Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma uni kabobchilardan sotib oladi."
            "\n\nFarqi yoʻq, agar qoʻlingiz toʻgʻri joydan oʻsgan boʻlsa, bu uçurtmalar bizga qoldirgan narsadan kabob yasashingiz mumkin."
            "Biz qo'zichoq va qovurg'a pishiramiz. Eng ko'p go'shtli bo'laklarni emas, balki chigirtka hujumidan keyin qolgan bo'laklarni pishiramiz.",
        type: "Кавказская"),
    Meal(
        id: 4,
        name: "Shashlik 3",
        imageUrl: "images/meal4.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFF71C3A1,
        cost: "18 000 sum",
        details:
        "Menga nima deyishmasin, eng mazali kabob qo‘zi go‘shtidan chiqadi. Haqiqatan ham bitta minus bor. "
            "Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma uni kabobchilardan sotib oladi."
            "\n\nFarqi yoʻq, agar qoʻlingiz toʻgʻri joydan oʻsgan boʻlsa, bu uçurtmalar bizga qoldirgan narsadan kabob yasashingiz mumkin."
            "Biz qo'zichoq va qovurg'a pishiramiz. Eng ko'p go'shtli bo'laklarni emas, balki chigirtka hujumidan keyin qolgan bo'laklarni pishiramiz.",
        type: "Кавказская 3"),
    Meal(
        id: 5,
        name: "Шашлык 4",
        imageUrl: "images/meal5.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFA8B6FF,
        details:
        "Menga nima deyishmasin, eng mazali kabob qo‘zi go‘shtidan chiqadi. Haqiqatan ham bitta minus bor. "
            "Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma uni kabobchilardan sotib oladi."
            "\n\nFarqi yoʻq, agar qoʻlingiz toʻgʻri joydan oʻsgan boʻlsa, bu uçurtmalar bizga qoldirgan narsadan kabob yasashingiz mumkin."
            "Biz qo'zichoq va qovurg'a pishiramiz. Eng ko'p go'shtli bo'laklarni emas, balki chigirtka hujumidan keyin qolgan bo'laklarni pishiramiz.",
        type: "Кавказская 4"),
    Meal(
        id: 6,
        name: "Shashlik 6",
        imageUrl: "images/meal6.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFFFE7A8,
        cost: "12 000 sum",
        details:
        "Menga nima deyishmasin, eng mazali kabob qo‘zi go‘shtidan chiqadi. Haqiqatan ham bitta minus bor. "
            "Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma uni kabobchilardan sotib oladi."
            "\n\nFarqi yoʻq, agar qoʻlingiz toʻgʻri joydan oʻsgan boʻlsa, bu uçurtmalar bizga qoldirgan narsadan kabob yasashingiz mumkin."
            "Biz qo'zichoq va qovurg'a pishiramiz. Eng ko'p go'shtli bo'laklarni emas, balki chigirtka hujumidan keyin qolgan bo'laklarni pishiramiz.",
        type: "Кавказская 5"),
    Meal(
        id: 7,
        name: "Shashlik 7",
        imageUrl: "images/meal7.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFCEA8FF,
        cost: "23 000 sum",
        details:
        "Menga nima deyishmasin, eng mazali kabob qo‘zi go‘shtidan chiqadi. Haqiqatan ham bitta minus bor. "
            "Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma uni kabobchilardan sotib oladi."
            "\n\nFarqi yoʻq, agar qoʻlingiz toʻgʻri joydan oʻsgan boʻlsa, bu uçurtmalar bizga qoldirgan narsadan kabob yasashingiz mumkin."
            "Biz qo'zichoq va qovurg'a pishiramiz. Eng ko'p go'shtli bo'laklarni emas, balki chigirtka hujumidan keyin qolgan bo'laklarni pishiramiz.",
        type: "Кавказская 6"),
    Meal(
        id: 8,
        name: "Shashlik 8",
        imageUrl: "images/meal8.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFA8FFB1,
        cost: "44 000 sum",
        details:
        "Menga nima deyishmasin, eng mazali kabob qo‘zi go‘shtidan chiqadi. Haqiqatan ham bitta minus bor. "
            "Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma uni kabobchilardan sotib oladi."
            "\n\nFarqi yoʻq, agar qoʻlingiz toʻgʻri joydan oʻsgan boʻlsa, bu uçurtmalar bizga qoldirgan narsadan kabob yasashingiz mumkin."
            "Biz qo'zichoq va qovurg'a pishiramiz. Eng ko'p go'shtli bo'laklarni emas, balki chigirtka hujumidan keyin qolgan bo'laklarni pishiramiz.",
        type: "Кавказская 7"),
    Meal(
        id: 8,
        name: "Shashlik 9",
        imageUrl: "images/meal8.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFFFA8A8,
        cost: "56 000 sum",
        details:
        "Menga nima deyishmasin, eng mazali kabob qo‘zi go‘shtidan chiqadi. Haqiqatan ham bitta minus bor. "
            "Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma uni kabobchilardan sotib oladi."
            "\n\nFarqi yoʻq, agar qoʻlingiz toʻgʻri joydan oʻsgan boʻlsa, bu uçurtmalar bizga qoldirgan narsadan kabob yasashingiz mumkin."
            "Biz qo'zichoq va qovurg'a pishiramiz. Eng ko'p go'shtli bo'laklarni emas, balki chigirtka hujumidan keyin qolgan bo'laklarni pishiramiz.",
        type: "Кавказская 8"),
  ];
  static List<Meal> mealsEn = [
    Meal(
        id: 1,
        name: "Lamb ribs kebab",
        imageUrl: "images/maskgroup.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFF2DFE1,
        cost: "9000 sum",
        type: "Кавказская",
        details:
        "No matter what they tell me, the most delicious kebab comes from lamb. There is really one minus. "
            "It’s impossible to buy normal lamb at the market; everyone buys it from standing kebab makers "
            "\n\nIt doesn't matter, if your hands grow from the right place, you can make a kebab from what these kites left us."
        "We will cook lamb and ribs. Not those pieces with the most meat, but those pieces that remain after the locust attack"),
    Meal(
        id: 2,
        name: "Shashlik ingliz ",
        imageUrl: "images/meal2.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFDCC7B1,
        cost: "15 000 sum",
        details:
        "No matter what they tell me, the most delicious kebab comes from lamb. There is really one minus. "
            "It’s impossible to buy normal lamb at the market; everyone buys it from standing kebab makers "
            "\n\nIt doesn't matter, if your hands grow from the right place, you can make a kebab from what these kites left us."
            "We will cook lamb and ribs. Not those pieces with the most meat, but those pieces that remain after the locust attack",

        type: "Кавказская2"),
    Meal(
        id: 3,
        name: "Shashlik ",
        imageUrl: "images/meal3.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFFFC5A8,
        cost: "10 000 sum",
        details:
        "No matter what they tell me, the most delicious kebab comes from lamb. There is really one minus. "
            "It’s impossible to buy normal lamb at the market; everyone buys it from standing kebab makers "
            "\n\nIt doesn't matter, if your hands grow from the right place, you can make a kebab from what these kites left us."
            "We will cook lamb and ribs. Not those pieces with the most meat, but those pieces that remain after the locust attack",
        type: "Кавказская"),
    Meal(
        id: 4,
        name: "Shashlik ",
        imageUrl: "images/meal4.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFF71C3A1,
        cost: "18 000 sum",
        details:
        "No matter what they tell me, the most delicious kebab comes from lamb. There is really one minus. "
            "It’s impossible to buy normal lamb at the market; everyone buys it from standing kebab makers "
            "\n\nIt doesn't matter, if your hands grow from the right place, you can make a kebab from what these kites left us."
            "We will cook lamb and ribs. Not those pieces with the most meat, but those pieces that remain after the locust attack",
        type: "Кавказская 3"),
    Meal(
        id: 5,
        name: "Shashlik ",
        imageUrl: "images/meal5.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFA8B6FF,
        details:
        "No matter what they tell me, the most delicious kebab comes from lamb. There is really one minus. "
            "It’s impossible to buy normal lamb at the market; everyone buys it from standing kebab makers "
            "\n\nIt doesn't matter, if your hands grow from the right place, you can make a kebab from what these kites left us."
            "We will cook lamb and ribs. Not those pieces with the most meat, but those pieces that remain after the locust attack",
        cost: "25 000 sum",
        type: "Кавказская 4"),
    Meal(
        id: 6,
        name: "Shashlik ",
        imageUrl: "images/meal6.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFFFE7A8,
        cost: "12 000 sum",
        details:
        "No matter what they tell me, the most delicious kebab comes from lamb. There is really one minus. "
            "It’s impossible to buy normal lamb at the market; everyone buys it from standing kebab makers "
            "\n\nIt doesn't matter, if your hands grow from the right place, you can make a kebab from what these kites left us."
            "We will cook lamb and ribs. Not those pieces with the most meat, but those pieces that remain after the locust attack",
        type: "Кавказская 5"),
    Meal(
        id: 7,
        name: "Shashlik ",
        imageUrl: "images/meal7.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFCEA8FF,
        cost: "23 000 sum",
        details:
        "No matter what they tell me, the most delicious kebab comes from lamb. There is really one minus. "
            "It’s impossible to buy normal lamb at the market; everyone buys it from standing kebab makers "
            "\n\nIt doesn't matter, if your hands grow from the right place, you can make a kebab from what these kites left us."
            "We will cook lamb and ribs. Not those pieces with the most meat, but those pieces that remain after the locust attack",
        type: "Кавказская 6"),
    Meal(
        id: 8,
        name: "Shashlik ",
        imageUrl: "images/meal8.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFA8FFB1,
        cost: "44 000 sum",
        details:
        "No matter what they tell me, the most delicious kebab comes from lamb. There is really one minus. "
            "It’s impossible to buy normal lamb at the market; everyone buys it from standing kebab makers "
            "\n\nIt doesn't matter, if your hands grow from the right place, you can make a kebab from what these kites left us."
            "We will cook lamb and ribs. Not those pieces with the most meat, but those pieces that remain after the locust attack",
        type: "Кавказская 7"),
    Meal(
        id: 8,
        name: "Shashlik ",
        imageUrl: "images/meal8.png",
        time: "15 min",
        ingCount: 5,
        bannerColor: 0xFFFFA8A8,
        cost: "56 000 sum",
        details:
        "No matter what they tell me, the most delicious kebab comes from lamb. There is really one minus. "
            "It’s impossible to buy normal lamb at the market; everyone buys it from standing kebab makers "
            "\n\nIt doesn't matter, if your hands grow from the right place, you can make a kebab from what these kites left us."
            "We will cook lamb and ribs. Not those pieces with the most meat, but those pieces that remain after the locust attack",
        type: "Кавказская 8"),
  ];
}
