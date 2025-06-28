import { Controller } from "@hotwired/stimulus"
import { Grid } from "gridjs"
import { ruRU } from "gridjs/l10n"

export default class extends Controller {
  connect() {
    new Grid({
      search: true,
      sort: true,
      resizable: true,
      fixedHeader: true,
      language: ruRU,
      columns: ["Name", "Email", "Phone Number"],
      data: [
        ["John", "john@example.com", "(353) 01 222 3333"],
        ["Mark", "mark@gmail.com", "(01) 22 888 4444"],
        ["Eoin", "eoin@gmail.com", "0097 22 654 00033"],
        ["Sarah", "sarahcdd@gmail.com", "+322 876 1233"],
        ["Afshin", "afshin@mail.com", "(353) 22 87 8356"]
      ],
    }).render(this.element)
  }
}
