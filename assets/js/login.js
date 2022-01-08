$(function(){
  
    // 開啟 Modal 彈跳視窗
    $("button.btn_modal").on("click", function(){
      $("div.overlay").fadeIn();
    });
    
    // 關閉 Modal
    $("button.btn_modal_close").on("click", function(){
      $("div.overlay").fadeOut();
    });
    
  });


// Get the modal
    var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
