$().ready(function () {
    $("#signUp").validate({
        rules:{
            firstname:"required",
            lastname:"required",
            username:{
                required:true,
                minLength:5
            },
            password:{
                required: true,
                minLength: 8
            },
            confirmpassword:{
                required:true,
                minLength:8,
                equalTo:"#password"
            },
            message:{
                firstname: "Please enter your firstname",
                lastname: "Please enter your lastname",
                username: {
                    required:"Please enter your username",
                    minLength:"Username must consist of at least 5 characters"
                },
                password: {
                    required:"Please enter your password",
                    minLength:"Password must consist of at least 8 characters"
                },
                confirmpassword: {
                    required:"Please enter",
                    minLength:"Password must consist of at least 8 characters",
                    equalTo:"Password did not match"
                }
            }
        }
    })

})