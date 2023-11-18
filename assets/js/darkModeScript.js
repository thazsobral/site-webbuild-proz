const elementBody = document.querySelector("body");
const elementDarkModeEnabled = document.getElementById("btn-darkmode");
let darkModeEnabled = false;

elementDarkModeEnabled.addEventListener("click", (e) => {
    e.preventDefault();
    if (localStorage.getItem("dark") === "true") {
        changeTheme(elementBody, "false");
    } else if (localStorage.getItem("dark") === "false") {
        changeTheme(elementBody, "true");
    } else {
        changeTheme(elementBody, "true");
    };
});

function changeTheme(element, enabled) {
    element.classList.toggle("dark");
    darkModeEnabled = !darkModeEnabled;
    localStorage.setItem("dark", enabled)
}

if(localStorage.getItem("dark") === "true") {
    changeTheme(elementBody, "true")
}