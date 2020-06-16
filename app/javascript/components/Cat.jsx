import React from "react";
export default class Cat extends React.Component {
  constructor() {
    super();
    this.state = {
      currentCat: "",
      currentSector: "",
    };
  }
  
  render() {
    let image = this.props.image
    let name = this.props.name
    let id = this.props.id
    
    return (
      <React.Fragment>
        <a href={`/cats/${id}`}>
         <div className = "row align-middle">
            <img src={image} style={{height:'50px', width: '50px', objectFit: 'cover'}}/>
            <div className="col"><h5 className="pl-5 mt-2">{name}</h5></div>
         </div>
        </a>
      </React.Fragment>
    );
  }
}
