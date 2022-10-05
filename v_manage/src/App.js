import "./App.css";
import Dashboard from "./components/Dashboard/Dashboard";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Login from "./components/Auth/Login";
import SignUp from "./components/Auth/SignUp";
import NoMatch from "./components/NoMatch";
import Profile from "./components/Profile/Profile";
import Footer from "./components/Footer";
import SimpleMap from "./components/SimpleMap";
import MarkerMap from "./components/MarkerMap";
import VerticalChart from "./components/Dashboard/VerticalChart";
import StackedAreaChart from "./components/Dashboard/AreaChart";
import MoveableMap from "./components/MoveableMap";

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Dashboard />} />
          <Route path="/login" element={<Login />} />
          <Route path="/signup" element={<SignUp />} />
          <Route path="/profile" element={<Profile />} />
          <Route path="*" element={<NoMatch />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
