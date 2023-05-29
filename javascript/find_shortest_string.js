function findShortestString(arr) {
  let shortest = arr[0]

  arr.forEach(elem => {
    elem.length < shortest.length ? shortest = elem : null
  });
  return shortest
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 'a'");
  console.log("=>", findShortestString(['aaa', 'a', 'bb', 'ccc']));

  console.log("");

  console.log("Expecting: 'hi'");
  console.log("=>", findShortestString(['cat', 'hi', 'dog', 'an']));

  console.log("");

  console.log("Expecting: 'lily'");
  console.log("=>", findShortestString(['flower', 'juniper', 'lily', 'dadelion']));

  // BENCHMARK HERE


}
i = 1000
const start = Date.now()
while (i > 0) {

  findShortestString(['aaa', 'a', 'bb'])
  // console.log(i)
  i--
}
const avg = (Date.now() - start) / 1000
console.log('benchmark is', avg)
module.exports = findShortestString;

// Please add your pseudocode to this file
// And a written explanation of your solution
