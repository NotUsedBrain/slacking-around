import * as $ from 'jquery'
import daterangepicker from 'daterangepicker';

$( document ).on('turbolinks:load', function() {
  $('.datepicker').daterangepicker({
    singleDatePicker: true,
    timePicker: true,
    startDate: moment().startOf('hour'),
    endDate: moment().startOf('hour').add(32, 'hour'),
    locale: {
      format: 'M/DD hh:mm A'
    }
  });
})
