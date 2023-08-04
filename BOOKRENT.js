/* 
*
*/
const start = document.forms[0].start
const end = document.forms[0].end
const days = document.forms[0].days
	
	document.getElementById('대여').addEventListener('click', calculateEnd)

function dateFormat() {
	const today = new Date();
	const end = today.getFullYear();
	const days = String(today.getDate()+14).padStart()
}

let today = new Date()
start.value = dateFormat(today, '-');

let endDate = new Date()
end.value = dateFormat(today, '-');

function calculateEnd() {
	console.log(start.value)
	console.log(end.value)
	console.log(days.value)
}