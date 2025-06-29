import { Controller } from "@hotwired/stimulus"
import { Grid } from "gridjs"
import { ruRU } from "gridjs/l10n"

export default class OrderItemsTableController extends Controller {
  connect() {
    new Grid({
      search: true,
      sort: true,
      resizable: true,
      fixedHeader: true,
      language: ruRU,
      columns: [
        "Название",
        "Описание",
        "Цена",
        {
          name: "Дата создания",
          formatter: date => this._formatDate(date)
        },
        {
          name: "Дата обновления",
          formatter: date => this._formatDate(date)
        }
      ],
      pagination: {
        limit: 20
      },
      server: {
        url: "/api/order_items",
        then: data => data
      }
    }).render(this.element)
  }

  _formatDate(isoString) {
    const date = new Date(isoString)
    const day = String(date.getDate()).padStart(2, "0")
    const month = String(date.getMonth() + 1).padStart(2, "0")
    const year = date.getFullYear()
    const hours = String(date.getHours()).padStart(2, "0")
    const minutes = String(date.getMinutes()).padStart(2, "0")

    return `${day}.${month}.${year} ${hours}:${minutes}`
  }
}
