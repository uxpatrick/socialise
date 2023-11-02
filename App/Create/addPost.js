function changeTopic()
    { 
        let isChecked = false
        const checkbox = document.querySelector("#checkbox-choose-source")
        const checkbox_wrapper = document.querySelector(".choose-paragraph-label")
        const chat_first_option = document.querySelector(".first-option")
        const chat_second_option = document.querySelector(".second-option")
        const checkbox_inside = document.querySelector("#checkbox-choose-inside")
        checkbox_wrapper.addEventListener('click', () => {
            if(!isChecked){
                checkbox_inside.classList.add('checkbox-active')
                chat_second_option.style.color = "#32A8CD"
                chat_second_option.style.transition = "0.2s"
                chat_first_option.style.color = "white"
                isChecked = true
            } else {
                checkbox_inside.classList.remove('checkbox-active')
                chat_second_option.style.color = "white"
                chat_first_option.style.transition = "0.2s"
                chat_first_option.style.color = "#32A8CD"
                isChecked = false
            }
        })
    }
changeTopic();
function logoutPopup() {
    document.body.style.overflowY='hidden';
    document.body.innerHTML +=`<div class='logout-popup-background' style='color:purple;width:100%;height:100%;background:rgba(0,0,0,0.30);backdrop-filter:blur(11px);position:fixed;top:0;margin:0;padding:0;box-sizing:border-box;display:grid;align-items:center;justify-content:center;'>
    <div class='logout-popup' style='text-align: center;background:#282A37;width:400px;padding:10px;padding-top:40px;padding-bottom:40px;'>
       <div class='logout-popup-header' style='text-align:center;font-family:ReemKufiFun;font-size:16px;font-style:normal;color:white;margin:10px 0px 15px 0px;'>
          <h1 style='text-align:center;font-family: Reem Kufi Fun;font-weight:600 !important;'>Utwórz nowy post</h1>
       </div>
       <form method=post action=>
       <textarea name="post-content" style="width:80%;margin:10px;padding:10px;border-radius: 20px;background: #323544;color:white;width:50%;"></textarea>
       <input name="post-image" type=file style="color:white;">
       <input type=submit value="Dodaj post" >
       </form>
    </div>
 </div>`
    popUp = document.querySelector('.logout-popup-background')
    window.addEventListener('click',(e)=>{e.target.style.color=='purple' && closePopup() && changeTopic()})
}
function closePopup() {
    document.body.style.overflowY='scroll';
    popUp.remove(); 
    changeTopic();
}
