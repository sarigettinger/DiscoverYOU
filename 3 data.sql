use DiscoverYou
go 
delete personalities 
go 
insert Personalities(ClientName,DOB,DateTestTaken,Gender,ExtrovertScore,introvertScore,sensingscore,intuitivescore,ThinkingScore,FeelingScore,JudgingScore,PercievingScore,BroughtReport,NumofCounselingSessions,PaymentMethod)
select 'Shani Kalusyzner', '05/25/2004', '11/21/2023', 'female', 0, 28, 30, 70, 40, 60, 15, 85, 1, 90, 'venmo'
union select 'Raizy Kirzner', '04/19/1998', '09/22/2022', 'female', 20, 80, 57, 43, 68, 32, 40, 60, 0, 0, null
union select 'Fraidy Levin', '08/10/2010', '11/15/2023', 'female', 95, 5, 87, 13, 22, 78, 45, 55, 1, 3, 'credit card'
union select 'Yehudah Greenberg', '04/03/1999', '11/20/2023', 'male', 67, 33, 48, 52, 19, 81, 56, 44, 0, 2, 'credit card'
union select 'Nachman Teren', '10/10/1967', '08/23/2023', 'male', 44, 56, 29, 71, 89, 11, 78, 22, 1, 1, 'zelle'
union select 'Miriam Felder', '05/12/2004', '1/25/2021', 'female', 40, 60, 55, 45, 10, 90, 20, 80, 1, 1, 'zelle'




select * from personalities