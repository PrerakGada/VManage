import React from "react";
import Footer from "../Footer";
import Navbar from "../Navbar";
import OrganizerCard from "./OrganizerCard";
import { Link } from "react-router-dom";

const Organizer = () => {
  return (
    <>
      <Navbar />
      <h1 className="d-inline">Organizers</h1>
      <div className="row">
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="Jay Jain" tokens="23" />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="Jay Jain" tokens="23" />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="Jay Jain" tokens="23" />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="Jay Jain" tokens="23" />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="Jay Jain" tokens="23" />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="Jay Jain" tokens="23" />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="Jay Jain" tokens="23" />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="Jay Jain" tokens="23" />
          </Link>
        </div>
      </div>
      <Footer />
    </>
  );
};

export default Organizer;
