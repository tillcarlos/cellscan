// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import DebounceController from "./debounce_controller"
application.register("debounce", DebounceController)

import FilterCheckboxesController from "./filter_checkboxes_controller"
application.register("filter-checkboxes", FilterCheckboxesController)

import DropdownController from "./dropdown_controller"
application.register("dropdown", DropdownController)

import SearchSelectController from "./search_select_controller"
application.register("search-select", SearchSelectController)