// ignore_for_file: constant_identifier_names

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Which is the fastest bird in the world?",
    "options": ['Bald Eagle', 'Humming Bird', 'Raven', 'Peregrine Felcon'],
    "answer": 3,
  },
  {
    "id": 2,
    "question": "When google release Flutter?",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer": 2,
  },
  {
    "id": 3,
    "question": "What is the hottest continent on Earth?",
    "options": ['Africa', 'Asia', 'Europe', 'South America'],
    "answer": 0,
  },
  {
    "id": 4,
    "question": "Which vitamin is the only one that you will not find in an egg?",
    "options": ['Vitamin A', 'Vitamin C', 'Vitamin B12', 'Vitamin D'],
    "answer": 1,
  },
  {
    "id": 5,
    "question": "The World Largest desert is ??",
    "options": ['Thar', 'Sahara', 'Sonoran', 'Kalahari'],
    "answer": 1,
  },
];
