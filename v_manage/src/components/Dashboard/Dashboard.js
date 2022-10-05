import React from "react";
import BannerBlocks from "./BannerBlocks";
import DataMap from "./DataMap";
import EventCards from "./EventCards";
import HoverTable from "./HoverTable";
import Navbar from "../Navbar";
import Footer from "../Footer";

const Dashboard = () => {
  return (
    <div>
      <Navbar />
      <BannerBlocks />
      <EventCards />
      <HoverTable />
      <DataMap />
      <Footer />
    </div>
  );
};

export default Dashboard;
