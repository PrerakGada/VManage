import React from "react";
import {
  ComposableMap,
  Geographies,
  Geography,
  ZoomableGroup,
  Marker,
  Annotation,
} from "react-simple-maps";

const geoUrl =
  "https://raw.githubusercontent.com/deldersveld/topojson/master/world-countries.json";

const MoveableMap = () => {
  return (
    <div>
      <ComposableMap projection="geoMercator">
        <ZoomableGroup center={[0, 0]} zoom={0.8}>
          <Geographies geography={geoUrl}>
            {({ geographies }) =>
              geographies.map((geo) => (
                <Geography key={geo.rsmKey} geography={geo} fill="#9c9c9c" />
              ))
            }
          </Geographies>
          <Marker coordinates={[72.8557, 19.1526]}>
            <circle r={1} fill="#000" />
            <text
              dx={-23}
              style={{
                fontFamily: "system-ui",
                fill: "#010101",
                fontSize: "0.5rem",
              }}
            >
              JALSA
            </text>
          </Marker>
          <Marker coordinates={[77.1025, 28.7041]}>
            <circle r={1} fill="#000" />
            <text
              dy={-2}
              //   y={markerOffset}
              style={{
                fontFamily: "system-ui",
                fill: "#010101",
                fontSize: "0.5rem",
              }}
            >
              Memory Workshop
            </text>
          </Marker>
          <Marker coordinates={[78.4867, 17.385]}>
            <circle r={1} fill="#000" />
            <text
              dy={-2}
              style={{
                fontFamily: "system-ui",
                fill: "#010101",
                fontSize: "0.5rem",
              }}
            >
              Tughlaq
            </text>
          </Marker>
          <Marker coordinates={[-74.006, 40.7128]}>
            <circle r={1} fill="#000" />
            <text
              dy={-2}
              style={{
                fontFamily: "system-ui",
                fill: "#010101",
                fontSize: "0.5rem",
              }}
            >
              StandUp by Vipul Goyal
            </text>
          </Marker>
          <Marker coordinates={[21.0122, 52.2297]}>
            <circle r={1} fill="#000" />
            <text
              dy={-2}
              style={{
                fontFamily: "system-ui",
                fill: "#010101",
                fontSize: "0.5rem",
              }}
            >
              Seminar by Raj Vikramaditya
            </text>
          </Marker>
        </ZoomableGroup>
      </ComposableMap>
    </div>
  );
};

export default MoveableMap;
