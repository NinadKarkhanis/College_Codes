import MyInfo from "./info";
import Employee from "./employee";
function App() {
  return (
    <>
      <div >
      <h1 style={{textAlign:"center",color:"red"}}>Employee Information</h1>
        <Employee name="Ninad Karkhanis" id="1" department="Sales" salary="₹50,000" />
        <Employee name="Hamja Kapasi" id="2" department="Marketing" salary="₹60,000" />
        <Employee name="Shawn Wadhwa" id="3" department="Engineering" salary="₹70,000" />
        <Employee name="Kaustubh Bhosale" id="4" department="HR" salary="₹55,000" />
        <Employee name="Srinivas Bhavigaddi" id="5" department="Finance" salary="₹65,000" />
      </div>
    </>
  );
}


export default App;
