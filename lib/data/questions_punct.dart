import '../model/option.dart';
import '../model/question.dart';

final questionsPunct = [
  Question(
    text: 'Саня клоун?',
    options: [
      const Option(code: 'A', text: 'ТАк', isCorrect: false),
      const Option(code: 'B', text: 'Так', isCorrect: true),
      const Option(code: 'C', text: '100%', isCorrect: false),
      const Option(code: 'D', text: 'ні(я далбайоб)', isCorrect: false),
    ],
    solution: 'Саня клоун і це факт',
  ),
  Question(
    text: 'Олег топовий програміст?',
    options: [
      const Option(code: 'A', text: 'Ні', isCorrect: false),
      const Option(code: 'B', text: 'Ні', isCorrect: false),
      const Option(code: 'C', text: 'Ні', isCorrect: false),
      const Option(code: 'D', text: 'Ні', isCorrect: true),
    ],
    solution: 'Олег говнокодєр',
  ),
  Question(
    text: 'пакмен топова гра?',
    options: [
      const Option(code: 'A', text: 'Да', isCorrect: false),
      const Option(code: 'B', text: 'Да', isCorrect: false),
      const Option(code: 'C', text: 'Так', isCorrect: false),
      const Option(code: 'D', text: 'Точняк', isCorrect: true),
    ],
    solution: 'Пакмен це топ',
  ),
  Question(
    text: 'Люблю черешні',
    options: [
      const Option(code: 'A', text: '4.48 Psychosis', isCorrect: true),
      const Option(code: 'B', text: 'Hamilton', isCorrect: false),
      const Option(code: 'C', text: "Much Ado About Nothing", isCorrect: false),
      const Option(code: 'D', text: "The Birthday Party", isCorrect: false),
    ],
    solution: 'Черешні топчик',
  ),
  Question(
    text: 'Клуюніка це шик',
    options: [
      const Option(code: 'A', text: '2005', isCorrect: false),
      const Option(code: 'B', text: '2008', isCorrect: false),
      const Option(code: 'C', text: '2007', isCorrect: true),
      const Option(code: 'D', text: '2006', isCorrect: false),
    ],
    solution: 'так',
  ),
  Question(
    text: 'Ясуо мейнери найкращі люди в світі',
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
    solution: 'ЯСУО МЕЙН',
  ),
  Question(
    text: 'what',
    options: [
      const Option(code: 'A', text: 'Brazil', isCorrect: false),
      const Option(code: 'B', text: 'Germany', isCorrect: false),
      const Option(code: 'C', text: 'Italy', isCorrect: false),
      const Option(code: 'D', text: 'Uruguay', isCorrect: true),
    ],
    solution: 'fucks',
  ),
];
