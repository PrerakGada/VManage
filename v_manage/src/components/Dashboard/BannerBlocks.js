import React from "react";

const BannerBlocks = () => {
  return (
    <div>
      <div className="row">
        <div className="col-lg-3 col-sm-6">
          <div className="card gradient-1">
            <div className="card-body">
              <h3 className="card-title text-white">Events Listed</h3>
              <div className="d-inline-block">
                <h2 className="text-white">40</h2>
                <p className="text-white mb-0">September - October 2022</p>
              </div>
              <span className="float-right display-5 opacity-5">
                <i className="fa fa-shopping-cart"></i>
              </span>
            </div>
          </div>
        </div>
        <div className="col-lg-3 col-sm-6">
          <div className="card gradient-2">
            <div className="card-body">
              <h3 className="card-title text-white">Registrations</h3>
              <div className="d-inline-block">
                <h2 className="text-white">240</h2>
                <p className="text-white mb-0">September - October 2022</p>
              </div>
              <span className="float-right display-5 opacity-5">
                <i className="fa fa-money"></i>
              </span>
            </div>
          </div>
        </div>
        <div className="col-lg-3 col-sm-6">
          <div className="card gradient-3">
            <div className="card-body">
              <h3 className="card-title text-white">New Active Users</h3>
              <div className="d-inline-block">
                <h2 className="text-white">20</h2>
                <p className="text-white mb-0">September - October 2022</p>
              </div>
              <span className="float-right display-5 opacity-5">
                <i className="fa fa-users"></i>
              </span>
            </div>
          </div>
        </div>
        <div className="col-lg-3 col-sm-6">
          <div className="card gradient-4">
            <div className="card-body">
              <h3 className="card-title text-white">Conversion Rate</h3>
              <div className="d-inline-block">
                <h2 className="text-white">42%</h2>
                <p className="text-white mb-0">Jaunuary - October 2022</p>
              </div>
              <span className="float-right display-5 opacity-5">
                <i className="fa fa-heart"></i>
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default BannerBlocks;
