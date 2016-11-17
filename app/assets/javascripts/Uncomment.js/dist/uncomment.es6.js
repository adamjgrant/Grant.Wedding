"use strict";

// A
// ====

// Add two numbers
var add = function add(num1, num2) {
  return num1 + num2;
};

/*  Add one event listener to each of an array of DOM elements
 *  dependencies: [
 *    eachInArray()
 *  ]
 */
var addEventListenersToArray = function addEventListenersToArray(arr, event, fn) {
  eachInArray(arr, function (arrItem) {
    arrItem.addEventListener(event, fn.bind(undefined, arrItem));
  });
};

// E
// ====

var eachInArray = function eachInArray(arr, fn) {
  arr = Array.from(arr);

  var arrItem = arr[0],
      remainingArray = arr.splice(1);

  fn(arrItem);

  if (remainingArray.length) {
    eachInArray(remainingArray, fn);
  } else {
    return;
  }
};

// R
// ====

/* Remove classes from array of DOM elements
 *  dependencies: [
 *    eachInArray()
 *  ]
 */
var removeClassesFromArray = function removeClassesFromArray(arr, className) {
  eachInArray(arr, function (arrItem) {
    arrItem.classList.remove(className);
  });
};