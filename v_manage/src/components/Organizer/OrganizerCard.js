import React from "react";

const OrganzierCard = (props) => {
  return (
        <div className="card">
          <div className="card-body">
            <div className="text-center">
              <img src={props.image} className="rounded-circle" alt="" style={{ maxHeight: "40px" }}/>
              <h5 className="mt-3 mb-1">{props.name}</h5>
              <p className="m-0">{props.tokens} Tokens</p>
            </div>
          </div>
        </div>
  );
};

export default OrganzierCard;
