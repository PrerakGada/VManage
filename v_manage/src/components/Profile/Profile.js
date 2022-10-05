import "./Profile.css";
import pfp from "../../assets/images/pfp.png";
import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  Cell,
} from "recharts";
import Navbar from "../Navbar";
import Footer from "../Footer";

function Profile() {
  const data = [
    {
      name: "Day 1 (15506)",
      Calories: 2035,
    },
    {
      name: "Day 2 (10544)",
      Calories: 1786,
    },
    {
      name: "Day 3 (9762)",
      Calories: 1745,
    },
    {
      name: "Day 4 (12669)",
      Calories: 1863,
    },
    {
      name: "Day 5 (9705)",
      Calories: 1728,
    },
    {
      name: "Day 6 10735",
      Calories: 1797,
    },
    {
      name: "Day 7 (9819)",
      Calories: 1775,
    },
  ];

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
                        <h3 className="mb-0">5'8</h3>
                        <p className="text-muted px-4">
                          <small>(in inches)</small>
                          <br />
                          Height
                        </p>
                      </div>
                    </div>
                    <div className="col">
                      <div className="card card-profile text-center">
                        <h3 className="mb-0">56</h3>
                        <p className="text-muted px-4">
                          <small>(in kgs)</small>
                          <br />
                          Weight
                        </p>
                      </div>
                    </div>
                    <div className="col">
                      <div className="card card-profile text-center">
                        <h3 className="mb-0">96/100</h3>
                        <p className="text-muted px-4">
                          <small>(in kcal burnt this week)</small>
                          <br />
                          Calories
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
                      <strong className="text-dark mr-4">Mobile</strong>{" "}
                      <span>+91 9867466628</span>
                    </li>
                    <li>
                      <strong className="text-dark mr-4">Email</strong>{" "}
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
              <div className="col-lg-3 col-md-6">
                <div className="card">
                  <div className="card-body px-0">
                    <h4 className="card-title px-4 mb-3">Goals This Week</h4>
                    <div className="todo-list">
                      <div className="tdl-holder">
                        <div className="tdl-content">
                          <ul id="todo_list">
                            <li>
                              <label>
                                <input type="checkbox" />
                                <span>Sukhasana for 5 mins</span>
                              </label>
                            </li>
                            <li>
                              <label>
                                <input type="checkbox" />
                                <span>Start having Green Tea</span>
                              </label>
                            </li>
                            <li>
                              <label>
                                <input type="checkbox" />
                                <span>Session with Coach</span>
                              </label>
                            </li>
                            <li>
                              <label>
                                <input type="checkbox" />
                                <span>Jog for 10 mins</span>
                              </label>
                            </li>
                          </ul>
                        </div>
                        <div className="px-4">
                          <input
                            type="text"
                            className="tdl-new form-control"
                            placeholder="Type a new goal and hit Enter"
                          />
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div className="chartss">
                <BarChart
                  width={700}
                  height={300}
                  data={data}
                  barCategoryGap={15}
                  margin={{
                    top: 5,
                    right: 30,
                    left: 20,
                    bottom: 5,
                  }}
                  padding={{
                    right: 30,
                    left: 20,
                  }}
                >
                  <defs>
                    <linearGradient
                      id="colorUv"
                      x1="100%"
                      y1="100%"
                      x2="0%"
                      y2="100%"
                      spreadMethod="reflect"
                    >
                      <stop offset="0" stopColor="#C58BF2" />
                      <stop offset="1" stopColor="#EEA4CE" />
                    </linearGradient>
                  </defs>
                  <CartesianGrid strokeDasharray="2 2" />
                  <XAxis dataKey="name" />
                  <YAxis dataKey="Calories" />
                  <Tooltip />
                  <Legend />
                  <Bar dataKey="Calories" radius={[20, 20, 20, 20]}>
                    {data.map((entry, index) => (
                      <Cell key={`cell-${index}`} fill={barColors[index % 2]} />
                    ))}
                  </Bar>
                </BarChart>
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
