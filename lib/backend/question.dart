class Question {
  int _id = 0;
  String _question;
  String _answerA;
  String _answerB;
  String _answerC;
  String _answerD;
  int _corectAnswer;
  int _currentquestion;

  Question(this._question, this._answerA, this._answerB, this._answerC,
      this._answerD, this._corectAnswer);
  int get id => _id;
  String get question => _question;
  String get answerA => _answerA;
  String get answerB => _answerB;
  String get answerC => _answerC;
  String get answerD => _answerD;
  int get corectAnswer => _corectAnswer;

  set question(String question) {
    if (question.length <= 200) {
      _question = question;
    }
  }

  set answerA(String answerA) {
    if (answerA.length <= 200) {
      _answerA = answerA;
    }
  }

  set answerB(String answerB) {
    if (answerB.length <= 200) {
      _answerB = answerB;
    }
  }

  set answerC(String answerC) {
    if (answerC.length <= 200) {
      _answerC = answerC;
    }
  }

  set answerD(String answerD) {
    if (answerD.length <= 200) {
      _answerD = answerD;
    }
  }

  set corectAnswer(int corectAnswer) {
    if (corectAnswer >= 0 && corectAnswer < 5) {
      _corectAnswer = corectAnswer;
    }
  }
}
