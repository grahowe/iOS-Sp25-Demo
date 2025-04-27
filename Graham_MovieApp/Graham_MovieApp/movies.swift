//
//  Movies.swift
//  Graham_MovieApp
//
//  Created by Owen Graham on 4/27/25.
//

import Foundation

struct Movies {
    var genre:String
    var list_Array: [MovieList]
}

struct MovieList {
    var movieName:String
    var movieImage:String
    var movieInfo:String
}

let moviesArray: [Movies] = [
    Movies(
        genre: "Action",
        list_Array: [
            MovieList(movieName: "The A-Team", movieImage: "ateam", movieInfo: "Four US military veterans are on the run from the government for a crime they didn't commit."),
            MovieList(movieName: "Taken", movieImage: "taken", movieInfo: "A man goes on an international rescue mission to get his daughter back from human traffickers."),
            MovieList(movieName: "Midnight Express", movieImage: "midnight", movieInfo: "Billy Hayes, a young American, is stuck in a harsh Turkish prison and must escape."),
            MovieList(movieName: "The Karate Kid", movieImage: "karate", movieInfo: "A young boy moves to a new neighborhood and learns the art of karate from a wise karate master."),
            MovieList(movieName: "Twister", movieImage: "twister", movieInfo: "A team of storm chasers race against the clock and a rival team of chasers to chase and scientifically document Oklahoma tornadoes.")
        ]
    ),
    
    Movies(
        genre: "Family",
        list_Array: [
            MovieList(movieName: "Alpha and Omega", movieImage: "alphaomega", movieInfo: "Two wolves from rival packs are relocated and must find their way home."),
            MovieList(movieName: "Cloudy with a Chance of Meatballs", movieImage: "cloudy", movieInfo: "A scientist develops a machine that turns water and weather patterns into giant pieces of food."),
            MovieList(movieName: "Cars", movieImage: "cars", movieInfo: "A well-known racecar with a good life gets stuck in a small town where he learns to value the simple things in life."),
            MovieList(movieName: "Joseph", movieImage: "joseph", movieInfo: "Originally a musical, this story follows the biblical story of Joseph, the boy who reads dreams, and his coat of many colors."),
            MovieList(movieName: "Balto", movieImage: "balto", movieInfo: "An outcast wolf-dog makes a treacherous journey through the harsh Alaskan wilderness to return life-saving medicine to his village.")
        ]
    ),
    
    Movies(
        genre: "Sci-Fi",
        list_Array: [
            MovieList(movieName: "Short Circuit", movieImage: "short", movieInfo: "An experimental government robot experiences the everyday life of being a human."),
            MovieList(movieName: "Robocop", movieImage: "robocop", movieInfo: "A young police officer is ruthlessly killed by a notorious gang but gets brought back to life as an advanced crime-fighting cyborg."),
            MovieList(movieName: "Terminator", movieImage: "terminator", movieInfo: "A robot from the future travels back in time to kill Sarah Connor."),
            MovieList(movieName: "Alita: Battle Angel", movieImage: "alita", movieInfo: "A cyborg girl with a mysterious past goes on a dystopian journey to discover who she is."),
            MovieList(movieName: "The Giver", movieImage: "giver", movieInfo: "A boy is blessed with a gift by a mysterious man that lets him see the diversity of life in a society of sameness.")
        ]
    ),
    
    Movies(
        genre: "Classics",
        list_Array: [
            MovieList(movieName: "True Grit", movieImage: "grit", movieInfo: "A bounty hunter is hired by a young woman to hunt down the posse that killed her father."),
            MovieList(movieName: "Gone with the Wind", movieImage: "wind", movieInfo: "A Civil War tale of a young woman who navigates life through war and peace as well as love and hardships."),
            MovieList(movieName: "A Christmas Carol", movieImage: "carol", movieInfo: "Ebeneezer Scrooge is visited by three ghosts who teach him the importance of Christmas."),
            MovieList(movieName: "Cinderella", movieImage: "cinderella", movieInfo: "A poor girl is given a chance to meet a prince at a ball. After losing her shoe, the prince goes out in search of her."),
            MovieList(movieName: "Willy Wonka", movieImage: "wonka", movieInfo: "A boy finds a golden ticket to Willy Wonka's chocolate factory and goes on a fantastic tour through the world of Wonka.")
        ]
    )
]

