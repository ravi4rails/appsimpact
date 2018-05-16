     //onblur function
  function requiredname(input) 
  {
    if (input.value.length < 1) 
    {
         //red border
      input.style.borderColor = "#e74c3c";
      document.getElementById('errorname').innerHTML="Name Can't be Blank";
    }
    else 
    {
         //green border
      input.style.borderColor = "#2ecc71";
      document.getElementById("errorname").innerHTML=("");
    }
  }
  function requiredemail(input) 
  {
    if (input.value.length < 1) 
    {
     //red border
     input.style.borderColor = "#e74c3c";
     document.getElementById('erroremail').innerHTML="Email Can't br Blank";
         
    }
    else 
    {
      //green border
      input.style.borderColor = "#2ecc71";
      document.getElementById('erroremail').innerHTML="";
    }
  }
  function requiredcontact(input) 
  {
    if (input.value.length < 1) 
    {
     //red border
     input.style.borderColor = "#e74c3c";
     document.getElementById('errorcontact').innerHTML="Contact Can't br Blank";    
    }
    else 
    {
      //green border
      input.style.borderColor = "#2ecc71";
      document.getElementById('errorcontact').innerHTML="";
    }
  }
  function requiredcollage(input) 
  {
    if (input.value.length < 1) 
    {
     //red border
     input.style.borderColor = "#e74c3c";
     document.getElementById('errorcollage').innerHTML="collage Name Can't br Blank";    
    }
    else 
    {
      //green border
      input.style.borderColor = "#2ecc71";
      document.getElementById('errorcollage').innerHTML="";
    }
  }
  function requiredbranch(input) 
  {
    if (input.value.length < 1) 
    {
     //red border
     input.style.borderColor = "#e74c3c";
     document.getElementById('errorbranch').innerHTML="Branch Can't br Blank";    
    }
    else 
    {
      //green border
      input.style.borderColor = "#2ecc71";
      document.getElementById('errorbranch').innerHTML="";
    }
  }
  function requiredyear(input) 
  {
    if (input.value.length < 1) 
    {
     //red border
     input.style.borderColor = "#e74c3c";
     document.getElementById('erroryear').innerHTML="Year Can't br Blank";    
    }
    else 
    {
      //green border
      input.style.borderColor = "#2ecc71";
      document.getElementById('erroryear').innerHTML="";
    }
  }
  

  // Valdiation of form
  function validateForm() 
  {
    var x = document.forms["myForm"]["name"].value;
    if (x == "") 
    {
      document.getElementById('errorname').innerHTML="Name Can't be blank";
      document.getElementById('erroremail').innerHTML="Email Can't be Blank";
      document.getElementById('errorcontact').innerHTML="Email Can't be Blank";
      document.getElementById('errorcollage').innerHTML="Collage Name Can't be Blank";
      document.getElementById('errorbranch').innerHTML="Branch Can't be Blank";
      document.getElementById('erroryear').innerHTML="Year Can't be Blank";
      document.getElementById('errorsubject').innerHTML="Subject Can't be Blank";
      document.getElementById('errormessage').innerHTML="Message Can't be Blank";
      return false;
    }
  }