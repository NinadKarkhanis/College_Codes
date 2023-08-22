import React from "react";
import Student from "./stud";

function App() {
  return (
    <>
      <h1 style={{color:"red", textAlign:"center"}}>Student Data</h1>
      <table border="1px" style={{margin:'0 auto'}}>
        <tr>
        <th>Student ID</th>
        <th>Student Name</th>
        <th>Student Contact</th>
        </tr>
        <tr>
        <Student id="1" name="Ninad Karkhanis"  contact="13213123" />
        </tr>
        <tr>
        <Student id="2" name="Hamza Kapasi"  contact="13223123" />
        </tr>
        <tr>
        <Student id="3" name="Shawn Wadhwa"  contact="13213173" />
        </tr>
        <tr>
        <Student id="4" name="Tejas Vartak"  contact="13213179" />
        </tr>
        <tr>
        <Student id="5" name="XYZ BAC"  contact="132133279" />
        </tr>
      </table>
    </>
  );
}

export default App;

