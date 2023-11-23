function validateForm() {
    var fullName = document.getElementById("fullName").value;
    var stdid = document.getElementById("stdid").value;
    var email = document.getElementById("email").value;
    var phoneNumber = document.getElementById("phoneNumber").value;
    var phonePattern = /^\d{10}$/;
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$/;
    var stdidpattern = /^\d{8}$/;
    var fullName =  /^[a-zA-Z]$/;
    var messageDiv = document.getElementById("message");
    messageDiv.innerHTML = "";

    if (!fullnamepattern.test(fullname)) {
        showMessage("Invalid Name");
        return false;
    } 

    if (!stdidpattern.test(stdid)) {
        showMessage("Invalid Student ID");
        return false;
    }

    if (!emailPattern.test(email)) {
        showMessage("Invalid email format.");
        return false;
    }

    if (!phonePattern.test(phoneNumber)) {
        showMessage("Invalid phone number format, Use 10 digits.");
        return false;
    }


    return true;
}

function showMessage(message) {
    var messageDiv = document.getElementById("message");
    messageDiv.innerHTML = message;
}
