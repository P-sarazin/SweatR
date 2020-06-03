import Chart from 'chart.js';

const sportChart = () => {
  const ctx = document.getElementById('mySports');
  if (ctx) {
    const booking_specialties = JSON.parse(ctx.dataset.booking);
    const myChart = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: Object.keys(booking_specialties),
            datasets: [{
                data: Object.values(booking_specialties),
                backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
                borderColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
                borderWidth: 1
            }]
        },
        options: {
              title: {
                display: true,
                text: 'Sessions per specialty'
              }
            }
    });
  }
}

export { sportChart };
