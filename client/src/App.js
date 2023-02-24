import './App.css';
import React from "react"
import { Routes , Route, BrowserRouter as Router} from "react-router-dom"
import LoginForm from "./Login/LoginForm.js"
import SignUp from "./SignUp/SignUp.js"

function App() {

  return (
    <Router>
      <Routes>
        <Route
          exact path="/"
          element={<LoginForm/>}
        />
        <Route
          exact path="/signup"
          element={<SignUp/>}
        />
      </Routes>
    </Router>
  );
}

export default App;