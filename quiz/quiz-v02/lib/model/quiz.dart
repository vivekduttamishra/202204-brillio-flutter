
import 'question.dart';

enum Response{
  none, 
  correct, 
  incorrect, 
}

class Quiz{
  List<Question> questions=[];
  List<int> answers=[];

  Quiz(this.questions){
    
    for(var i=0;i<questions.length;i++){
      answers.add(-1); //-1 means not answered yet
    }
  }

  Question getQuestion(int index){
      return questions[index];
  }

  bool registerResponse(int questionIndex, int answerIndex){
    answers[questionIndex]=answerIndex;
    return questions[questionIndex].correctAnswerIndex==answerIndex; //this will give the result
  }

  Response checkResponse(int questionIndex){
      if(answers[questionIndex]==-1) {
        return Response.none;
      } else if(answers[questionIndex]==questions[questionIndex].correctAnswerIndex) {
        return Response.correct;
      } else {
        return Response.incorrect;
      }
  }

}