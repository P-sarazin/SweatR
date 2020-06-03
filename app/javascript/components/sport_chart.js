import Chart from 'chart.js';

const sportChart = () => {
  const ctx = document.getElementById('mySports');
  if (ctx) {
    const booking_specialties = JSON.parse(ctx.dataset.booking);
    const monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    const months = [monthNames[TodayDate.getMonth()-3], monthNames[TodayDate.getMonth()-2], monthNames[TodayDate.getMonth()-1], monthNames[TodayDate.getMonth()]];
    const myChart = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: booking_specialties.keys,
            datasets: [{
                data: booking_specialties.values,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 99, 132, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(255, 99, 132, 1)',
                    'rgba(255, 99, 132, 1)',
                    'rgba(255, 99, 132, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
  }
}

export { sportChart };
