//
//  Quiz.swift
//  MyQuizApp
//
//  Created by Alisha on 2021/3/16.
//

import Foundation

struct Quiz {
    var quizImage: String
    var imageText: String
    var answers: [Answer]
}

struct Answer {
    let index: Int
    var option: String
    var answerResult: Int
}

var quizFruitArray = [
    Quiz(quizImage: "banana.png", imageText: "banana", answers: [
        //answerResult如果是正確的就是１、錯誤就是０
            Answer(index: 0, option: "bannana", answerResult: 0),
            Answer(index: 1, option: "banana", answerResult: 1),
            Answer(index: 2, option: "panana", answerResult: 0)
    ]),
    Quiz(quizImage: "cherries.png", imageText: "cherries", answers: [
            Answer(index: 0, option: "cherries", answerResult: 1),
            Answer(index: 1, option: "charres", answerResult: 0),
            Answer(index: 2, option: "cherish", answerResult: 0)
    ]),
    Quiz(quizImage: "grapes.png", imageText: "grapes", answers: [
            Answer(index: 0, option: "grabes", answerResult: 0),
            Answer(index: 1, option: "greips", answerResult: 0),
            Answer(index: 2, option: "grapes", answerResult: 1)
    ]),
    Quiz(quizImage: "kiwi.png", imageText: "kiwi", answers: [
            Answer(index: 0, option: "kiwi", answerResult: 1),
            Answer(index: 1, option: "kiwea", answerResult: 0),
            Answer(index: 2, option: "kiwii", answerResult: 0)
    ]),
    Quiz(quizImage: "lemon.png", imageText: "lemon", answers: [
            Answer(index: 0, option: "lemon", answerResult: 1),
            Answer(index: 1, option: "lemoon", answerResult: 0),
            Answer(index: 2, option: "lemen", answerResult: 0)
    ]),
    Quiz(quizImage: "orange.png", imageText: "orange", answers: [
            Answer(index: 0, option: "orenge", answerResult: 0),
            Answer(index: 1, option: "alrange", answerResult: 0),
            Answer(index: 2, option: "orange", answerResult: 1)
    ]),
    Quiz(quizImage: "peach.png", imageText: "peach", answers: [
            Answer(index: 0, option: "peech", answerResult: 0),
            Answer(index: 1, option: "peach", answerResult: 1),
            Answer(index: 2, option: "pitch", answerResult: 0)
    ]),
    Quiz(quizImage: "pineapple.png", imageText: "pineapple", answers: [
            Answer(index: 0, option: "pineapple", answerResult: 1),
            Answer(index: 1, option: "painapple", answerResult: 0),
            Answer(index: 2, option: "pinneapple", answerResult: 0)
    ]),
    Quiz(quizImage: "strawberry.png", imageText: "strawberry", answers: [
            Answer(index: 0, option: "sdrawberry", answerResult: 0),
            Answer(index: 1, option: "strawbarry", answerResult: 0),
            Answer(index: 2, option: "strawberry", answerResult: 1)
    ]),
    Quiz(quizImage: "watermelon.png", imageText: "watermelon", answers: [
            Answer(index: 0, option: "watermelon", answerResult: 1),
            Answer(index: 1, option: "watermalen", answerResult: 0),
            Answer(index: 2, option: "watermellon", answerResult: 0)
    ])
]

var quizVegetableArray = [
    Quiz(quizImage: "cabbage.png", imageText: "cabbage", answers: [
        //answerResult如果是正確的就是１、錯誤就是０
            Answer(index: 0, option: "cabbage", answerResult: 1),
            Answer(index: 1, option: "cebbage", answerResult: 0),
            Answer(index: 2, option: "cabage", answerResult: 0)
    ]),
    Quiz(quizImage: "carrot.png", imageText: "carrot", answers: [
            Answer(index: 0, option: "caroat", answerResult: 0),
            Answer(index: 1, option: "carrot", answerResult: 1),
            Answer(index: 2, option: "karrot", answerResult: 0)
    ]),
    Quiz(quizImage: "corn.png", imageText: "corn", answers: [
            Answer(index: 0, option: "korn", answerResult: 0),
            Answer(index: 1, option: "coarn", answerResult: 0),
            Answer(index: 2, option: "corn", answerResult: 1)
    ]),
    Quiz(quizImage: "eggplant.png", imageText: "eggplant", answers: [
            Answer(index: 0, option: "eggplant", answerResult: 1),
            Answer(index: 1, option: "eggplaint", answerResult: 0),
            Answer(index: 2, option: "eggplane", answerResult: 0)
    ]),
    Quiz(quizImage: "garlic.png", imageText: "garlic", answers: [
            Answer(index: 0, option: "galic", answerResult: 0),
            Answer(index: 1, option: "garlick", answerResult: 0),
            Answer(index: 2, option: "garlic", answerResult: 1)
    ]),
    Quiz(quizImage: "mushroom.png", imageText: "mushroom", answers: [
            Answer(index: 0, option: "mushzoom", answerResult: 0),
            Answer(index: 1, option: "mushroom", answerResult: 1),
            Answer(index: 2, option: "mashroom", answerResult: 0)
    ]),
    Quiz(quizImage: "onion.png", imageText: "onion", answers: [
            Answer(index: 0, option: "onien", answerResult: 0),
            Answer(index: 1, option: "onion", answerResult: 1),
            Answer(index: 2, option: "olinen", answerResult: 0)
    ]),
    Quiz(quizImage: "peas.png", imageText: "peas", answers: [
            Answer(index: 0, option: "peace", answerResult: 0),
            Answer(index: 1, option: "pees", answerResult: 0),
            Answer(index: 2, option: "peas", answerResult: 1)
    ]),
    Quiz(quizImage: "potato.png", imageText: "potato", answers: [
            Answer(index: 0, option: "potado", answerResult: 0),
            Answer(index: 1, option: "poteto", answerResult: 0),
            Answer(index: 2, option: "potato", answerResult: 1)
    ]),
    Quiz(quizImage: "pumpkin.png", imageText: "pumpkin", answers: [
            Answer(index: 0, option: "pumpkin", answerResult: 1),
            Answer(index: 1, option: "pumpking", answerResult: 0),
            Answer(index: 2, option: "pumpckin", answerResult: 0)
    ])
]

var quizAnimalArray = [
    Quiz(quizImage: "bear.png", imageText: "bear", answers: [
        //answerResult如果是正確的就是１、錯誤就是０
            Answer(index: 0, option: "bare", answerResult: 0),
            Answer(index: 1, option: "bear", answerResult: 1),
            Answer(index: 2, option: "beer", answerResult: 0)
    ]),
    Quiz(quizImage: "chicken.png", imageText: "chicken", answers: [
            Answer(index: 0, option: "chiken", answerResult: 0),
            Answer(index: 1, option: "chicken", answerResult: 1),
            Answer(index: 2, option: "treeken", answerResult: 0)
    ]),
    Quiz(quizImage: "elephant.png", imageText: "elephant", answers: [
            Answer(index: 0, option: "elefent", answerResult: 0),
            Answer(index: 1, option: "elephent", answerResult: 0),
            Answer(index: 2, option: "elephant", answerResult: 1)
    ]),
    Quiz(quizImage: "fox.png", imageText: "fox", answers: [
            Answer(index: 0, option: "fox", answerResult: 1),
            Answer(index: 1, option: "fax", answerResult: 0),
            Answer(index: 2, option: "foks", answerResult: 0)
    ]),
    Quiz(quizImage: "giraffe.png", imageText: "giraffe", answers: [
            Answer(index: 0, option: "giraffe", answerResult: 1),
            Answer(index: 1, option: "greaffe", answerResult: 0),
            Answer(index: 2, option: "graffe", answerResult: 0)
    ]),
    Quiz(quizImage: "goat.png", imageText: "goat", answers: [
            Answer(index: 0, option: "gote", answerResult: 0),
            Answer(index: 1, option: "goat", answerResult: 1),
            Answer(index: 2, option: "goalt", answerResult: 0)
    ]),
    Quiz(quizImage: "hedgehog.png", imageText: "hedgehog", answers: [
            Answer(index: 0, option: "hedgehog", answerResult: 1),
            Answer(index: 1, option: "hagehog", answerResult: 0),
            Answer(index: 2, option: "haeghog", answerResult: 0)
    ]),
    Quiz(quizImage: "horse.png", imageText: "horse", answers: [
            Answer(index: 0, option: "horse", answerResult: 1),
            Answer(index: 1, option: "hoarse", answerResult: 0),
            Answer(index: 2, option: "hors", answerResult: 0)
    ]),
    Quiz(quizImage: "owl.png", imageText: "owl", answers: [
            Answer(index: 0, option: "owl", answerResult: 1),
            Answer(index: 1, option: "oil", answerResult: 0),
            Answer(index: 2, option: "oal", answerResult: 0)
    ]),
    Quiz(quizImage: "zebra.png", imageText: "zebra", answers: [
            Answer(index: 0, option: "zebra", answerResult: 1),
            Answer(index: 1, option: "zebro", answerResult: 0),
            Answer(index: 2, option: "zibra", answerResult: 0)
    ])
]
