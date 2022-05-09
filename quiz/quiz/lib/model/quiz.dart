
import 'question.dart';

class Quiz{
  List<Question> questions;
  
  Quiz(this.questions);

  getQuestion(int index){
    return questions[index].question;
  }

  recordResponse(int questionIndex, int answerIndex){
    // mark it it your code
  }
  

}