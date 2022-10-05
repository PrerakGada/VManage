import React from "react";

const WorldMap = () => {
  return (
    <div>
      <div className="col-xl-6 col-lg-12 col-sm-12 col-xxl-12">
        <div className="card">
          <div className="card-body">
            <h4 className="card-title mb-0">Store Location</h4>
            <div id="world-map" style="height: 470px;"></div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default WorldMap;
