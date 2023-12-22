use discoveryou
go 
drop table if exists dbo.Personalities
go 
create table dbo.Personalities(
    PersonalityId int not null IDENTITY primary key,
    ClientName varchar(50) not null unique constraint personalities_client_name_cannot_be_blank check(clientname <> ''),
    DOB date not null ,
    DateTestTaken date not null constraint c_personalities_datetakentest_must_be_after_Jan_24_2021 check(DateTestTaken > '1-24-2021'),
    Gender varchar(6) not null constraint c_personalities_gender_has_to_be_Male_or_Female check(Gender in ('Male','Female')),
    ExtrovertScore decimal(4,2) not null,
    IntrovertScore decimal(4,2) not null,
    SensingScore decimal(4,2) not null, 
    IntuitiveScore decimal(4,2) not null,
    ThinkingScore decimal(4,2) not null,
    FeelingScore decimal(4,2) not null,
    JudgingScore decimal(4,2) not null,
    PercievingScore decimal(4,2) not null,
    BroughtReport bit default 0,
    NumofCounselingSessions int not null,
    PaymentMethod varchar(15) null constraint c_personalities_paymentmethod_must_be_credit_card_zelle_venmo check(PaymentMethod in ('credit card','zelle','venmo')),
    FourLetterPersonalityType as concat(
            case when ExtrovertScore > introvertScore then 'E' else 'I' end,
            case when sensingscore > intuitivescore then 'S' else 'N' end,
            case when ThinkingScore > FeelingScore then 'T' else 'F' end,
            case when JudgingScore > PercievingScore then 'J' else 'P' end) persisted,
    OweForReport  as case when broughtreport = 1 then 14.99 else 0 end persisted,
    OweForCounseling as NumofCounselingSessions * 30 persisted,
    constraint c_personalities_dob_has_to_be_older_then_10 check(datediff(year,DOB,DateTestTaken) >= 10)
)