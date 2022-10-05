import React from "react";
import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  Cell,
} from "recharts";

function BarGraph() {
  const data = [
    {
      name: "Jan",
      monthlyActiveUsers: 2400,
    },
    {
      name: "Feb",
      monthlyActiveUsers: 2300,
    },
    {
      name: "Mar",
      monthlyActiveUsers: 2800,
    },
    {
      name: "Apr",
      monthlyActiveUsers: 3000,
    },
    {
      name: "May",
      monthlyActiveUsers: 2600,
    },
    {
      name: "Jun",
      monthlyActiveUsers: 3200,
    },
    {
      name: "Jul",
      monthlyActiveUsers: 3333,
    },
    {
      name: "Aug",
      monthlyActiveUsers: 3567,
    },
    {
      name: "Sept",
      monthlyActiveUsers: 4015,
    },
  ];

  const barColors = ["#92A3FD", "#C58BF2"];
  return (
    <div>
      <div className="chartss">
        <BarChart
          width={700}
          height={300}
          data={data}
          barCategoryGap={15}
          margin={{
            top: 5,
            right: 30,
            left: 20,
            bottom: 5,
          }}
          padding={{
            right: 30,
            left: 20,
          }}
        >
          <defs>
            <linearGradient
              id="colorUv"
              x1="100%"
              y1="100%"
              x2="0%"
              y2="100%"
              spreadMethod="reflect"
            >
              <stop offset="0" stopColor="#C58BF2" />
              <stop offset="1" stopColor="#EEA4CE" />
            </linearGradient>
          </defs>
          <CartesianGrid strokeDasharray="2 2" />
          <XAxis dataKey="name" />
          <YAxis dataKey="monthlyActiveUsers" />
          <Tooltip />
          <Legend />
          <Bar dataKey="monthlyActiveUsers" radius={[20, 20, 20, 20]}>
            {data.map((entry, index) => (
              <Cell key={`cell-${index}`} fill={barColors[index % 2]} />
            ))}
          </Bar>
        </BarChart>
      </div>
    </div>
  );
}

export default BarGraph;
