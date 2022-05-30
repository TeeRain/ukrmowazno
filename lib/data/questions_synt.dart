import '../model/option.dart';
import '../model/question.dart';

final questionsSynt = [
  Question(
    text: 'Which planet is the hottest in the solar system?',
    options: [
      const Option(code: 'A', text: 'Earth', isCorrect: false),
      const Option(code: 'B', text: 'Venus', isCorrect: true),
      const Option(code: 'C', text: 'Jupiter', isCorrect: false),
      const Option(code: 'D', text: 'Saturn', isCorrect: false),
    ],
  ),
  Question(
    text: 'How many molecules of oxygen does ozone have?',
    options: [
      const Option(code: 'A', text: '1', isCorrect: false),
      const Option(code: 'B', text: '2', isCorrect: false),
      const Option(code: 'C', text: '5', isCorrect: false),
      const Option(code: 'D', text: '3', isCorrect: true),
    ],
  ),
  Question(
    text: 'What is the symbol for potassium?',
    options: [
      const Option(code: 'A', text: 'N', isCorrect: false),
      const Option(code: 'B', text: 'S', isCorrect: false),
      const Option(code: 'C', text: 'P', isCorrect: false),
      const Option(code: 'D', text: 'K', isCorrect: true),
    ],
  ),
  Question(
    text:
        'Which of these plays was famously first performed posthumously after the playwright committed suicide?',
    options: [
      const Option(code: 'A', text: '4.48 Psychosis', isCorrect: true),
      const Option(code: 'B', text: 'Hamilton', isCorrect: false),
      const Option(code: 'C', text: "Much Ado About Nothing", isCorrect: false),
      const Option(code: 'D', text: "The Birthday Party", isCorrect: false),
    ],
  ),
  Question(
    text: 'What year was the very first model of the iPhone released?',
    options: [
      const Option(code: 'A', text: '2005', isCorrect: false),
      const Option(code: 'B', text: '2008', isCorrect: false),
      const Option(code: 'C', text: '2007', isCorrect: true),
      const Option(code: 'D', text: '2006', isCorrect: false),
    ],
  ),
  Question(
    text: ' Which element is said to keep bones strong?',
    options: [
      const Option(code: 'A', text: 'Carbon', isCorrect: false),
      const Option(code: 'B', text: 'Oxygen', isCorrect: false),
      const Option(code: 'C', text: 'Calcium', isCorrect: true),
      const Option(
        code: 'D',
        text: 'Pottasium',
        isCorrect: false,
      ),
    ],
  ),
  Question(
    text: 'What country won the very first FIFA World Cup in 1930?',
    options: [
      const Option(code: 'A', text: 'Brazil', isCorrect: false),
      const Option(code: 'B', text: 'Germany', isCorrect: false),
      const Option(code: 'C', text: 'Italy', isCorrect: false),
      const Option(code: 'D', text: 'Uruguay', isCorrect: true),
    ],
  ),
];
