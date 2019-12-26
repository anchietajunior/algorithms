// Binary search in Javascript

function binary_search(list, target) {
  console.log("STARTED BINARY SEARCH!");
  let lower = 0;
  let higher = list.length - 1;
  while (lower <= higher) {
    let mid = Math.floor((lower + higher) / 2);
    if (list[mid] === target) {
      console.log(`FOUND THE ITEM, this is ${list[mid]}`);
      return;
    } else if (target < list[mid]) {
      higher = list[mid - 1];
    } else {
      lower = list[mid + 1];
    }
  }
  return "DID NOT FOUND THE TARGET";
}

numbers = [
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20
];

binary_search(numbers, 16);
