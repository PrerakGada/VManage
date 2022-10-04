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
              <td>Kolor Tea Shirt For Man</td>
              <td>
                <span className="badge badge-primary px-2">Sale</span>
              </td>
              <td>January 22</td>
              <td className="color-primary">$21.56</td>
            </tr>
            <tr>
              <th>2</th>
              <td>Kolor Tea Shirt For Women</td>
              <td>
                <span className="badge badge-danger px-2">Tax</span>
              </td>
              <td>January 30</td>
              <td className="color-success">$55.32</td>
            </tr>
            <tr>
              <th>3</th>
              <td>Blue Backpack For Baby</td>
              <td>
                <span className="badge badge-success px-2">Extended</span>
              </td>
              <td>January 25</td>
              <td className="color-danger">$14.85</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default HoverTable;
