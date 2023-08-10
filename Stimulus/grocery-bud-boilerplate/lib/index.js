import { Application, Controller } from 'stimulus';
window.Stimulus = Application.start()

import ListController from "./controllers/list_controller.js"
Stimulus.register("list", ListController)

import ListItemController from "./controllers/list_item_controller.js"
Stimulus.register("list-item", ListItemController)
