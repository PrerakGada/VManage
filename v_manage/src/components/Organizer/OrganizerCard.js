import React from "react";
import pfp from "../../assets/images/pfp.png";

const OrganzierCard = (props) => {
  return (
    <div>
      <div className="col-lg-3 col-sm-6">
        <div className="card">
          <div className="card-body">
            <div className="text-center">
              <img src={pfp} className="rounded-circle" alt="" />
              <h5 className="mt-3 mb-1">{props.name}</h5>
              <p className="m-0">{props.tokens}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default OrganzierCard;
