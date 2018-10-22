

SELECT p.*, b.financial_status, cp.*
FROM medical.payment p, medical.bank b, check_payment cp
WHERE p.payment_method = 'EFT'
AND p.issue_date BETWEEN '2000-01-01' and '2015-12-31'
AND p.payment_id = b.bank_id
AND p.payment_id = cp.check_id;



SELECT hstry.last_name, hstry.first_name, hstry.ssn, hstry.birth_date
FROM claim_history hstry 
JOIN injured_party ip 
ON hstry.claim_id = ip.claim.id
AND hstry.ssn = ip.participant_ssn
WHERE hstry.claim_id = '123ABC'
AND ip.medicare_ind = 'Y'
AND hstry.accident_date > ip.medicare_eligible_date
ORDER BY ip.birth_date;
