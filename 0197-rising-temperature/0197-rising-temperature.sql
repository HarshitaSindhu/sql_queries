# Write your MySQL query statement below
select w1.id
FROM Weather w1 
Join Weather w2
ON datediff(w1.recordDate , w2.recordDate) = 1
and w1.temperature > w2.temperature

-- “link the row from w1 to the row from w2 if the date difference is exactly 1 day.”

-- Hum same table ko do baar use kar rahe hain — ek “aaj” (w1) aur ek “kal” (w2) ke liye.
-- DATEDIFF = 1 matlab: w1 wali date, w2 se ek din baad hai.

-- Fir hum dekhte hain: agar aaj ka temperature kal se zyada hai,
-- to hum w1.id ko output me le lete hain.

-- Isliye output me 2 aur 4 aata hai (kyunki un dinon temperature bada tha).