TABLE Years {
	ID int [pk, increment]
	Year int
}

TABLE Trimesters {
	ID int [pk, increment]
	TrimesterNumber int
	YearID int [ref: > Years.ID]
	TrimesterStart date
	TrimesterEnd date
}

TABLE Calendar {
  ID int [pk, increment]
	TheDate date 
	TheDay int 
	TheDayName nvarchar(30) 
	TheWeek int 
	TheISOWeek int 
	TheDayOfWeek int 
	TheMonth int 
	TheMonthName nvarchar(30) 
	TheQuarter int 
	TheYear int 
	TheFirstOfMonth date 
	TheLastOfYear date 
	TheDayOfYear int	
}

TABLE Schedule {
	ID int [pk, increment]
	DayName varchar(max) 
	SubjectID int [ref: > Subjects.ID]
	YearID int [ref: > Years.ID]
}

TABLE CalendarSchedule {
	ID int [pk, increment]
	CalendarID int [ref: > Calendar.ID]
	ScheduleID int [ref: > Schedule.ID]
}

TABLE Professors {
	ID int [pk, increment]
	ProfessorFirstName varchar(max) 
	ProfessorLastName varchar(max) 
}

TABLE Subjects {
	ID int [pk, increment]
	SubjectName varchar(max) 
	SubjectCode varchar(max) 
	ProfessorID int [ref: > Professors.ID]
}

TABLE Tasks {
	ID int [pk, increment]
	TaskName varchar(max) 
	TaskDesc varchar(max) 
	TaskType varchar(max) 
	TaskGrade float 
	CalendarScheduleID int [ref: > CalendarSchedule.ID]
}

TABLE Activities {
	ID int [pk, increment]
	ActivityName varchar(max) 
	ActivityDesc varchar(max) 
	ActivityType varchar(max) 
	ActivityGrade float 
	CalendarScheduleID int [ref: > CalendarSchedule.ID]
}
