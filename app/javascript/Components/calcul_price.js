const btn_calcul = document.querySelectorAll('.btn-calcul')
const prices = document.querySelectorAll('.prix-js')


if (btn_calcul != null) {
  btn_calcul.forEach((btn) => {
    btn.addEventListener('click', (event) => {
      const parent = btn.parentNode
      const price = parent.previousElementSibling.previousElementSibling.children[1].children[0].children[0].innerText
      const metres = parent.children[0].value
      const total_price = btn.nextElementSibling
      total_price.innerHTML = (price * metres) + '€'
    })
  })
}
