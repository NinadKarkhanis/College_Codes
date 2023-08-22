import React from "react";




function Employee(props) {
    return (
      <div className="employee" style={{textAlign:"center",color:"black"}}>
        <h2>Employee {props.id} :</h2>
        <p>Name: {props.name}, ID: {props.id}, Department: {props.department}, Salary: {props.salary}</p>  
        <hr></hr>
      </div>
    );
  }
 
//   function EmployeeList() {
//     return (
//       <div >
//         <Employee name="Ninad Karkhanus" id="1" department="Sales" salary="₹50,000" />
//         <Employee name="Hamja Kapasi" id="2" department="Marketing" salary="₹60,000" />
//         <Employee name="Tejas " id="3" department="Engineering" salary="₹70,000" />
//         <Employee name="Kaustubh Bhosale" id="4" department="HR" salary="₹55,000" />
//         <Employee name="Srinivas Bhavigaddi" id="5" department="Finance" salary="₹65,000" />
//       </div>
//     );
//   }
 
  export default Employee;
