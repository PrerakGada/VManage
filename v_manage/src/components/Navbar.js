import React from "react";

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
                placeholder="Search Dashboard"
                aria-label="Search Dashboard"
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
                  <span className="activity active"></span>
                  <img src="images/user/1.png" height="40" width="40" alt="" />
                </div>
                <div className="drop-down dropdown-profile animated fadeIn dropdown-menu">
                  <div className="dropdown-content-body">
                    <ul>
                      <li>
                        <a href="app-profile.html">
                          <i className="icon-user"></i> <span>Profile</span>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:void()">
                          <i className="icon-envelope-open"></i>
                          <span>Inbox</span>
                          <div className="badge gradient-3 badge-pill gradient-1">
                            3
                          </div>
                        </a>
                      </li>

                      <hr className="my-2" />
                      <li>
                        <a href="page-lock.html">
                          <i className="icon-lock"></i> <span>Lock Screen</span>
                        </a>
                      </li>
                      <li>
                        <a href="page-login.html">
                          <i className="icon-key"></i> <span>Logout</span>
                        </a>
                      </li>
                    </ul>
                  </div>
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
