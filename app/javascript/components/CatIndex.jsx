import React from "react";
import Cat from "./Cat"

export default class CatIndex extends React.Component {
  constructor() {
    super();
    this.state = {
      currentCat: "",
    };
  }
  componentDidMount() {
    this.setState({ allCats: this.props.cats });
    this.setState({ allSectors: this.props.sectors });
    this.setState({ currentSector: this.props.currentSector});
        
  }

  getSectorCats(){
    var currentSector = this.state.currentSector
    var sectorCats = this.state.allCats
    if (currentSector==null){
        console.log('null')
        // sectorCats = sectorCats.map((cat) => {
        //     return (
        //       <li key={cat.id} className="list-group-item">
        //         <Cat image={cat.imageUrl} name={cat.name} id={cat.id}/>
        //       </li>
        //     );
        //   });
          return sectorCats
        }
    else if (currentSector>=0){
        console.log('num')

        sectorCats.filter((cat)=>{
            return cat.sector_id == currentSector
        })
        // sectorCats = sectorCats.map((cat) => {
        //     return (
        //       <li key={cat.id} className="list-group-item">
        //         <Cat image={cat.imageUrl} name={cat.name} id={cat.id}/>
        //       </li>
        //     );
        //   });
          return sectorCats
        }
  }
  render() {
    return (
      <React.Fragment>
        <a href="/" className="container">Back</a>
        <div className="form-group container mt-2">
          <label htmlFor="exampleFormControlSelect1">View Cats for Estate:</label>
          <select className="form-control" id="exampleFormControlSelect1">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
          </select>
        </div>
        <ul className="list-group">
          {console.log(this.state.sectorCats)}
        </ul>
      </React.Fragment>
    );
  }
}
