import React from "react";
import { Link } from "react-router-dom";
import logo from "../../assets/images/logo.png";

const Login = () => {
  return (
    <div style={{ marginTop: "120px" }}>
      <div className="login-form-bg h-100">
        <div className="container h-100">
          <div className="row justify-content-center h-100">
            <div className="col-xl-6">
              <div className="form-input-content">
                <div className="card login-form mb-0">
                  <div className="card-body pt-5">
                    <img
                      src={logo}
                      alt="logo"
                      style={{
                        width: "80px",
                        margin: "-20px 200px 40px 200px",
                      }}
                    />
                    <h4 className="text-center" style={{ fontSize: "40px" }}>
                      VManage
                    </h4>
                    <form className="mt-5 mb-5 login-input">
                      <div className="form-group">
                        <input
                          type="email"
                          className="form-control"
                          placeholder="Email"
                          required
                        />
                      </div>
                      <div className="form-group">
                        <input
                          type="password"
                          className="form-control"
                          placeholder="Password"
                          required
                        />
                      </div>
                      <Link to="/">
                        <button className="btn login-form__btn submit w-100">
                          Sign In
                        </button>
                      </Link>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Login;
