import React from "react";
import BannerBlocks from "./BannerBlocks";
import DataMap from "./DataMap";
import EventCards from "./EventCards";
import HoverTable from "./HoverTable";

const Dashboard = () => {
  return (
    <div>
      <BannerBlocks />
      <EventCards />
      <HoverTable />
      <DataMap />
    </div>
  );
};

export default Dashboard;
