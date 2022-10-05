import React from "react";
import { Link } from "react-router-dom";
import pfp from "../assets/images/pfp.png";

const Navbar = () => {
  return (
    <div>
      <div className="header">
        <div className="header-content clearfix">
          <div className="nav-control">
            <div className="hamburger">
              <span className="toggle-icon">
                <i className="icon-menu"></i>
              </span>
            </div>
          </div>
          <div className="header-left">
            <div className="input-group icons">
              <div className="input-group-prepend">
                <span
                  className="input-group-text bg-transparent border-0 pr-2 pr-sm-3"
                  id="basic-addon1"
                >
                  <i className="mdi mdi-magnify"></i>
                </span>
              </div>
              <input
                type="search"
                className="form-control"
                placeholder="Search for Events"
                aria-label="Search for Events"
              />
              <div className="drop-down animated flipInX d-md-none">
                <form action="#">
                  <input
                    type="text"
                    className="form-control"
                    placeholder="Search"
                  />
                </form>
              </div>
            </div>
          </div>
          <div className="header-right">
            <ul className="clearfix">
              <li className="icons dropdown">
                <div
                  className="user-img c-pointer position-relative"
                  data-toggle="dropdown"
                >
                  <Link to="/profile">
                    <span className="activity active"></span>
                    <img src={pfp} height="40" width="40" alt="" />
                  </Link>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Navbar;
