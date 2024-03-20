/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */



function checkPasswordMatch() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confermaPassword").value;
        var passwordMatchMessage = document.getElementById("passwordMatch");

        if (password != confirmPassword) {
            passwordMatchMessage.innerHTML = "Le password non corrispondono!";
        } else {
            passwordMatchMessage.innerHTML = "";
        }
    }


