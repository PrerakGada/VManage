import React from "react";
import Footer from "../Footer";
import Navbar from "../Navbar";
import EventCards from "./EventCards";
import MoveableMap from "./MoveableMap";

const Events = () => {
  return (
    <div>
      <Navbar />
      <EventCards />
      <MoveableMap />
      <Footer />
    </div>
  );
};

export default Events;
