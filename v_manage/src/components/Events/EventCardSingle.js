import React from "react";

const EventCardSingle = (props) => {
  return (
    <div className="col-md-6 col-lg-3">
      <div className="card">
        <div className="card-header bg-white">
          <h5 className="card-title">{props.title}</h5>
          <h6 className="card-subtitle mb-2 text-muted">{props.dateTime}</h6>
        </div>
        <img className="img-fluid" src={props.img} alt="" />
        <div className="card-body">
          <p className="card-text">
            {props.about}
          </p>
        </div>
        <div className="card-footer">
          <p className="card-text d-inline">
            <small className="text-muted">Registered: {props.registered}</small>
          </p>
          <a href="#" className="card-link float-right">
            <small>Know More</small>
          </a>
        </div>
      </div>
    </div>
  );
};

export default EventCardSingle;
