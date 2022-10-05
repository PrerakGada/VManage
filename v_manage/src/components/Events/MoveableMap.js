import React from "react";
import {
  ComposableMap,
  Geographies,
  Geography,
  ZoomableGroup,
  Marker,
} from "react-simple-maps";

const geoUrl =
  "https://raw.githubusercontent.com/deldersveld/topojson/master/world-countries.json";

const MoveableMap = () => {
  return (
    <div>
      <ComposableMap projection="geoMercator">
        <ZoomableGroup center={[0, 0]} zoom={0.80}>
          <Geographies geography={geoUrl}>
            {({ geographies }) =>
              geographies.map((geo) => (
                <Geography key={geo.rsmKey} geography={geo} fill="#9c9c9c" />
              ))
            }
          </Geographies>
          <Marker coordinates={[73.5, 19]}>
            <circle r={1} fill="#FF5533" />
            <text
              textAnchor="middle"
            //   y={markerOffset}
              style={{ fontFamily: "system-ui", fill: "#FF0000", fontSize: "0.3rem" }}
            >
                Mumbai
            </text>
          </Marker>
          <Marker coordinates={[20, 50]}>
            <circle r={1} fill="#FF5533" />
            <text
              textAnchor="middle"
            //   y={markerOffset}
              style={{ fontFamily: "system-ui", fill: "#FF0000", fontSize: "0.3rem" }}
            >
                Warsaw
            </text>
          </Marker>
          <Marker coordinates={[-75, 40]}>
            <circle r={1} fill="#FF5533" />
            <text
              textAnchor="middle"
            //   y={markerOffset}
              style={{ fontFamily: "system-ui", fill: "#FF0000", fontSize: "0.3rem" }}
            >
                Philadelphia
            </text>
          </Marker>
        </ZoomableGroup>
      </ComposableMap>
    </div>
  );
};

export default MoveableMap;
