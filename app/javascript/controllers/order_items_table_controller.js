import { Controller } from "@hotwired/stimulus"
import { Grid, h } from "gridjs"
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
        {name: "id", hidden: true},
        "Название",
        "Описание",
        "Цена",
        { name: "Дата создания", formatter: date => this._formatDate(date) },
        { name: "Дата обновления", formatter: date => this._formatDate(date) },
        {
          name: "Действия",
          formatter: (_cell, row) => {
            const id = row._cells[0].data
            return h("div", { className: "flex space-x-2" }, [
              h("a", {
                href: `/order_items/${id}/edit`,
                "data-turbo-stream": true,
                className: "py-2 px-4 border rounded-md text-white bg-blue-600",
              }, "Редактировать"),

              h("a", {
                href: `/order_items/${id}`,
                "data-turbo-method": "delete",
                "data-turbo-confirm": "Вы уверены?",
                className: "py-2 px-4 border rounded-md text-white bg-red-600",
              }, "Удалить")
            ]);
          }
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
