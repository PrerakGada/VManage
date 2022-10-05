import React from "react";
import BannerBlocks from "./BannerBlocks";
import EventCards from "../Events/EventCards";
import HoverTable from "./HoverTable";
import HorizontalChart from "./HorizontalChart";
import Navbar from "../Navbar";
import Footer from "../Footer";

const Dashboard = () => {
  return (
    <div>
      <Navbar />
      <BannerBlocks />
      <HorizontalChart />
      <EventCards />
      <HoverTable />
      <Footer />
    </div>
  );
};

export default Dashboard;
