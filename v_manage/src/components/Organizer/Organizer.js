import React from "react";
import Footer from "../Footer";
import Navbar from "../Navbar";
import OrganizerCard from "./OrganizerCard";
import { Link } from "react-router-dom";
import face1 from "../../assets/images/face-1.jpg";
import face2 from "../../assets/images/face-2.jpg";
import face3 from "../../assets/images/face-3.jpg";
import face4 from "../../assets/images/face-4.jpg";
import face5 from "../../assets/images/face-5.jpg";
import face6 from "../../assets/images/face-6.jpg";
import face7 from "../../assets/images/face-7.jpg";
import face8 from "../../assets/images/face-8.png";
const Organizer = () => {
  return (
    <>
      <Navbar />
      <h1 className="d-inline">Organizers</h1>
      <div className="row">
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="John Doe" tokens="18" image={face1} />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="John Doe" tokens="21" image={face2} />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="John Doe" tokens="34" image={face3} />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="John Doe" tokens="25" image={face4} />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="John Doe" tokens="28" image={face5} />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="John Doe" tokens="22" image={face6} />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="John Doe" tokens="33" image={face7} />
          </Link>
        </div>
        <div className="col-lg-3 col-sm-6">
          <Link to="/profile">
            <OrganizerCard name="John Doe" tokens="38" image={face8} />
          </Link>
        </div>
      </div>
      <Footer />
    </>
  );
};

export default Organizer;
