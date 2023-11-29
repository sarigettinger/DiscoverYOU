/*
I have recently launched a website, DiscoverYou, which offers a free version of the Myers-Briggs personality test. 
After taking the test, users have the option of recieving a fuller report, at a cost. Career counseling is also available at a charge.

This test reveals tendencies in four different areas:
Extroverted (E) vs. Introverted (I)
Sensing (S) vs. Intuitive (N)
Thinking (T) vs. Feeling (F)
Judging (J) vs. Percieving (P)
These letters can be put together for a total of 16 different combinations. So, someone who is 66% Extroverted, 87% Sensing, 54% Feeling, and
 70% Percieving would be an ESFP, someone who is 90% Introverted, 60% Sensing, 65% Feeling, and 68% Judging would be an ISFJ, etc.

I am looking to put together a database with the following information: 
each user's name (one column), DOB, the date they took the test, and gender.
I also want to record what each user's scores were in each of the four sections of the test and their four-letter personality type.
In addition, I want to know whether they bought the full report, how many sessions of career counseling they signed up for (if any), 
and if so, what their payment method was.

Q: How much do you charge for the full report and/or career counseling?
A: The report is 14.99, and a career counseling is $30 a session.

Q: Can someone take the test multiple times?
A: for ethical reasons, our system will not allow someone to take the test twice under the same name.

Q: can there be a decimal in the score, for instance, 67.3%?
A: The system does allow for up to two decimal places in the percentage.

Q: Do you have a minimum age requirement for the test?
A: Yes, we do not allow anyone under the age of ten to take the test since their scores would not be accurate.

Q: When was the website launched?
A: January 24, 2021

Q: What payment methods do you accept?
A: Right now, we accept credit cards, zelle, and venmo.


Reports:
1) I want to know which personality types are most likely to pay for the report. Show which 4-letter types have bought the most full reports
     in proportion with how many of them have taken the test. (the three biggest buyers)
2) Which personality type seems to be more common based on the data of our test-takers-
    Extrovert or Introvert?
    Sensing or Intuitive?
    Thinking or Feeling?
    Judging or Percieving?
3) I want a bill of the total that each user owes me. The customers should be identified by their last name, four-letter type, and payment method. 
    The total I'm owed should be in a separate column.
4) Recently, there has been a school of thought that men are just as emotional as women. To prove or disprove this, I want to know how many people are Ts 
    and how many are Fs, separated by gender and age bracket (under 18, 18-25, 26-40, 41-65, over 65)

Sample Data:
name, dob, date taken, gender, extrovertscore, introvertscore, sensingscore, intuitivescore, thinkingscore, feelingscore, judgingscore, percievingscore, bought report, num of counseling sessions, payment method
Shani Kalusyzner, 05/25/2004, 11/21/2023, female, 72%, 28%, 30%, 70%, 40%, 60%, 15%, 85%, yes, 0, venmo
Raizy Kirzner, 04/19/1998, 09/22/2022, female, 20%, 80%, 57%, 43%, 68%, 32%, 40%, 60%, no, 0, null
Fraidy Levin, 08/10/2010, 11/15/2023, female, 95%, 5%, 87%, 13%, 22%, 78%, 45%, 55%, yes, 3, credit card
Yehudah Greenberg, 04/03/1999, 11/20/2023, male, 67%, 33%, 48%, 52%, 19%, 81%, 56%, 44%, no, 2, credit card
Nachman Teren, 10/10/1967, 08/23/2023, male, 44%, 56%, 29%, 71%, 89%, 11%, 78%, 22%, yes, 1, zelle
Miriam Felder, 05/12/2004, 1/25/2021, female, 40%, 60%, 55%, 45%, 10%, 90%, 20%, 80%, yes, 1, zelle
Devorah Richter,