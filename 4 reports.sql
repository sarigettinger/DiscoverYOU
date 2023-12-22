--1) I want to know which personality types are most likely to pay for the report. Show which 4-letter types have bought the most full reports
    -- in proportion with how many of them have taken the test. (the three biggest buyers)
select top 3 p.fourletterpersonalitytype, p.broughtreport, sum(p.OweForReport + p.OweForCounseling)
from personalities p
where p.BroughtReport > 0
group by p.FourLetterPersonalityType, p.BroughtReport
order by p.BroughtReport desc 

select * from Personalities
/*2) Which personality type seems to be more common based on the data of our test-takers-
    Extrovert or Introvert?
    Sensing or Intuitive?
    Thinking or Feeling?
    Judging or Percieving?*/


select ExtrovertorIntrovert = case when avg(p.ExtrovertScore) > avg(p.introvertScore) then 'Extrovert'
            when avg(p.introvertScore) > avg(p.ExtrovertScore) then 'Introvert'
        end,
        SensingorIntuitive = case when avg(p.sensingscore) > avg(p.intuitivescore) then 'Sensing'
             when avg(p.intuitivescore) > avg(p.sensingscore) then 'Intuitive'
        end,
        ThinkingorFeeling = case when avg(p.ThinkingScore) > avg(p.FeelingScore) then 'Thinking'
             when avg(p.ThinkingScore) < avg(p.FeelingScore) then 'Feeling'
        end,
        JudgingorPercieving = case when avg(p.JudgingScore) > avg(p.PercievingScore) then 'Judging'
             when avg(p.JudgingScore) < avg(p.PercievingScore) then 'Judging'
        end
from personalities p


--3) I want a bill of the total that each user owes me. The customers should be identified by their last name, four-letter type, and payment method. 
    --The total I'm owed should be in a separate column.
select clientname = concat(SUBSTRING(p.ClientName,CHARINDEX(' ',p.clientname) + 1,100),' ',p.FourLetterPersonalityType,' ',p.paymentmethod), amountowe = p.OweForReport + p.OweForCounseling
from personalities p 
where p.paymentmethod is not null 
--4) Recently, there has been a school of thought that men are just as emotional as women. To prove or disprove this, I want to know how many people are Ts 
    --and how many are Fs, separated by gender and age bracket (under 18, 18-25, 26-40, 41-65, over 65)

select HaveF = avg(CHARINDEX('f',p.FourLetterPersonalityType)), HaveT = avg(CHARINDEX('t',p.FourLetterPersonalityType)), p.gender, 
    AgeBraket = case when datediff(year,p.dob,p.DateTestTaken) < 18 then 'Under 18' 
        when datediff(year,p.dob,p.DateTestTaken) between 18 and 25 then '18-25'
        when datediff(year,p.dob,p.DateTestTaken) between 26 and 40 then '26-40'
        when datediff(year,p.dob,p.DateTestTaken) between 41 and 65 then '41-65'
        when datediff(year,p.dob,p.DateTestTaken) > 65 then 'Over 65'
    end 
from personalities p
group by p.gender, case when datediff(year,p.dob,p.DateTestTaken) < 18 then 'Under 18' 
        when datediff(year,p.dob,p.DateTestTaken) between 18 and 25 then '18-25'
        when datediff(year,p.dob,p.DateTestTaken) between 26 and 40 then '26-40'
        when datediff(year,p.dob,p.DateTestTaken) between 41 and 65 then '41-65'
        when datediff(year,p.dob,p.DateTestTaken) > 65 then 'Over 65'
    end 



select * from personalities p
