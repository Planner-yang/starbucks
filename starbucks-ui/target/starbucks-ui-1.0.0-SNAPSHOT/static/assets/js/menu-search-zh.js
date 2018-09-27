$(document).ready(function() {
  $.get('/assets/search/menu-index-zh.json').done(function(indexs){
    $.get('/assets/search/menu-source-zh.json').done(function(products) {
      var lunrSearchEngine = lunr.init(indexs);

      var onSearchInput = function(searchValue) {
        var searchResults = lunrSearchEngine.search(searchValue).map(function(result) { 
          return products[result.ref];
        }).filter(Boolean);
        var results = searchResults;
        var category = location.pathname;
        // may not make sense if the url contains only one level category, but this won't affect the sort algorithm below
        var upperCategory = category.split('/').slice(0, -2).join('/');
        var showPopularResults = searchResults.length === 0; 
        var empty = '';
        var appendString = '';

        if (showPopularResults) {
          if (searchValue === '') {
            empty = '<div class="tag">' + SEARCH_POPULAR + '</div>';
          } else {
            empty = SEARCH_EMPTY;
          }

          results = Object.keys(products).map(function(key) {
            return products[key];
          }).filter(function(product) {
            return product.popular === 'true';
          });
        }

        var finalResults = results.sort(function(a, b) {
          return b.id.indexOf(category) + b.id.indexOf(upperCategory) - a.id.indexOf(category) - a.id.indexOf(upperCategory);
        });

        if (showPopularResults) {
          finalResults = finalResults.slice(0, 4);
        }

        for (var i = 0; i < finalResults.length; i++) {
          var product = finalResults[i];
          appendString += '<li>';
          appendString += '  <a class="overlay-close thumbnail" href="' + product.url + '">';
          appendString += '    <div class="preview circle" style="background-image: url('+ product.preview +')"></div>';
          appendString += '    <strong>'+ product.title +'</strong>';
          appendString += '  </a>';
          appendString += '</li>';
        }

        $('#menu-search-results').html(appendString);
        $('#menu-search-empty').html(empty);
      }

      $('#menu-search-input').bind('input', function(e) {
        onSearchInput(e.target.value);
      });

      onSearchInput(''); // init default popular products
    });
  });
})
