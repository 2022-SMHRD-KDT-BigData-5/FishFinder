window.onload = function() { document.body.classList.remove('is-preload'); }
window.ontouchmove = function() { return false; }
window.onorientationchange = function() { document.body.scrollTop = 0; }


// 갤러리 선택
var fileInput = document.getElementById("images");

images.addEventListener('change',function(e){ // 값이 변경될때 호출 되는 이벤트 리스너
    // 가져온거 확인(콘솔창)
    console.log(e.target.files[0])
    // URL.createObjectURL()을 사용해서 위에서 받은 file정보를 넣어줌
    const file = URL.createObjectURL(e.target.files[0]);
    document.querySelector("#show-picture").src = file;
})

// 카메라 선택
var takePicture = document.getElementById("inputFile");

inputFile.addEventListener('change', function(e){
    const camera = URL.createObjectURL(e.target.files[0]);
    document.querySelector('#show-picture').src = camera;
})