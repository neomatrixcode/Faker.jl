
 	const centuries = ("I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII", "XIII", "XIV", "XV", "XVI","XVII", "XVIII", "XIX", "XX", "XXI")

 	const year_top =2100

 	const ap = ("AM","PM")

 	unix_time()::Int= rand(0: Dates.datetime2unix(Dates.DateTime(Dates.now())))
 	iso8601()::DateTime = Dates.DateTime(rand(1970:year_top),rand(01:12),1,rand(01:23),rand(00:59),rand(00:59)) + Dates.Day(rand(01:31))
 	date_time(pattern::String="Y-m-d HH:MM:SS")::String = Dates.format(iso8601(), pattern)
 	date(pattern::String="Y-m-d")::String = Dates.format(iso8601(), pattern)
 	time(pattern::String="H:M:S")::String = Dates.format(Dates.DateTime(1,1,1,rand(01:23),rand(00:59),rand(00:59)), pattern)

function date_time_between(start_date::String="-30y", finish_date::String="now", pattern::String="Y-m-d HH:MM:SS")::String

 	init_date::DateTime = Dates.DateTime(Dates.now())
    end_date::DateTime = Dates.DateTime(Dates.now())

    if start_date != "now"
    	init_date = init_date + Dates.Year(parse(Int,start_date[1:end-1]))
    end

    if finish_date != "now"
    	end_date = end_date + Dates.Year(parse(Int,start_date[1:end-1]))
    end

	 return Dates.format(rand(collect(init_date:Day(1):end_date)), pattern)
end

function random_datetime(bf_now::Bool,af_now::Bool,time_start::DateTime,now_time::DateTime,time_finish::DateTime)::DateTime
    init_date::DateTime = now_time
    end_date::DateTime = now_time

    if bf_now
    	init_date = time_start
    end

    if af_now
    	end_date = time_finish
    end

    return rand(collect(time_start:Day(1):now_time))
end

function date_time_this_century(;before_now::Bool=true, after_now::Bool=false, pattern::String="Y-m-d HH:MM:SS")::String
	r::DateTime = Dates.DateTime(Dates.now())
	this_century_start::DateTime = Dates.DateTime((Int(Dates.year(r)) - (Dates.year(r) % 100)), 1, 1)
	this_century_finish::DateTime = (Dates.DateTime(Dates.year(this_century_start) + 100, 1, 1))-Dates.Day(1)

	return Dates.format(random_datetime(before_now,after_now,this_century_start,r,this_century_finish), pattern)
end

function  date_time_this_decade(;before_now::Bool=true, after_now::Bool=false, pattern::String="Y-m-d HH:MM:SS")::String
	r::DateTime = Dates.DateTime(Dates.now())
	this_decade_start::DateTime = Dates.DateTime((Int(Dates.year(r)) - (Dates.year(r) % 10)), 1, 1)
	this_decade_finish::DateTime = (Dates.DateTime(Dates.year(this_decade_start) + 10, 1, 1))-Dates.Day(1)

	return Dates.format(random_datetime(before_now,after_now,this_decade_start,r,this_decade_finish), pattern)
end

function date_time_this_year(;before_now::Bool=true, after_now::Bool=false, pattern::String="Y-m-d HH:MM:SS")::String
	r::DateTime = Dates.DateTime(Dates.now())
	this_year_start::DateTime = Dates.DateTime(Dates.year(r), 1, 1)
	this_year_finish::DateTime = this_year_start+Dates.Year(1)-Dates.Day(1)

	return Dates.format(random_datetime(before_now,after_now,this_year_start,r,this_year_finish), pattern)
end

function date_time_this_month(;before_now::Bool=true, after_now::Bool=false, pattern::String="Y-m-d HH:MM:SS")::String
	r::DateTime = Dates.DateTime(Dates.now())
	this_month_start::DateTime = r-Dates.Day(r)+Dates.Day(1)
	this_month_finish::DateTime = this_month_start+Dates.Month(1)-Dates.Day(1)

	return Dates.format(random_datetime(before_now,after_now,this_month_start,r,this_month_finish), pattern)
end

am_pm()::String = rand(ap)
day_of_month()::Int = rand(1:31)
day_of_week()::String = Dates.dayname(Date(2015,07,rand(12:18)))
months()::Int =rand(1:12)
month_name()::String = Dates.monthname(Date(2015,rand(1:12),15))
year()::Int =rand(1920:year_top)
century()::String = rand(centuries)
function timezone()::String
	executor(data["faker"]["address"]["time_zone"])
end
