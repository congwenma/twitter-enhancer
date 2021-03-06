import React from "react";
import ReactDOM from "react-dom";
import "basscss/css/basscss.css";
import "flexboxgrid";
import "./index.scss";

import registerServiceWorker from "./registerServiceWorker";
import theme from "./theme";
import App from "./app";

// material ui
import { MuiThemeProvider } from "@material-ui/core/styles";

ReactDOM.render(
  <MuiThemeProvider theme={theme}>
    <div className="app">
      <App />
    </div>
  </MuiThemeProvider>,
  document.getElementById("root")
);

registerServiceWorker();
