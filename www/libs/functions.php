<?php 

function isAdmin(){
	if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 && $_SESSION['role'] == "admin") {
		return true;
	} else {
		return false;	
	}	
}

function isUser(){
	if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 && $_SESSION['role'] == "user") {
		return true;
	} else {
		return false;	
	}	
}

function isLoggedIn(){
	if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1) {
		return true;
	} else {
		return false;	
	}	
}


function rus_date() {
    $translate = array(
    "am" => "дп",
    "pm" => "пп",
    "AM" => "ДП",
    "PM" => "ПП",
    "Monday" => "Понедельник",
    "Mon" => "Пн",
    "Tuesday" => "Вторник",
    "Tue" => "Вт",
    "Wednesday" => "Среда",
    "Wed" => "Ср",
    "Thursday" => "Четверг",
    "Thu" => "Чт",
    "Friday" => "Пятница",
    "Fri" => "Пт",
    "Saturday" => "Суббота",
    "Sat" => "Сб",
    "Sunday" => "Воскресенье",
    "Sun" => "Вс",
    "January" => "Января",
    "Jan" => "Янв",
    "February" => "Февраля",
    "Feb" => "Фев",
    "March" => "Марта",
    "Mar" => "Мар",
    "April" => "Апреля",
    "Apr" => "Апр",
    "May" => "Мая",
    "May" => "Мая",
    "June" => "Июня",
    "Jun" => "Июн",
    "July" => "Июля",
    "Jul" => "Июл",
    "August" => "Августа",
    "Aug" => "Авг",
    "September" => "Сентября",
    "Sep" => "Сен",
    "October" => "Октября",
    "Oct" => "Окт",
    "November" => "Ноября",
    "Nov" => "Ноя",
    "December" => "Декабря",
    "Dec" => "Дек",
    "st" => "ое",
    "nd" => "ое",
    "rd" => "е",
    "th" => "ое"
    );
    
    if (func_num_args() > 1) {
        $timestamp = func_get_arg(1);
        return strtr(date(func_get_arg(0), $timestamp), $translate);
    } else {
        return strtr(date(func_get_arg(0)), $translate);
    }
}

function getTermination ($num) {
    // Get the last two digits from the number
    $number = substr($num, -2);


    if($number > 10 and $number < 15) { // 11 - 14 the termination is 'ев'
        $term = "ев";
    }
    else {  // Otherwise get the termination by the last digit rule..            
        $number = substr($number, -1);

        if($number == 0) {$term = "ев";}
        if($number == 1 ) {$term = "й";}
        if($number > 1 ) {$term = "я";}
        if($number > 4 ) {$term = "ев";}
    }
    echo $term;
}


function adopt($text) {
    return '=?UTF-8?B?'.base64_encode($text).'?=';
}

?>