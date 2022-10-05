import "./App.css";
import Dashboard from "./components/Dashboard/Dashboard";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Login from "./components/Auth/Login";
import NoMatch from "./components/NoMatch";
import Events from "./components/Events/Events";
import Organizers from "./components/Organizer/Organizer";
import Profile from "./components/Organizer/Profile/Profile";
import Analytics from "./components/Anal/Anal";

function App() {
  // var isSignedIn = true;
  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Dashboard />} />
          <Route path="/events" element={<Events />} />
          <Route path="/organizers" element={<Organizers />} />
          <Route path="/analytics" element={<Analytics />} />
          <Route path="/login" element={<Login />} />
          <Route path="/profile" element={<Profile />} />
          <Route path="*" element={<NoMatch />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
