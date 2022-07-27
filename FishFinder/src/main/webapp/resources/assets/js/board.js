document.querySelector('.board_selectMy').style.display = 'none';

// 전체
document.getElementsByClassName(".boardAll").addEventListener('click', showAll);
function showAll(){
  document.querySelector('.board_selectMy').style.display = 'none';
  document.querySelector('.board_selectAll').style.display = 'block';
}
// 내가 쓴 글
document.getElementsByClassName(".boardMy").addEventListener('click', showMy);
function showMy(){
  document.querySelector('.board_selectAll').style.display = 'none';
  document.querySelector('.board_selectMy').style.display = 'block';
}