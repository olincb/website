
window.toggleDarkmode = function() {
    if (localStorage.getItem("darkmode") == "on") {
        localStorage.setItem("darkmode", "off");
    } else {
        localStorage.setItem("darkmode", "on");
    }
    Array.from(document.getElementsByTagName("*")).forEach(element => {
        if (element.id == "darkmode-button") {
            var icon = element.children[0];
            icon.classList.toggle("fa-sun");
            icon.classList.toggle("fa-moon");
        }

        // could use classList.toggle("darkmode") but this breaks if things get out of sync
        if (localStorage.getItem("darkmode") == "on") {
            element.classList.add("darkmode");
        } else {
            element.classList.remove("darkmode");
        }
    });
    
}

window.setDarkmodeState = function() {
    if (localStorage.getItem("darkmode") == "on") {
        localStorage.setItem("darkmode", "_on");  // toggle function will treat this as off (therefore, it will turn it on)
        window.toggleDarkmode();
    }
}

window.setToplevelDarkmodeState = function() {
    let html = document.documentElement;
    if (localStorage.getItem("darkmode") == "on") {
        html.classList.add("darkmode");
    } else {
        html.classList.remove("darkmode");
    }
}
