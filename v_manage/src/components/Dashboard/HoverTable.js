import React from "react";

function HoverTable() {
  return (
    <div className="card-body">
      <div className="card-title">
        <h4>Table Hover</h4>
      </div>
      <div className="table-responsive">
        <table className="table table-hover">
          <thead>
            <tr>
              <th>#</th>
              <th>Name</th>
              <th>Status</th>
              <th>Date</th>
              <th>Price</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th>1</th>
              <td>Sunburn Arena ft. DJ SNAKE</td>
              <td>
                <span className="badge badge-primary px-2">Requested</span>
              </td>
              <td>October 26</td>
              <td className="color-primary">₹999 Onwards</td>
            </tr>
            <tr>
              <th>2</th>
              <td>Kunal Kamra Live</td>
              <td>
                <span className="badge badge-danger px-2">Rejected</span>
              </td>
              <td>November 30</td>
              <td className="color-success">₹599 Onwards</td>
            </tr>
            <tr>
              <th>3</th>
              <td>StandUp by Vipul Goyal</td>
              <td>
                <span className="badge badge-success px-2">Approved</span>
              </td>
              <td>January 25</td>
              <td className="color-danger">₹1299 Onwards</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default HoverTable;
