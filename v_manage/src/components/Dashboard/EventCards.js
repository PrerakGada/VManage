import React from "react";
import EventCardSingle from "./EventCardSingle";
import memory from "../../assets/images/memory.jpg";
import navratri from "../../assets/images/navratri.jpg";
import tughlaq from "../../assets/images/tughlaq.jpg";
import vipul from "../../assets/images/vipul.jpg";

const EventCards = () => {
  return (
    <div>
      <div className="row">
        <div className="col-12 m-b-30">
          <h4 className="d-inline">Events</h4>
          <p className="text-muted">This weekend</p>
          <div className="row">
            <EventCardSingle
              title="Join the Jalsa"
              dateTime="7-10-2022"
              about="Navratri is the festival that opens the door to all grand festivals, and we can't stress enough on how much we missed dressing up in our ghagra-cholis, kedias and kafnis to head out to the grounds for some Garba. For all of you that can’t wait to bring out your ghagras and dhotis, worry no more as Navratri is almost here! We've put together some experiences for you to enjoy this Navratri."
              registered="248"
              img={navratri}
            />
            <EventCardSingle
              title="Super Memory Workshop"
              dateTime="7-10-2022"
              about="We at Super Mind Memory works very hard on developing Learning and Memory capacity through Scientific Learning Methods, Whosoever adopts, can excel in any area of Life."
              registered="132"
              img={memory}
            />
            <EventCardSingle
              title="Tughlaq - A rehearsed reading"
              dateTime="8-10-2022"
              about="Avchetan Theatre presents a rehearsed reading of classical play 'Tughlaq' written by Girish Karnad. Tughlaq is about an idealist 14th-century Sultan of Delhi, Muhammad bin Tughlaq, which started with ambitious idealism and ended up in disillusionment. In the play, the protagonist, Tughlaq, is portrayed as having great ideas and a grand vision."
              registered="84"
              img={tughlaq}
            />
            <EventCardSingle
              title="StandUp by Vipul Goyal"
              dateTime="8-10-2022"
              about="Humorously Yours Vipul Goyal will be bringing over an hour of his best jokes, making this the best way to start your weekend.
              Vipul`s stand-up is relatable for all groups and persuasions - young and old, loaded or broke, desi or NRI. Book your tickets now!
              Please note - Vipul will be performing the same content/jokes which he has been performing for the last 2 years. Please avoid watching this show if you`ve watched him live in the past 2 years since the content will be the same."
              registered="100"
              img={vipul}
            />
          </div>
        </div>
      </div>
    </div>
  );
};

export default EventCards;
