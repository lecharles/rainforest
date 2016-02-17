// THE JQUERY WAY OF DOING AJAX:
$(document).on('ready page:load', function() {
  $('#search-form').submit(function(event) {
    event.preventDefault();
    var searchValue = $('#search').val();

    // THE GET.SCRIPT WAY:
    $.getScript('/products?search=' + searchValue);

    // THE SHORTHAND WAY:
    // $.get('/products?search=' + searchValue)
    //  .done(function(data){
    //    console.log(data);
    //    $('#products').html(data);
    //  });

    // THE GENERAL WAY:
    //  $.ajax({
    //   url: '/products?search=' + searchValue,
    //   type: 'GET',
    //   dataType: 'html'
    // }).done(function(data){
    //   $('#products').html(data);
    // });
  });

  $(window).scroll(function() {
     if ($(window).scrollTop() > $(document).height() - $(window).height() - 50) {
       return alert('near bottom');
     }
   });
   
});

// THE VANILLA JAVASCRIPT WAY OF DOING AJAX:
// $(document).on('ready page:load', function() {
//   function display_search_results() {
//     // readyState === 4 means that the asynchronous request completed successfully
//     if (this.readyState === 4) {
//       console.log(this);
//       document.getElementById('products').innerHTML = this.responseText;
//     }
//   }
//
//   var form = document.getElementById('search-form');
//   form.addEventListener('submit', function(event) {
//     event.preventDefault();
//     var searchValue = document.getElementById('search').value;
//
//     var xhr = new XMLHttpRequest();
//     xhr.onload = display_search_results;
//     xhr.open('GET', '/products?search=' + searchValue, true);
//     xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");
//     xhr.send();
//   });
// });
