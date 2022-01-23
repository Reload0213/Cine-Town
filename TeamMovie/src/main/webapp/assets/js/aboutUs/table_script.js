// ENTER INFO INTO SEARCH BAR TO SEE FUNCTION. CLICK RANK TO SEE RANKING. PAGINATION ON BOTTOM.

// DATATABLES.NET

$(document).ready(function(){
  
jQuery( function () {
  $('#fantasyTable').DataTable( {
    info: false,
    lengthChange : false,
    responsive: true,
    columnDefs: [
        { responsivePriority: 1, targets: 0 },
        { responsivePriority: 2, targets: -1 },
        { responsivePriority: 3, targets: -2 },
{
      "targets": [ 1, 2, 3 ],
      "orderable": false,
      
    }
    ]
  } );
} );
  
  });


  $( document ).ready(function() {
    $.extend( $.fn.dataTable.defaults, { 
         language: {
            url: "http://cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Korean.json"
         } 
      }); 
    $("#table").DataTable({
    });
  });