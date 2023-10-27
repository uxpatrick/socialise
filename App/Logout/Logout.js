function changeTopic()
    { 
        let isChecked = false
        const checkbox = document.querySelector("#checkbox-choose-source")
        const checkbox_wrapper = document.querySelector("#checkbox-choose-wrapper")
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
    document.body.innerHTML +="<div class='logout-popup-background' style='color:purple;width:100%;height:100%;background:rgba(0,0,0,0.30);backdrop-filter:blur(11px);position:fixed;top:0;margin:0;padding:0;box-sizing:border-box;display:grid;align-items:center;justify-content:center;'><div class='logout-popup' style='background:#282A37;width:400px;padding:10px;padding-top:40px;padding-bottom:40px;'><div class='logout-popup-header' style='text-align:center;font-family:ReemKufiFun;font-size:16px;font-style:normal;color:white;margin:10px 0px 15px 0px;'><h1 style='font-family: Reem Kufi Fun;font-weight:600 !important;'>Chcesz się wylogować?</h1></div><div class='logout-popup-buttons' style='display:grid;grid-template-columns:30%30%;align-items:center;justify-content:center;'><a href='../App/Logout/logout.php' style='text-decoration:none;color:#FFF;border-radius:46px;text-align:center;font-family:Outfit;text-align:center;background-color:#32A8CD;font-size:10px;font-style:normal;margin:10px;font-weight:300;margin-top:0px;line-height:normal;border:1px solid #32A8CD;'><h2 class='logout-button-yes'style='font-weight:300'>Tak</h2></a><a onclick='closePopup()'style='cursor:pointer;text-decoration:none;color:#FFF;border-radius:46px;border:1px solid #32A8CD;color:white;text-align:center;font-family:Outfit;text-align:center;font-size:10px;margin:10px;margin-top:0px;font-style:normal;font-weight:300!important;line-height:normal;'><h2 class='logout-button-no'style='font-weight:300'>Nie</h2></a></div></div></div>"
    popUp = document.querySelector('.logout-popup-background')
    window.addEventListener('click',(e)=>{e.target.style.color=='purple' && closePopup()})
}
function closePopup() {
    document.body.style.overflowY='scroll';
    popUp.remove(); 
    changeTopic();
}
