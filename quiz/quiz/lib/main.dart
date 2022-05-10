// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'app.dart';
import 'model/question.dart';
import 'model/quizMaster.dart';

void main() {
  final quizMaster = QuizMaster([
    Question(
        "Who named Gandhiji the father of the nation?",
        [
          "Jawahar Lal Nehru",
          "Subhash Chandra Bose",
          "Sardar Patel",
          "Rabindra Nath Tagore"
        ],
        1),
    Question(
        "Who was the commander in chief of HSRA?",
        [
          "Bhagat Singh",
          "Asfakulla Khan",
          "Khudiram Bose",
          "Chandrashekar Azad"
        ],
        3),
    Question(
        "Who formed INA?",
        [
          "Subhash Chandra Bose",
          "Mohan Singh",
          "Rashbihari Bose",
          "Bhagat Singh"
        ],
        2),
    Question(
        "Who said 'Freedom is my birth, and I shall have it'",
        [
          "Balgangadhar Tilak",
          "Gopal Krishna Gokhle",
          "Mahatma Gandhi",
          "Sardar Patel"
        ],
        0),
    Question(
        "Who was the president of constituent assembly of India that drafter our consititution?",
        [
          "B.R. Ambedkar",
          "Rajendra Prasad",
          "Radhakrishnan",
          "Madan Mohan Malviya"
        ],
        1),
    Question(
        "Which revolutionary pair imortalized 'sarforsi ki tammana' ?",
        [
          "Chandrashekar Azad & Bhagat Singh",
          "Bismil and Asfaqulla Khan",
          "Subash Bose & Khudriam Bose",
          "Rajguru & Sukhdev"
        ],
        1),
    Question(
        "Who among revolutionary died by his own bullet?",
        [
          "Ramprasad Bismil",
          "Bhagwati Charan Vohra",
          "Chandrashekar Azad",
          "Subhash Chandra Bose"
        ],
        2),
    Question(
        "Which among these have never been India's PM?",
        [
          "Guljari Lal Nanda",
          "Fakrudin Ali Ahmed",
          "Lal Bhadur Shastri",
          "Chandrashekhar"
        ],
        1),
    Question(
        "Who was the first Paramveer Chakra Awardee?",
        ["General Manikshaw", "KM Karippa", "Abdul Hamid", "Somnath Sharma"],
        3),
    Question(
        "Which is the highest medal of valour in peace time?",
        [
          "Paramveer Chakra",
          "Mahaveer Chakra",
          "Ashoka Chakra",
          "Arjuna Award"
        ],
        2),
    Question("Which of these is a language?",
        ["Ironman", "Angola", "Groot", "Marvel"], 2),
    Question("Which among them don't have super power?",
        ["Spiderman", "Thor", "Batman", "Superman"], 2),
    Question(
        "Which of these have not gained their superpower by a failed experiment?",
        ["Superman", "Flash", "Hulk", "Spiderman"],
        0),
    Question("Which of these is an belong to a different group?",
        ["Superman", "Spiderman", "Batman", "Flash"], 1),
    Question("What is the real name of Superman?",
        ["Bruce Wane", "Peter Parker", "Oliver Queen", "Kent Clark"], 3),
    Question("Who is the oldest constumed comic superhero?",
        ["Batman", "Spiderman", "Phantom", "Wondewoman"], 2)
  ]);

  runApp(App(quizMaster));
}
