SELECT 
	YEAR(`DOC_DATE`)as'Год/Месяц' 
        ,SUM(case when MONTH(`DOC_DATE`) = 1 then SUM ELSE 0 end) as 'Январь'
        ,SUM(case when MONTH(`DOC_DATE`) = 2 then SUM ELSE 0 end) as 'Февраль'
        ,SUM(case when MONTH(`DOC_DATE`) = 3 then SUM ELSE 0 end) as 'Март'
        ,SUM(case when MONTH(`DOC_DATE`) = 4 then SUM ELSE 0 end) as 'Апрель'
        ,SUM(case when MONTH(`DOC_DATE`) = 5 then SUM ELSE 0 end) as 'Май'
        ,SUM(case when MONTH(`DOC_DATE`) = 6 then SUM ELSE 0 end) as 'Июнь'
        ,SUM(case when MONTH(`DOC_DATE`) = 7 then SUM ELSE 0 end) as 'Июль'
        ,SUM(case when MONTH(`DOC_DATE`) = 8 then SUM ELSE 0 end) as 'Август'
        ,SUM(case when MONTH(`DOC_DATE`) = 9 then SUM ELSE 0 end) as 'Сентябрь'
        ,SUM(case when MONTH(`DOC_DATE`) = 10 then SUM ELSE 0 end) as 'Октябрь'
        ,SUM(case when MONTH(`DOC_DATE`) = 11 then SUM ELSE 0 end) as 'Ноябрь'
        ,SUM(case when MONTH(`DOC_DATE`) = 12 then SUM ELSE 0 end) as 'Декабрь'
FROM `DOCUMENT` D
WHERE
	1
	-- AND D.FIRM_ID=:F  -- вместо :F подставляется ID фирмы из первого задания


GROUP BY YEAR(`DOC_DATE`);