import React from "react";

const NoMatch = () => {
  return (
    <div>
      <div className="login-form-bg h-100">
        <div className="container h-100">
          <div className="row justify-content-center h-100">
            <div className="col-xl-6">
              <div className="error-content">
                <div className="card mb-0">
                  <div className="card-body text-center pt-5">
                    <h1 className="error-text text-primary">404</h1>
                    <h4 className="mt-4">
                      <i className="fa fa-thumbs-down text-danger"></i> Bad
                      Request
                    </h4>
                    <p>Your Request resulted in an error.</p>
                    <form className="mt-5 mb-5">
                      <div className="text-center mb-4 mt-4">
                        <a href="/" className="btn btn-primary">
                          Go to Homepage
                        </a>
                      </div>
                    </form>
                    <div className="text-center">
                      <p>
                        Copyright © Designed by
                        <a href="https://themeforest.net/user/digitalheaps">
                          Digitalheaps
                        </a>
                        , Developed by
                        <a href="https://themeforest.net/user/quixlab">
                          Quixlab
                        </a>
                        2018
                      </p>
                      <ul className="list-inline">
                        <li className="list-inline-item">
                          <a
                            href="javascript:void()"
                            className="btn btn-facebook"
                          >
                            <i className="fa fa-facebook"></i>
                          </a>
                        </li>
                        <li className="list-inline-item">
                          <a
                            href="javascript:void()"
                            className="btn btn-twitter"
                          >
                            <i className="fa fa-twitter"></i>
                          </a>
                        </li>
                        <li className="list-inline-item">
                          <a
                            href="javascript:void()"
                            className="btn btn-linkedin"
                          >
                            <i className="fa fa-linkedin"></i>
                          </a>
                        </li>
                        <li className="list-inline-item">
                          <a
                            href="javascript:void()"
                            className="btn btn-google-plus"
                          >
                            <i className="fa fa-google-plus"></i>
                          </a>
                        </li>
                      </ul>
                    </div>
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

export default NoMatch;
