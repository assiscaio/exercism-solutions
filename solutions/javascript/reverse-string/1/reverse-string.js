//
// This is only a SKELETON file for the 'Reverse String' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const reverseString = (str) => {
  let index_start = 0
  let nova_str = ""
  for (let index = str.length -1; index >= 0; index--) {
    nova_str += str[index]
    index_start++
  }
  return nova_str
};
