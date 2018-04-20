function Validate(){
    var mail = document.getElementById('email');
    if(!ValidateEmail(mail.value)){
        mail.style.border = "solid red";
    }
    else{
        mail.style.border = "solid green";
    }

}
function ValidateEmail(mail)
{
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.emailAddr.value))
    {
        return (true)
    }

    return (false)
}