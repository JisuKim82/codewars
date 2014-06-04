// Description:

// Complete the squareSum method so that it squares each number passed 
// into it and then sums the results together.

// For example:

// squareSum([1,2,2]) # should return 9

function squareSum(arr){
  var squared = arr.map(function(x){return x*x;});
  var sum = 0;
  for(var i=0; i<squared.length; i++){
    sum = sum+squared[i];  
  }
  return sum;
}