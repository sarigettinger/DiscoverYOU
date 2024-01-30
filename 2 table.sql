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
    ExtrovertScore decimal(4,2) not null constraint c_personalities_ExtrovertScore_cant_be_negitive check(ExtrovertScore > -1),
    IntrovertScore decimal(4,2) not null constraint c_personalities_IntrovertScore_cant_be_negitive check(introvertScore > 0),
    SensingScore decimal(4,2) not null constraint c_personalities_SencingScore_cant_be_negitive check(sensingscore > 0), 
    IntuitiveScore decimal(4,2) not null constraint c_personalities_IntuitiveScore_cant_be_negitive check(intuitivescore > 0),
    ThinkingScore decimal(4,2) not null constraint c_personalities_ThinkingScore_cant_be_negitive check(ThinkingScore > 0),
    FeelingScore decimal(4,2) not null constraint c_personalities_FeelingScore_cant_be_negitive check(FeelingScore > 0),
    JudgingScore decimal(4,2) not null constraint c_personalities_JudgingScore_cant_be_negitive check(JudgingScore > 0),
    PercievingScore decimal(4,2) not null constraint c_personalities_PercievingScore_cant_be_negitive check(PercievingScore > 0),
    BroughtReport bit not null default 0,
    NumofCounselingSessions int not null constraint c_personalities_NumofCounselingSessions_cant_be_negitive check(NumofCounselingSessions > -1),
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