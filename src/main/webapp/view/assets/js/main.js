function closeModal(){
    document.getElementById("modal").style.display = "none";
}

function dangky(){
    document.getElementById("modal").style.display = "flex";
    document.getElementById("form__dangky").style.display =  "block";
    document.getElementById("form__dangnhap").style.display =  "none";
}

function dangnhap(){
    document.getElementById("modal").style.display = "flex";
    document.getElementById("form__dangnhap").style.display =  "block";
    document.getElementById("form__dangky").style.display =  "none";
}