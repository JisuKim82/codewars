// Simple sort, but this time sort regardless of upper / lower case. 
// So the input of

// [ "Hello", "there", "I'm", "fine"]
// is translated to
// ["fine", "Hello", "I'm", "there" ]

function sortArray2 (arr){
  var lowercased = arr.map(function(x){return x.toLowerCase();}).sort();
  var result =[];

  function findIndex(word){
    for (var i=0; i<arr.length; i++){
      if (word == arr[i].toLowerCase()){
        return i;
      }
    }
  }
  
  for(var j=0; j<lowercased.length; j++){
    result.push(arr[findIndex(lowercased[j])]);
  }
  return result;
}

sortArray2([ "Hello", "there", "I'm", "fine"]);