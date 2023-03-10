import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_share/flutter_share.dart';

class EnglishQuotes extends StatefulWidget {
  const EnglishQuotes({Key? key}) : super(key: key);

  @override
  State<EnglishQuotes> createState() => _EnglishQuotesState();
}

class _EnglishQuotesState extends State<EnglishQuotes> {
  final key = new GlobalKey<ScaffoldState>();
  List<String> quotes = [
    "Here's wishing you and your family peace, joy good health, wealth, success, and prosperity. May you be surrounded by goodness. Happy Dashain 2080.",
    "I wish you a very successful and prosperous happy Dashain 2080. May this Dashain bring you good health and money.",
    "Three people were asking your mobile number with me I didn’t give your number but I gave your address to them. They are coming to your home in this Dashain. They are Sukha, Shanti, and Samriddhi. Please welcome them. Happy Dashain 2080 too you and your family.",
    "Ram kills Ravan & comes back to people he loves, Durga mata kills Mahishasur & prepares to go back to her heavenly abode, May these good over evil stories inspire you towards your own victories in life.",
    "It’s so pleasant Sun is smiling for You, Trees are dancing for You, Birds are singing for You, But I’m Wishing You a Many Many Special BIJAYA DASHAMI for You.",
    "May Mata Durga Devi in Dashain festival bless your life With countless blessings of happiness Joy and good fortune.!!!",
    "May the Divine of Dashain remove the darkness of ignorance and sorrow and shower wisdom, good health, peace and prosperity in your future… With Best Wishes… HAPPY DASHAIN.",
    "Moments that have been attached to my heart, forever……. Make me Miss You, even more, this Dashain Hope this Dashain brings in Good Fortune & Abounding Happiness for you! HAPPY BIJAYADASHAMI.",
    "Wishing you all the happiness of the world. The beauty and calmness of nature. And the health of a turtle. Happy Dashain 2080 my love.",
    "A Cup of sweet hello, A full plate of good wishes, a spoon of sweet smiles, and A slice of great success Especially for you my sweetheart. Wishing you a very happy Dashain 2080.",
    "Before the Golden Sun Rise, let me decorate each of the Rays with Wishes of Success, prosperity, and Happiness for you and your family. Happy Dashain 2080.",
    "May God Ram and Godesses Durga always bless you and your family with health, success, and prosperity. Happy Dashain 2080.",
    "I wish you good wishes and healthy life in this Dashain.",
    "Everything you do makes me happier, and even more magical is this festival. Happy Dashain, with all my heart and all of my love.",
    "Thank you, Mom and Dad, it’s the best gift I could ever get to have you both as parents, and I’ll always be grateful. Happy Dashain to you.",
    "We wish you a star-lit Dashain, warm as the glow of a diya, filled with the love of friends and family. Have a blessed celebration.",
    "We have many things to be proud of and be happy. It’s such a happy time for Dashain to remind you how much love and life mean to me. Happy Dashain.",
    "In this Dashain festival, I want you to know that how much important you are for me and for the loved ones.The feelings are always there, no matter what I forget to notice, do, or say. With all my love Happy Dashain.",
    "A relaxed mind, a peaceful soul, a joyful spirit, a healthy body and heart full of love, and many more blessings. May you have all these everyday. Happy Dashain 2080.",
    "Fortunate is the one who has learned to admire, but not to envy. Good wishes for a joyous Vijaya Dashami, with plenty of peace and prosperity. Happy Vijaya Dashami 2080.",
    "A time for celebration, A time for victory of good over bad, A time when the world sees the  example of power of good.  Let us continue the same true spirit. Happy Vijaya Dashami 2080.",
    "We always work for a better tomorrow. But when This comes, instead of enjoying, I again think of a better tomorrow. Let’s have a better today. Have a Good Vijayadashami Festival 2080!!",
    "Before the Golden Sun Rise, let me decorate each of the Rays with Wishes of Success, prosperity, and Happiness for you and your family. Happy Dashain 2079.",
    "Truth always leads to victory. Happy Vijaya Dashami to you and your family.",
    "If I realize our qualities, I become smart. If I know our weaknesses, I become intelligent. And if I am aware of our qualities as well as our weaknesses, I become successful. Have a Good Vijayadashami Festival 2080!!",
    "On the auspicious occasion of Dashain, I wish you the beginning of new hopes, higher aspirations, and great possibilities. Happy Dashain 2080!",
    "You only live once? It’s false… U live every day, U only die once. Have a Good Vijayadashami Festival 2080!!",
    "The greatest value of having good people around U is not what U get from them. But the better man U become by being with them. Have a Good Vijayadashami Festival 2080!!",
    "Today I will do what others will not, so tomorrow I can do what others can not. Have a Good Vijayadashami Festival 2080!!",
    "When I do not understand the lesson at the right time. Life makes us understand the same lesson at the wrong time. Have a Good Vijayadashami Festival 2080!!"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 69, 0, 1),
        title: Text(
          "ENGLISH DASHAIN STATUS",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Trajan Pro'),
        ),
      ),
      backgroundColor: Color.fromRGBO(211, 211, 211, 5),
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Card(
                color: Colors.white,
                child: ListTile(
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: quotes[index]));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Text Copied!!",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Color.fromRGBO(255, 69, 0, 1),
                      ),
                    );
                  },
                  title: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      quotes[index],
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.3,
                        fontFamily: 'poppins',
                        color: Color.fromRGBO(255, 69, 0, 1),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
