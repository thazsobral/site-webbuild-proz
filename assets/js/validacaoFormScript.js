const inputsForm = document.getElementsByClassName("form-input");

for (let index = 0; index < inputsForm.length; index++) {
    inputsForm[index].addEventListener("blur", e => {
        e.preventDefault();
        if(inputsForm[index].value == "") {
            inputsForm[index].style.backgroundColor = "red";
        } else {
            inputsForm[index].style.backgroundColor = "#fff";
            inputsForm[index].setAttribute.placeh = "default";
        }
    });
}