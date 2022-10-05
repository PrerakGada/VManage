import React from "react";
import Footer from "../Footer";
import Navbar from "../Navbar";
import OrganizerCard from "./OrganizerCard";
import { Link } from "react-router-dom";

const Organizer = () => {
  return (
    <>
      <Navbar />
      <div className="row">
        <Link to="/profile">
          <OrganizerCard name="Jay Jain" tokens="23" />
        </Link>
      </div>
      <Footer />
    </>
  );
};

export default Organizer;
