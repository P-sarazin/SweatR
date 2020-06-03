import Chart from 'chart.js';

const bookingChart = () => {
  const ctx = document.getElementById('myChart');
  if (ctx) {
    const TodayDate = new Date();
    const monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    const months = [monthNames[TodayDate.getMonth()-3], monthNames[TodayDate.getMonth()-2], monthNames[TodayDate.getMonth()-1], monthNames[TodayDate.getMonth()]];
    const myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: months,
            datasets: [{
                label: '# of Bookings',
                data: JSON.parse(ctx.dataset.booking),
                backgroundColor: [
                    '#FF6A80',
                    '#FF6A80',
                    '#FF6A80',
                    '#FF6A80'
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

export { bookingChart };
