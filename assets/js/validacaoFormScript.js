const inputsForm = document.getElementsByClassName("form-input");

for (let index = 0; index < inputsForm.length; index++) {
    inputsForm[index].addEventListener("blur", e => {
        e.preventDefault();
        if(inputsForm[index].value == "") {
            inputsForm[index].style.boxShadow = "0 0 15px rgb(255, 0, 0)";
        } else {
            inputsForm[index].style.boxShadow = "none";
        }
    });
}