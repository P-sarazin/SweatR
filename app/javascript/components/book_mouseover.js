const bookMouseover = () => {
  const cards = document.querySelectorAll('.card-product')
  cards.forEach((card) => {
    const bookButton = card.querySelector('.card-category-center')
    if (bookButton) {
      card.addEventListener("mouseover", () => {
        bookButton.classList.remove('d-none')
      })
      card.addEventListener("mouseleave", () => {
        bookButton.classList.add('d-none')
      })
    }
  })
}

export { bookMouseover };
