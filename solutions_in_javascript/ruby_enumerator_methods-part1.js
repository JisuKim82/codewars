// data = [
//   {age: 40, sex: 'm'},
//   {age: 24, sex: 'f'},
//   {age: 56, sex: 'm'},
//   {age: 45, sex: 'm'},
//   {age: 23, sex: 'f'} 
// ]

// Finish the provided method so that it returns true if all of the 
// items matching the sex value have ages greater than the value provided.

// check_ages?(data, :f, 22) # should be true
// check_ages?(data, :m, 50) # should be false

var data = [
  {age: 40, sex: 'm'},
  {age: 24, sex: 'f'},
  {age: 56, sex: 'm'},
  {age: 45, sex: 'm'},
  {age: 23, sex: 'f'} 
];

function checkAges(data,gender,age){
  for(var i = 0; i<data.length; i++){
    if (data[i].sex==gender && data[i].age<=age){
      return false;
    }
  }
  return true;
}