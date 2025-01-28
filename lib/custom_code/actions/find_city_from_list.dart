// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:string_similarity/string_similarity.dart';

Future<String> findCityFromList(
  List<String> listOfCity,
  String fullAddress,
) async {
  // return the most similar city name from list based on device full address
// Split the full address into individual words
  List<String> addressWords = fullAddress.split(" ");

  // Initialize variables to store the most similar city name and its similarity score
  String mostSimilarCity = "";
  double highestSimilarityScore = 0;

  // Loop through the list of cities and calculate the similarity score for each city name
  for (String city in listOfCity) {
    double similarityScore = 0;

    // Split the city name into individual words
    List<String> cityWords = city.split(" ");

    // Loop through each word in the full address and calculate the similarity score with each word in the city name
    for (String addressWord in addressWords) {
      for (String cityWord in cityWords) {
        double wordSimilarityScore = addressWord.similarityTo(cityWord);

        // If the similarity score for the current word pair is higher than the previous highest score, update the highest score and most similar city name
        if (wordSimilarityScore > similarityScore) {
          similarityScore = wordSimilarityScore;
        }
      }
    }

    // If the similarity score for the current city name is higher than the previous highest score, update the highest score and most similar city name
    if (similarityScore > highestSimilarityScore) {
      highestSimilarityScore = similarityScore;
      mostSimilarCity = city;
    }
  }

  // Return the most similar city name
  return mostSimilarCity;
}
