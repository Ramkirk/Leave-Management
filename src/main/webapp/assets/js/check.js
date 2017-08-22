/**
 * Created by Admin on 17-Jun-17.
 */

var app = angular.module('myapp',['ui.mask']);

app.controller('myCtrl',function($scope,$http,$window){





    /*$scope.params = {};

    $scope.showPassword = false;

    $scope.toggleShowPassword = function() {
        $scope.showPassword = !$scope.showPassword;
    };*/

    $scope.namex = ($window.sessionStorage.username);



//---------------------------------------------FOR OTHER DETAILS PAGE (YES SCENARIO) ---------------------------------//
    $scope.open=function() {

        var details = {
            name: $scope.name,
            address1: $scope.address1,
            address2: $scope.address2,
            city: $scope.city,
            country:$("#countries_states1").val(),
            postal_code: $scope.postal_code,
            currently_employed: $scope.currently_employed,
            current_employer: $scope.current_employer,
            current_location: $scope.current_location,
            current_designation: $scope.current_designation,
            working_since: $scope.working_since

        };
        $http.post('Details',details).
            then(function (response,status,headers,config){
                $scope.data=response.data;

                location.href="Otherdetails"

            })
    };


//----------------------------------------------------FOR DETAILS PAGE (NO SENARIO)-----------------------------------//
        $scope.openn=function(){

            var details= {
                name: $scope.name,
                address1: $scope.address1,
                address2: $scope.address2,
                city: $scope.city,
                country: $("#countries_states1").val(),
                postal_code: $scope.postal_code,
                currently_employed: $scope.currently_employed,
                p_employer: $scope.p_employer,
                p_location: $scope.p_location,
                p_designation: $scope.p_designation,
                break_since: $scope.break_since,
                tenure: $scope.tenure

        };
            $http.post('Details',details).
                then(function (response,status,headers,config){
                    $scope.data=response.data;

                    location.href="Otherdetails"

                })
    };


//-----------------------------------------------FOR OTHER DETAILS PAGE-----------------------------------------------//
    $scope.submit1=function(){

        var odetails={
            contact1:$scope.contact1,
            contact2:$scope.contact2,
            email:$scope.email,
            dob:$scope.dob,
            nationality:$scope.nationality,
            c_salary:$scope.c_salary,
            e_salary:$scope.e_salary,
            passport:$scope.passport,
            relocate:$scope.relocate,
            f_details:$scope.f_details

        };
        $http.post('oDetails',odetails).
            then(function (response,status,headers,config){
                $scope.data=response.data;
                location.href = "Skills"
            })
    };



//--------------------------------------------------FOR LOGIN VALIDATION----------------------------------------------//


   /* $scope.login = function(){

        $scope.user_name="";
        $scope.password="";

        if ($scope.e_mail != null && $scope.pass != null) {
            /!*  $http.post("SignIn",user)
             .then(function (response,status, headers, config){

             $scope.details =response.data;

             if ($scope.details.status){

             }
             })*!/
            if ($scope.data2.e_mail==$scope.user_name && $scope.data2.pass==$scope.password){
                location.href="Details";

            }

            else{
                $window.alert("dfgdf dfgsdfg");
            }


        }
    };*/

    /*$scope.login = function(){

        var user = {

            e_mail: $scope.e_mail,
            pass: $scope.pass
        }

        if ($scope.e_mail != null && $scope.pass != null) {
            $http.post("SignIn",user)
                .then(function (response,status, headers, config){

                    $scope.details =response.data;

                    if ($scope.details.status){

                    }
                })
        }
    };*/



//----------------------------------------------------FOR SIGN UP-----------------------------------------------------//
    $scope.signup = function(){

        var newuser={
            f_name:$scope.f_name,
            l_name:$scope.l_name,
            e_mail:$scope.e_mail,
            pass:$scope.pass
        };
        $http.post('User',newuser).
            then(function (response,status,headers,config){
                $scope.data=response.data;
                location.href = "Login"

            })


    };

   /* $scope.next=function(){
        var skills={
            choice_name:$scope.choice_name,
            choice_name1:$scope.choice_name1,
            additional:$scope.additional,

        };
        $http.post('Skills',skills).
            then(function (response,status,headers,config){
                $scope.data=response.data;

            })
    };*/



//------------------------------------------------FOR CHOICE ADD AND REMOVE-------------------------------------------//
    $scope.choices = [{}];

    $scope.addNewChoice = function(choice) {

        var newItemNo = $scope.choices.length+1;
        $scope.choices.push({});
    };

    $scope.removeChoice = function() {
        var lastItem = $scope.choices.length-1;
        $scope.choices.splice(lastItem);
    };



    $scope.choices1 = [{}];
    $scope.addNewChoice1 = function() {
        var newItemNo = $scope.choices1.length+1;
        $scope.choices1.push({});
    };

    $scope.removeChoice1 = function() {
        var lastItem1 = $scope.choices1.length-1;
        $scope.choices1.splice(lastItem1);
    };

   /* $scope.login=function(){
        location.href="Details"
    };*/
    $scope.open1=function(){
        location.href="Skills"
    };


    /*$scope.lists=[];
    $scope.additem=function(){

        if ($scope.lists.indexOf($scope.addme) == -1) {
            $scope.lists.push($scope.addme);
        } else {
            $window.alert ("The item is already in list.");
        }
    };

    $scope.removeItem=function(x){
        $scope.lists.splice(x,1);
    };*/



//---------------------------------------------------------- FOR SELECT FILE------------------------------------------//
    $scope.formData = new FormData();

    $scope.fileUpload = function (files) {


        file = files[0];
        var reader = new FileReader();
        reader.onload = function (evt) {
            if (file.type == "application/pdf") {

                $scope.$apply(function ($scope) {

                    $scope.formData.append('pdfFile', file);
                });
            }
        };
        reader.readAsDataURL(file);
    };


//---------------------------------------------------FOR SKILLS PAGE--------------------------------------------------//
    $scope.try = function () {

        /*var skills={
            choice_name:$scope.choice_name,
            choice_name1:$scope.choice_name1,
            additional:$scope.additional,

        };
        $http.post('Skills',skills).
            then(function (response,status,headers,config){
                $scope.data=response.data;

            });*/


        var skills = {
            choices: $scope.choices,
            choices1: $scope.choices1,
            additional: $scope.additional
        };

        $scope.formData.append('choices', angular.toJson($scope.choices));
        $scope.formData.append('choices1', angular.toJson($scope.choices1));
        $scope.formData.append('additional', $scope.additional);

        $http.post('Addfile', $scope.formData, {
            headers: {'Content-Type': undefined}
        }).then(function (response) {

        });

    };
});

/*
var app = angular.module('myapp', []);

app.controller('myCtrl',function($scope,$http,$window){
    $scope.choices = [{id: 'choice1'}, {id: 'choice2'}];

    $scope.addNewChoice = function() {
        var newItemNo = $scope.choices.length+1;
        $scope.choices.push({'id':'choice'+newItemNo});
    };

    $scope.removeChoice = function() {
        var lastItem = $scope.choices.length-1;
        $scope.choices.splice(lastItem);
    };

});
*/


//======================================================SHOW HIDE PASSWORD============================================//


/*(function() {


    var PasswordToggler = function( element, field ) {
        this.element = element;
        this.field = field;

        this.toggle();
    };

    PasswordToggler.prototype = {
        toggle: function() {
            var self = this;
            self.element.addEventListener( "change", function() {
                if( self.element.checked ) {
                    self.field.setAttribute( "type", "text" );
                } else {
                    self.field.setAttribute( "type", "password" );
                }
            }, false);
        }
    };

    document.addEventListener( "DOMContentLoaded", function() {
        var checkbox = document.querySelector( "#show-hide" ),
            pwd = document.querySelector( "#pwd" ),
            form = document.querySelector( "#login" );

        form.addEventListener( "submit", function( e ) {
            e.preventDefault();
        }, false);

        var toggler = new PasswordToggler( checkbox, pwd );

    });

})();*/



//-------------------------------------------------------FOR YES/NO PROCESS ------------------------------------------//

function checkIf() {
    if (document.getElementById("check").value == 'Yes') {
        document.getElementById("yes").style.display='';
        document.getElementById("no").style.display='none';
    }
    else if (document.getElementById("check").value=='No') {
        document.getElementById("no").style.display='';
        document.getElementById("yes").style.display='none';
    }
    else if (document.getElementById("check").value=='Select') {
        document.getElementById("no").style.display='none';
        document.getElementById("yes").style.display='none';
    }
}

function checkIf1() {
    if (document.getElementById("check1").value == 'Yes') {
        document.getElementById("yes1").style.display='';
        document.getElementById("no1").style.display='none';
    }
    else if (document.getElementById("check1").value=='No') {
        document.getElementById("no1").style.display='';
        document.getElementById("yes1").style.display='none';
    }
    else if (document.getElementById("check1").value=='Select') {
        document.getElementById("no1").style.display='none';
        document.getElementById("yes1").style.display='none';
    }
}

function checkIf2() {
    if (document.getElementById("check2").value == 'Yes') {
        document.getElementById("yes2").style.display='';
        document.getElementById("no2").style.display='none';
    }
    else if (document.getElementById("check2").value=='No') {
        document.getElementById("no2").style.display='';
        document.getElementById("yes2").style.display='none';
    }
    else if (document.getElementById("check2").value=='Select') {
        document.getElementById("no2").style.display='none';
        document.getElementById("yes2").style.display='none';
    }
}

function checkIf3() {
    if (document.getElementById("check3").value == 'Yes') {
        document.getElementById("yes3").style.display='';
        document.getElementById("no3").style.display='none';
    }
    else if (document.getElementById("check3").value=='No') {
        document.getElementById("no3").style.display='';
        document.getElementById("yes3").style.display='none';
    }
    else if (document.getElementById("check3").value=='Select') {
        document.getElementById("no3").style.display='none';
        document.getElementById("yes3").style.display='none';
    }
}








