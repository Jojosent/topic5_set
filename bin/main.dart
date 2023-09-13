import 'dart:io';
import 'dart:math';

// Task 1
// void main() {
//   Set<int> set1 = {1, 2, 3, 4, 5};
//   Set<int> set2 = {2, 4, 5};

//   bool isSubset = isSubsetOf(set2, set1);

//   if (isSubset) {
//     print("set2 is a subset of set1");
//   } else {
//     print("set2 is not a subset of set1");
//   }
// }

// bool isSubsetOf<T>(Set<T> setA, Set<T> setB) {
//   for (var element in setA) {
//     if (!setB.contains(element)) {
//       return false;
//     }
//   }
//   return true;
// }

// Task 2
// void main() {
//   Set<int> set1 = {1, 2, 3, 4, 5};
//   set1.clear();
//   print(set1);
// }

// Task 3
// void main() {
//   Set<int> set1 = {11, 12, 3, 24, 5};
//   List<int> list1 = set1.toList();
//   list1.sort();
//   print(list1[0]);
//   print(list1[list1.length - 1]);
// }

// Task 4
// void main() {
//   Set<int> set1 = {11, 12, 3, 24, 5};
//   List<int> list1 = set1.toList();
//   print(list1.length);
// }

// Task 5
// void main() {
//   Set<int> set1 = {1, 2, 3, 4, 5};
//   int n = int.parse(stdin.readLineSync()!);

//   bool isSubset = isSubsetOf(n, set1);

//   if (isSubset) {
//     print("set2 is a subset of set1");
//   } else {
//     print("set2 is not a subset of set1");
//   }
// }

// bool isSubsetOf<T>(int n, Set<T> setB) {
//   if (!setB.contains(n)) {
//     return false;
//   }
//   return true;
// }

// Task 6
// void main() {
//   Set<int> set1 = {1, 2, 3, 6, 5};
//   Set<int> set2 = {6, 7, 8, 9, 10};

//   bool haveNoCommonElements = set1.intersection(set2).isNotEmpty;

//   if (haveNoCommonElements) {
//     print("intersected");
//   } else {
//     print("not intersected");
//   }
// }

// Task 7
// void main() {
//   Set<int> set1 = {1, 2, 3, 4, 5};
//   Set<int> set2 = {4, 5, 6, 7, 8};

//   Set<int> elementsNotInSet1 = set1.difference(set2);
//   Set<int> elementsNotInSet2 = set2.difference(set1);

//   List<int> elementsList = elementsNotInSet1.toList();
//   List<int> elementsList2 = elementsNotInSet2.toList();

//   print(
//       "Elements in set1 that are not in set2 and \nElements in set2 that are not in set1:");
//   elementsList.forEach((element) => print(element));
//   elementsList2.forEach((element) => print(element));
// }

// Task 8
// void main() {
//   Set<int> set1 = {4, 2, 3, 4, 5};
//   Set<int> set2 = {4, 5, 6, 7, 8};

//   set2.removeAll(set1);

//   print("Set1 after removing the intersection with Set2:");
//   set2.forEach((element) => print(element));
// }

// Task 9
// void main() {
//   List<String> inputStrings = [
//     "This is a sample sentence.",
//     "Another sentence with some words.",
//     "Sample sentence with duplicate words.",
//   ];

//   Set<String> uniqueWords = Set<String>();
//   Map<String, int> wordFrequencies = {};

//   for (String inputString in inputStrings) {
//     List<String> words = inputString.split(RegExp(r'\s+|\p{P}+'));

//     for (String word in words) {
//       String cleanedWord = word.toLowerCase();

//       if (!uniqueWords.contains(cleanedWord)) {
//         uniqueWords.add(cleanedWord);
//       }

//       if (wordFrequencies.containsKey(cleanedWord)) {
//         wordFrequencies[cleanedWord] += 1;
//       } else {
//         wordFrequencies[cleanedWord] = 1;
//       }
//     }
//   }

//   print("Unique words and their frequencies:");
//   uniqueWords.forEach((word) {
//     print("$word: ${wordFrequencies[word]}");
//   });
// }

// Task 10
// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];
//   int targetSum = 10;

//   print("Pairs with sum $targetSum:");
//   findPairsWithSum(numbers, targetSum);
// }

// void findPairsWithSum(List<int> numbers, int targetSum) {
//   Set<int> seenNumbers = Set<int>();

//   for (int number in numbers) {
//     var complement = targetSum - number;

//     if (seenNumbers.contains(complement)) {
//       print("$number + $complement = $targetSum");
//     }

//     seenNumbers.add(number);
//   }
// }

// Tasl 11
// String findLongestCommonPrefix(List<String> strings) {
//   if (strings.isEmpty) {
//     return "";
//   }

//   String shortestString = strings.reduce((a, b) => a.length < b.length ? a : b);

//   for (int i = 0; i < shortestString.length; i++) {
//     Set<String> charSet = Set<String>();

//     for (String str in strings) {
//       charSet.add(str[i]);
//     }

//     if (charSet.length == 1) {
//       continue;
//     } else {
//       return shortestString.substring(0, i);
//     }
//   }

//   return shortestString;
// }

// void main() {
//   List<String> strings = ["flower", "flour", "flowing", "flock"];
//   String longestCommonPrefix = findLongestCommonPrefix(strings);

//   if (longestCommonPrefix.isNotEmpty) {
//     print("Longest Common Prefix: $longestCommonPrefix");
//   } else {
//     print("No common prefix found.");
//   }
// }

// Task 12
// void main() {
//   List<int> numbers = [1, 5, 3, 7, 2, 8, 4];

//   try {
//     MaxProductPair maxPair = findMaxProductPair(numbers);
//     int product = maxPair.first * maxPair.second;

//     print(
//         "Numbers with maximum product: ${maxPair.first} and ${maxPair.second}");
//     print("Maximum product: $product");
//   } catch (e) {
//     print(e);
//   }
// }

// class MaxProductPair {
//   int first;
//   int second;

//   MaxProductPair(this.first, this.second);
// }

// MaxProductPair findMaxProductPair(List<int> numbers) {
//   if (numbers.length < 2) {
//     throw ArgumentError("List must contain at least two numbers.");
//   }

//   int largest = numbers[0];
//   int secondLargest = numbers[1];

//   for (int i = 2; i < numbers.length; i++) {
//     if (numbers[i] > largest) {
//       secondLargest = largest;
//       largest = numbers[i];
//     } else if (numbers[i] > secondLargest) {
//       secondLargest = numbers[i];
//     }
//   }

//   return MaxProductPair(largest, secondLargest);
// }

// Task 13
// void main() {
//   Set<int> firstSet = {1, 2, 3, 4, 5};
//   Set<int> secondSet = {3, 4, 5, 6, 7};

//   Set<int> missingInSecondSet = firstSet.difference(secondSet);

//   Set<int> missingInFirstSet = secondSet.difference(firstSet);

//   print("Missing numbers in the second set compared to the first: $missingInSecondSet");
//   print("Missing numbers in the first set compared to the second: $missingInFirstSet");
// }

// Task 14
// void main() {
//   List<String> inputStrings = [
//     "listen",
//     "silent",
//     "hello",
//     "world",
//     "act",
//     "cat",
//     "god",
//     "dog",
//   ];

//   Map<String, List<String>> anagramGroups = {};

//   for (String str in inputStrings) {
//     String sortedStr = sortString(str);

//     if (!anagramGroups.containsKey(sortedStr)) {
//       anagramGroups[sortedStr] = [];
//     }

//     anagramGroups[sortedStr].add(str);
//   }

//   // Print anagram groups
//   anagramGroups.values.forEach((anagrams) {
//     if (anagrams.length > 1) {
//       print("Anagram Group: ${anagrams.join(', ')}");
//     }
//   });
// }

// String sortString(String str) {
//   List<String> charList = str.split('');
//   charList.sort();
//   return charList.join();
// }

// Task 15
// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
//   int targetSum = 10;

//   List<List<int>> result = findCombinations(numbers, 3, targetSum);

//   print("Unique combinations of 3 numbers that add up to $targetSum:");
//   result.forEach((combination) {
//     print(combination);
//   });
// }

// List<List<int>> findCombinations(List<int> numbers, int k, int target) {
//   List<List<int>> result = [];
//   List<int> current = [];
//   numbers.sort();

//   void backtrack(int start, int k, int target) {
//     if (k == 0 && target == 0) {
//       result.add(List.from(current));
//       return;
//     }

//     for (int i = start; i < numbers.length; i++) {
//       if (i > start && numbers[i] == numbers[i - 1]) {
//         continue;
//         }

//       if (numbers[i] > target) {
//         break;
//       }

//       current.add(numbers[i]);
//       backtrack(i + 1, k - 1, target - numbers[i]);
//       current.removeLast();
//     }
//   }

//   backtrack(0, k, target);
//   return result;
// }

// Task 16
// void main() {
//   List<String> inputList = ["apple", "banana", "cherry", "apple", "date", "banana"];

//   List<String> uniqueList = removeDuplicates(inputList);

//   print("Original list: $inputList");
//   print("List with duplicates removed: $uniqueList");
// }

// List<String> removeDuplicates(List<String> inputList) {
//   Set<String> uniqueSet = Set<String>.from(inputList);

//   List<String> uniqueList = uniqueSet.toList();

//   return uniqueList;
// }

// Task 17
// void main() {
//   const Set<int> a = {1, 3};
//   const Set<int> b = {3, 5};

//   Set<int> result = symmetricDifference(a, b);

//   print("Set of elements that belong to either a or b, but not both: $result");

//   int sum = result.reduce((value, element) => value + element);
//   print("Sum of elements in the resulting set: $sum");
// }

// Set<int> symmetricDifference(Set<int> setA, Set<int> setB) {
//   Set<int> result = Set<int>.from(setA);
//   result.addAll(setB);

//   Set<int> intersection = setA.intersection(setB);
//   result.removeAll(intersection);

//   return result;
// }
