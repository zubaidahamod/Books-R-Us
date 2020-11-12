function checkData () {

    let result = true;

    const name = document.querySelector('#name');
    const phone = document.querySelector('#phone');
    const launch_id = document.querySelector('#launch_id');

    if (name.value === "") {
        result = false;
        alert("Please enter your full name");
    } else if (phone.value === "") {
        result = false;
        alert("Please enter your phone number");
        phone.select();
    } else if (launch_id.value === "") {
        result = false;
        alert("Please select the book launch you would like to attend");
        launch_id.select();
    }
    return result;
}
