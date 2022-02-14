$(document).ready(function() {
	$('#dob').datepicker({
		onSelect: function(value, ui) {
			var today = new Date(),
				dob = new Date(value),
				age = today.getFullYear() - ui.selectedYear;
			var age_year = Math.floor((today - dob) / 31536000000);
			var age_month = Math.floor(((today - dob) % 31536000000) / 2628000000);
			var age_day = Math.floor((((today - dob) % 31536000000) % 2628000000) / 86400000);



			if (age_year > 0) {
				$('#age').val(age_year);
				$('#year').text("Year");
				$('#year').val("Year");
			} else if (age_month > 0) {
				$('#age').val(age_month);
				$('#year').text("Month");
				$('#year').val("Month");

			} else {
				$('#age').val(age_day);
				$('#year').text("Day");
				$('#year').val("Day");
			}
		},
		maxDate: '+0d',
		yearRange: '1920:2022',
		changeMonth: true,
		changeYear: true
	});
});

function ageFunction(e) {
	document.getElementById("p_age").value = e.target.value
}
