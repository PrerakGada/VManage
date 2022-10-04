import React from "react";

const SignUp = () => {
  return (
    <div>
      <div className="login-form-bg h-100">
        <div className="container h-100">
          <div className="row justify-content-center h-100">
            <div className="col-xl-6">
              <div className="form-input-content">
                <div className="card login-form mb-0">
                  <div className="card-body pt-5">
                    <a className="text-center" href="index.html">
                      <h4>Rosella</h4>
                    </a>

                    <form className="mt-5 mb-5 login-input">
                      <div className="form-group">
                        <input
                          type="text"
                          className="form-control"
                          placeholder="Name"
                          required
                        />
                      </div>
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
                      <button className="btn login-form__btn submit w-100">
                        Sign in
                      </button>
                    </form>
                    <p className="mt-5 login-form__footer">
                      Have account
                      <a href="page-login.html" className="text-primary">
                        Sign Up
                      </a>
                      now
                    </p>
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

export default SignUp;
