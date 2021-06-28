// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller 
{
  static targets = [ "Description","Details", "Cart" ]
  static values = {  count: Number, url: String  }

  connect() 
  {
    //this.outputTarget.textContent = 'Hello, Stimulus!'
  }

  Description()
  {
    console.log("Description Working")
    // alert(nameStr)
    console.log(this.application)
    console.log(this.element)
    var details=this.DetailsTargets;
    var id1 = " ";
    // var nameStr=1;
    for (var id= 0, len= details.length; id<len; id++)
    {
      id1 += details[id].textContent;
    }   
    var id2=this.DescriptionTarget.textContent;
    alert(id1+id2);
  }


CartAdd(event)
{
  console.log("Working")
  const csrf = document.querySelector("[name='csrf-token']").getAttribute("content");
  var product_id= event.target.id;
  const data={product_id: product_id}
  var url=this.urlValue;

  fetch(url,
  {
    method: 'POST',
    headers:
    {
      'X-CSRF-Token': csrf,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(data),
  })
  .then((response) => 
  {
    if (response.status == 200 ) 
    { 
      this.countValue=this.countValue+1 ; 
      this.CartTarget.textContent=this.countValue;
    } 
    else if(response.status == 404) 
    { 
      alert("not added") 
    }
  })
    
}

}
