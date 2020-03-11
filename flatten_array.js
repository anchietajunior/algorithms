/*
Write some code, that will flatten an array of arbitrarily 
nested arrays of integers into a flat array of integers. 
e.g. [[1,2,[3]],4] -> [1,2,3,4].

Your solution should be a link to a gist on gist.github.com 
with your implementation.

When writing this code, you can use any language you're 
comfortable with. The code must be well tested and documented. 
Please include unit tests and any documentation you feel is 
necessary. In general, treat the quality of the code as if 
it was ready to ship to production.

Try to avoid using language defined methods like Ruby's 
Array#flatten or JavaScript's Array.flat.
*/

function flatten(array) {
  //create new array
  let new_arr = [];
  //create function to iterate the array
  function iterateArray(array) {
    //for loop
    for (let i = 0; i < array.length; i++) {
      //if it is an array, recurse with iterate function
      //else, add the element to the new array
      if (Array.isArray(array[i])) {
        iterateArray(array[i]);
      } else {
        new_arr.push(array[i]);
      }
    }
  }
  iterateArray(array);
  //return the new array
  return new_arr;
}

result1 = flatten([[1,2,[3]],4, [[5, 6], 7], [8, [9, 10]]]);
