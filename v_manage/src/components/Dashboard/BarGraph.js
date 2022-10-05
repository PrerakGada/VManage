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
      name: "Day 1 (15506)",
      Calories: 2035,
    },
    {
      name: "Day 2 (10544)",
      Calories: 1786,
    },
    {
      name: "Day 3 (9762)",
      Calories: 1745,
    },
    {
      name: "Day 4 (12669)",
      Calories: 1863,
    },
    {
      name: "Day 5 (9705)",
      Calories: 1728,
    },
    {
      name: "Day 6 10735",
      Calories: 1797,
    },
    {
      name: "Day 7 (9819)",
      Calories: 1775,
    },
  ];

  const barColors = ["#92A3FD", "#C58BF2"];
  return (
    <div>
      {" "}
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
          <YAxis dataKey="Calories" />
          <Tooltip />
          <Legend />
          <Bar dataKey="Calories" radius={[20, 20, 20, 20]}>
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
