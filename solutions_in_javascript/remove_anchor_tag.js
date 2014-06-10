// Complete the function/method so that it returns the url with anything after the anchor (#) removed.

// Examples:

// # returns 'www.codewars.com'
// remove_url_anchor('www.codewars.com#about')

// # returns 'www.codewars.com?page=1' 
// remove_url_anchor('www.codewars.com?page=1')


function removeURLanchor(url) {
  return url.split('#')[0];
}