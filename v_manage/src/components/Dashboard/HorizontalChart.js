import React from "react";
import {
  ComposedChart,
  Line,
  Area,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  Scatter
} from "recharts";

const data = [
  {
    name: "Jan",
    views: 1800,
    attendees: 800,
    registrations: 1050,
    cnt: 490
  },
  {
    name: "Feb",
    views: 1600,
    attendees: 750,
    registrations: 1100,
    cnt: 590
  },
  {
    name: "Mar",
    views: 1350,
    attendees: 500,
    registrations: 750,
    cnt: 350
  },
  {
    name: "Apr",
    views: 1480,
    attendees: 700,
    registrations: 1100,
    cnt: 480
  },
  {
    name: "May",
    views: 1520,
    attendees: 950,
    registrations: 1300,
    cnt: 460
  },
  {
    name: "Jun",
    views: 1800,
    attendees: 1000,
    registrations: 1400,
    cnt: 380
  },
  {
    name: "Jul",
    views: 1204,
    attendees: 680,
    registrations: 880,
    cnt: 260
  },
  {
    name: "Aug",
    views: 1350,
    attendees: 720,
    registrations: 1100,
    cnt: 260
  },
  {
    name: "Sept",
    views: 1900,
    attendees: 1000,
    registrations: 1600,
    cnt: 260
  }
];

const HorizontalChart = () => {
  return (
    <ComposedChart
      width={1450}
      height={400}
      data={data}
      margin={{
        top: 20,
        right: 20,
        bottom: 20,
        left: 20
      }}
    >
      <CartesianGrid stroke="#f5f5f5" />
      <XAxis dataKey="name" />
      <YAxis />
      <Tooltip />
      <Legend />
      <Area type="monotone" dataKey="registrations" fill="#8884d8" stroke="#8884d8" />
      <Bar dataKey="attendees" barSize={20} fill="#413ea0" />
      <Line type="monotone" dataKey="views" stroke="#ff7300" />
      {/* <Scatter dataKey="cnt" fill="red" /> */}
    </ComposedChart>
  );
}

export default HorizontalChart