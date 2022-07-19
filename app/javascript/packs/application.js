import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";

import "channels";
import "../src/scripts/script";
import "../src/scripts/fetch";
import "../src/scripts/swiper_carousel";
import "../src/scripts/swiper_card";
import "../src/scripts/video_play";
import "../src/scripts/flash_messages";
import "../src/scripts/like";

import "../src/styles/main.css";

Rails.start();
Turbolinks.start();
ActiveStorage.start();
