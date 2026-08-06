// Lamp state

let isOn = false;

window.onload = function () {
    // Get elements

    let pullBall = document.getElementById("pullBall");
    let string = document.querySelector(".string");
    let page = document.getElementById("page");
    let loginCard = document.getElementById("loginCard");

    // Pull variables
    //Krupa is editing this line of code
    //and this line of code
    //and this line
    //and this one 
    //and another one

    let pulling = false;
    let startY = 0;

    // Original string length
    let originalHeight = 70;

    // Start pulling

    pullBall.addEventListener("pointerdown", function (event) {
        pulling = true;
        startY = event.clientY;
        pullBall.setPointerCapture(event.pointerId);
    });

    // Pull movement

    document.addEventListener("pointermove", function (event) {
        if (pulling) {
            let distance = event.clientY - startY;
            if (distance > 0 && distance < 150) {
                // Increase string length
                string.style.height =
                    (originalHeight + distance) + "px";
            }
            // Switch lamp on

            if (distance > 60) {
                toggleLamp();
                pulling = false;
            }
        }
    });

    // Release pull

    document.addEventListener("pointerup", function () {
        if (pulling) {
            pulling = false;
        }
        // Smooth return
        string.style.height =
            originalHeight + "px";
    });

    // Lamp function

    function toggleLamp() {
        isOn = !isOn;
        if (isOn) {
            // Glow lamp
            page.classList.add("light");
            // Show login
            loginCard.classList.add("show");
        }
        else {
            page.classList.remove("light");
            loginCard.classList.remove("show");
        }
    }
};

// Login

function login() {
    window.location.href = "Login.aspx";
}
// Signup

function signup() {
    window.location.href = "Registration.aspx";
}

// Guest

function guest() {
    window.location.href = "Products.aspx";
}