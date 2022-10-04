import React from "react";

const Dashboard = () => {
  return (
    <div>
      <div class="col-lg-6">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title">Slides With captions</h4>
            <div class="bootstrap-carousel">
              <div
                data-ride="carousel"
                class="carousel slide"
                id="carouselExampleCaptions"
              >
                <ol class="carousel-indicators">
                  <li
                    class=""
                    data-slide-to="0"
                    data-target="#carouselExampleCaptions"
                  ></li>
                  <li
                    data-slide-to="1"
                    data-target="#carouselExampleCaptions"
                    class=""
                  ></li>
                  <li
                    data-slide-to="2"
                    data-target="#carouselExampleCaptions"
                    class="active"
                  ></li>
                </ol>
                <div class="carousel-inner">
                  <div class="carousel-item">
                    <img
                      class="d-block w-100"
                      src="images/big/img5.jpg"
                      alt=""
                    />
                    <div class="carousel-caption d-none d-md-block">
                      <h5>First slide label</h5>
                      <p>
                        Nulla vitae elit libero, a pharetra augue mollis
                        interdum.
                      </p>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img
                      alt=""
                      class="d-block w-100"
                      src="images/big/img6.jpg"
                    />
                    <div class="carousel-caption d-none d-md-block">
                      <h5>Second slide label</h5>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                      </p>
                    </div>
                  </div>
                  <div class="carousel-item active">
                    <img
                      alt=""
                      class="d-block w-100"
                      src="images/big/img5.jpg"
                    />
                    <div class="carousel-caption d-none d-md-block">
                      <h5>Third slide label</h5>
                      <p>
                        Praesent commodo cursus magna, vel scelerisque nisl
                        consectetur.
                      </p>
                    </div>
                  </div>
                </div>
                <a
                  data-slide="prev"
                  href="#carouselExampleCaptions"
                  class="carousel-control-prev"
                >
                  <span class="carousel-control-prev-icon"></span>{" "}
                  <span class="sr-only">Previous</span>{" "}
                </a>
                <a
                  data-slide="next"
                  href="#carouselExampleCaptions"
                  class="carousel-control-next"
                >
                  <span class="carousel-control-next-icon"></span>{" "}
                  <span class="sr-only">Next</span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className="row">
        <div className="col-lg-3 col-sm-6">
          <div className="card gradient-1">
            <div className="card-body">
              <h3 className="card-title text-white">Products Sold</h3>
              <div className="d-inline-block">
                <h2 className="text-white">4565</h2>
                <p className="text-white mb-0">Jan - March 2019</p>
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
              <h3 className="card-title text-white">Net Profit</h3>
              <div className="d-inline-block">
                <h2 className="text-white">$ 8541</h2>
                <p className="text-white mb-0">Jan - March 2019</p>
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
              <h3 className="card-title text-white">New Customers</h3>
              <div className="d-inline-block">
                <h2 className="text-white">4565</h2>
                <p className="text-white mb-0">Jan - March 2019</p>
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
              <h3 className="card-title text-white">Customer Satisfaction</h3>
              <div className="d-inline-block">
                <h2 className="text-white">99%</h2>
                <p className="text-white mb-0">Jan - March 2019</p>
              </div>
              <span className="float-right display-5 opacity-5">
                <i className="fa fa-heart"></i>
              </span>
            </div>
          </div>
        </div>
      </div>
      <div className="row">
        <div className="col-12 m-b-30">
          <h4 className="d-inline">Cards With Header, Footer and Links</h4>
          <p className="text-muted">This is 3 column contents</p>
          <div className="row">
            <div className="col-md-6 col-lg-3">
              <div className="card">
                <div className="card-header bg-white">
                  <h5 className="card-title">Card title</h5>
                  <h6 className="card-subtitle mb-2 text-muted">
                    Card subtitle
                  </h6>
                </div>
                <img className="img-fluid" src="images/big/img1.jpg" alt="" />
                <div className="card-body">
                  <p className="card-text">
                    This is a wider card with supporting text and below as a
                    natural lead-in to the additional content. This content is a
                    little bit longer.
                  </p>
                </div>
                <div className="card-footer">
                  <p className="card-text d-inline">
                    <small className="text-muted">
                      Last updated 3 mins ago
                    </small>
                  </p>
                  <a href="#" className="card-link float-right">
                    <small>Card link</small>
                  </a>
                </div>
              </div>
            </div>

            <div className="col-md-6 col-lg-3">
              <div className="card">
                <div className="card-header bg-white">
                  <h5 className="card-title">Card title</h5>
                  <h6 className="card-subtitle mb-2 text-muted">
                    Card subtitle
                  </h6>
                </div>
                <img className="img-fluid" src="images/big/img2.jpg" alt="" />
                <div className="card-body">
                  <p className="card-text">
                    This is a wider card with supporting text and below as a
                    natural lead-in to the additional content. This content is a
                    little bit longer.
                  </p>
                </div>
                <div className="card-footer">
                  <p className="card-text d-inline">
                    <small className="text-muted">
                      Last updated 3 mins ago
                    </small>
                  </p>
                  <a href="#" className="card-link float-right">
                    <small>Card link</small>
                  </a>
                </div>
              </div>
            </div>

            <div className="col-md-6 col-lg-3">
              <div className="card">
                <div className="card-header bg-white">
                  <h5 className="card-title">Card title</h5>
                  <h6 className="card-subtitle mb-2 text-muted">
                    Card subtitle
                  </h6>
                </div>
                <img className="img-fluid" src="images/big/img3.jpg" alt="" />
                <div className="card-body">
                  <p className="card-text">
                    This is a wider card with supporting text and below as a
                    natural lead-in to the additional content. This content is a
                    little bit longer.
                  </p>
                </div>
                <div className="card-footer">
                  <p className="card-text d-inline">
                    <small className="text-muted">
                      Last updated 3 mins ago
                    </small>
                  </p>
                  <a href="#" className="card-link float-right">
                    <small>Card link</small>
                  </a>
                </div>
              </div>
            </div>

            <div className="col-md-6 col-lg-3">
              <div className="card">
                <div className="card-header bg-white">
                  <h5 className="card-title">Card title</h5>
                  <h6 className="card-subtitle mb-2 text-muted">
                    Card subtitle
                  </h6>
                </div>
                <img className="img-fluid" src="images/big/img4.jpg" alt="" />
                <div className="card-body">
                  <p className="card-text">
                    This is a wider card with supporting text and below as a
                    natural lead-in to the additional content. This content is a
                    little bit longer.
                  </p>
                </div>
                <div className="card-footer">
                  <p className="card-text d-inline">
                    <small className="text-muted">
                      Last updated 3 mins ago
                    </small>
                  </p>
                  <a href="#" className="card-link float-right">
                    <small>Card link</small>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Dashboard;
