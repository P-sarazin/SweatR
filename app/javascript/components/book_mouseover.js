const bookMouseover = () => {
  const cards = document.querySelectorAll('.card-product')
  cards.forEach((card) => {
    const bookButton = card.querySelector('.card-category-bottom-right')
    card.addEventListener("mouseover", () => {
      bookButton.classList.remove('d-none');
    })
    card.addEventListener("mouseleave", () => {
      bookButton.classList.add('d-none');
    })
  })
}

export { bookMouseover };
