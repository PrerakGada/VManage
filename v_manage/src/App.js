import "./App.css";
import Dashboard from "./components/Dashboard/Dashboard";
import Navbar from "./components/Navbar";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Login from "./components/Auth/Login";
import SignUp from "./components/Auth/SignUp";
import NoMatch from "./components/NoMatch";
import Footer from "./components/Footer";
import SimpleMap from "./components/SimpleMap";
import MarkerMap from "./components/MarkerMap";
import VerticalChart from "./components/Dashboard/VerticalChart";
import StackedAreaChart from "./components/Dashboard/AreaChart";
import MoveableMap from "./components/MoveableMap";
import HorizontalChart from "./components/Dashboard/HorizontalChart";
import PieChartHover from "./components/Dashboard/PieChartHover";

function App() {
  return (
    <div className="App">
      <Navbar />
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Dashboard />} />
          <Route path="/login" element={<Login />} />
          <Route path="/signup" element={<SignUp />} />
          <Route path="/map" element={<SimpleMap />} />
          <Route path="/marker" element={<MarkerMap />} />
          <Route path="/vertical-chart" element={<VerticalChart />} />
          <Route path="/horizontal-chart" element={<HorizontalChart />} />
          <Route path="/pie-chart" element={<PieChartHover />} />
          <Route path="/area-chart" element={<StackedAreaChart />} />
          <Route path="/move-map" element={<MoveableMap />} />
          <Route path="*" element={<NoMatch />} />
        </Routes>
      </BrowserRouter>
      <Footer />
    </div>
  );
}

export default App;
