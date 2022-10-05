import React from "react";
import Footer from "../Footer";
import Navbar from "../Navbar";
import AreaChart from "./AreaChart";
import BarGraph from "./BarGraph";

const Anal = () => {
  return (
    <div>
      <Navbar />
      <br />
      <h1 style={{ textAlign: "center" }}>Monthly Active Users</h1>
      <br />
      <BarGraph />
      <br />
      <h2 style={{ textAlign: "center" }}>
        More Analytics Coming Soon... Stay Tuned 🔥
      </h2>
      <Footer />
    </div>
  );
};

export default Anal;
