import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";

import "channels";
import "../src/scripts/script";

import "../src/styles/main.css";

Rails.start();
Turbolinks.start();
ActiveStorage.start();
