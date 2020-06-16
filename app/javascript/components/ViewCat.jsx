import React from "react";
export default class ViewCat extends React.Component {
  constructor() {
    super();
    this.state = {
      currentCat: "",
    };
  }
  
  render() {
    let image = this.props.image
    let name = this.props.name
    let id = this.props.id
    
    return (
      <React.Fragment>
         <div className = "container d-flex flex-column">
            <img src={image} style={{height:'100px', width: '100px', objectFit: 'cover'}}/>
            <div className="col"><h5 className="pl-5 mt-2">{Text}</h5></div>
         </div>
      </React.Fragment>
    );
  }
}
