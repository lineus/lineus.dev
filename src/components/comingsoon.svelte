<script>
  import { dayjs } from '$lib/dayjs.js';

  const launchDate = dayjs(new Date(2022, 3, 1));
  
  function calculateTimeDifferences() {
    return {
      days: launchDate.diff(dayjs(), 'day'),
      hours: launchDate.diff(dayjs(), 'hour'),
      minutes: launchDate.diff(dayjs(), 'minute'),
      seconds: launchDate.diff(dayjs(), 'second'),
    }
  }

  let tilLaunch = calculateTimeDifferences();

  setInterval(() => tilLaunch = calculateTimeDifferences(), 1000 );

</script>

<div id="wrapper">
  <div id="comingsoon">
    <h1 class="shadow">coming soon</h1>
    <span class="measurement shadow">
      <p> seconds until launch </p>
      <h5>{ tilLaunch.seconds }</h5>
    </span>
    <span class="measurement shadow">
      <p> minutes until launch </p>
      <h5>{ tilLaunch.minutes }</h5>
    </span>
    <span class="measurement shadow">
      <p> hours until launch </p>
      <h5>{ tilLaunch.hours }</h5>
    </span>
    <span class="measurement shadow">
      <p> days until launch </p>
      <h5>{ tilLaunch.days }</h5>
    </span>
  </div>
</div>

<style>
  #wrapper {
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  #comingsoon {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: stretch;
    background: #222;
    color: #ddd;
    width: 100vw;
    height: 100vh;
    text-transform: uppercase;
  }

  #comingsoon > h1 {
    text-align: center;
    width: 100%;
    font-size: 5rem;
    background: #ddd;
    color: #222;
    padding-left: 2rem;
    padding-right: 2rem;
    z-index: 5;
  }
  
  .shadow {
    box-shadow: 2px 5px 10px #222;
  }

  .measurement {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    align-items: center;
    color: #999;
    padding: 0 1rem 0 1rem;
    text-transform: inherit;
    border-bottom-right-radius: 5px;
  }

  .measurement:nth-of-type(1){
    background-color: #bbb;
    color: #666;
    width: 90vw;
    z-index: 4;
  }

  .measurement:nth-of-type(2){
    background-color: #aaa;
    color: #888;
    width: 72vw;
    z-index: 3;
  }

  .measurement:nth-of-type(3){
    background-color: #888;
    color: #bbb;
    width: 48vw;
    z-index: 2;
  }

  .measurement:nth-of-type(4){
    background-color: #555;
    color: #ccc;
    width: 30vw;
    z-index: 1;
  }

  span.measurement > p {
    font-size: 2rem;
  }

  span.measurement > h5 {
    font-size: 5rem;
  }
</style>