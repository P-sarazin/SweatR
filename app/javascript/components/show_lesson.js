const showLesson = () => {
  const pastLessons = document.querySelectorAll('.past-lesson');
  const showButton = document.getElementById('show-lesson-btn');

  if (showButton) {
    showButton.addEventListener('click', () => {
      pastLessons.forEach((pastLesson) => {
        pastLesson.classList.toggle('d-none');
      })
    })
  }
}

export { showLesson };
