

// ignore_for_file: curly_braces_in_flow_control_structures

import 'question.dart';
import 'quiz.dart';

class QuizMaster{
  
  List<Question> masterDatabase;  //set of all questions. Not all will be asked in every quiz
  QuizMaster(this.masterDatabase);


  //below properties are initialized late on start call
  late Quiz quiz;     //A quiz currently running. it is created on start
  int currentQuestion=-1;  //current question in the quiz
  int totalAnswered=0;   //total question anwered so far
  int totalQuestions=0;   //total questions in the quiz
  int totalCorrectAnswer=0;


  

  start(int questions){

    //step 1. shuffle questions to randomize it  
     masterDatabase.shuffle();

     //step2. we will pick questiosn based on user choice or total question whichever is lesser
     totalQuestions= masterDatabase.length>questions? questions: masterDatabase.length;

     //step3. select the questions
     var selectedQuestion= masterDatabase.take(totalQuestions).toList();
     
     //step4. create the quiz object with selected question
     quiz=Quiz(selectedQuestion);

     //Step 5. set a few book keeping variables
     currentQuestion=-1;
     totalAnswered=0;
     totalCorrectAnswer=0;
  }   

  Question getNextQuestion(){
    
    if(currentQuestion<quiz.questions.length-1)
        currentQuestion++;

    return quiz.getQuestion(currentQuestion);
      
  }

  Question getPreviousQuestion(){
    
    if(currentQuestion>0)
        currentQuestion --;
      return quiz.getQuestion(currentQuestion);
    }
      
  Question getQuestion(int index){

    if(index>=0 && index<quiz.questions.length){
      currentQuestion=index;
      return quiz.getQuestion(index);
    }
    else
    {
      throw Exception('invalid quesiton index $index');
    }
  }

  bool recordResponse(int answerIndex){
    
    if(quiz.answers[currentQuestion]==-1){
        totalAnswered++;
        quiz.registerResponse(currentQuestion, answerIndex);
        if(quiz.questions[currentQuestion].correctAnswerIndex==answerIndex)
          totalCorrectAnswer++;
        return true;
    } else
      return false;
    
  }

  bool get isQuizOver{
    return totalAnswered==quiz.questions.length;
  }

  checkResponse(){
    quiz.checkResponse(currentQuestion);
  }


}