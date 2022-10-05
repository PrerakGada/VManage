import "./Profile.css";
import pfp from "../../../assets/images/pfp.png";
import Navbar from "../../Navbar";
import Footer from "../../Footer";

function Profile() {
  const barColors = ["#92A3FD", "#C58BF2"];
  return (
    <div>
      <Navbar />
      <div className="content-body">
        <div className="container-fluid">
          <div className="row">
            <div className="col-lg-4 col-xl-3">
              <div className="card">
                <div className="card-body">
                  <div className="media align-items-center mb-4">
                    <img
                      className="mr-3"
                      src={pfp}
                      width="80"
                      height="80"
                      alt=""
                    />
                    <div className="media-body">
                      <h3 className="mb-0">Jay Jain</h3>
                      <p className="text-muted mb-0">Mumbai, India</p>
                    </div>
                  </div>

                  <div className="row mb-5">
                    <div className="col">
                      <div className="card card-profile text-center">
                        <span className="mb-1 text-primary">
                          <i className="icon-people"></i>
                        </span>
                        <h3 className="mb-0">3</h3>
                        <p className="text-muted px-4">
                          <small></small>
                          <br />
                          Events Organised
                        </p>
                      </div>
                    </div>
                    <div className="col-12 text-center">
                      <button className="btn btn-danger px-5">
                        Follow Now
                      </button>
                    </div>
                  </div>
                  <h4>About Me</h4>
                  <p className="text-muted">
                    Hi, I'm Jay Jain. Working as a developer
                  </p>
                  <ul className="card-profile__info">
                    <li className="mb-1">
                      <strong className="text-dark mr-4">Mobile</strong>
                      <span>+91 9867466628</span>
                    </li>
                    <li>
                      <strong className="text-dark mr-4">Email</strong>
                      <span>jay4codes@gmail.com</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div className="col-lg-8 col-xl-9">
              <div className="card">
                <div className="card-body">
                  <form action="#" className="form-profile">
                    <div className="form-group">
                      <textarea
                        className="form-control"
                        name="textarea"
                        id="textarea"
                        cols="30"
                        rows="2"
                        placeholder="Tell us something about yourself"
                      ></textarea>
                    </div>
                    <div className="d-flex align-items-center">
                      <button className="btn btn-primary px-3 ml-4">
                        Submit
                      </button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <Footer />
    </div>
  );
}

export default Profile;
