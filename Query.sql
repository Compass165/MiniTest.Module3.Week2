USE minitest_module3_week2;
SELECT * FROM city;
SELECT * FROM destination;
SELECT * FROM ordertour;
SELECT * FROM tour;
SELECT * FROM clients;
SELECT * FROM categoryTour;

-- Thống kê số lượng tour của các thành phố
SELECT 	Destination.City_ID, City.City_Name, COUNT(Tour.Destination_ID) AS 'Số lượng Tour'
FROM 	City 
JOIN 	Destination
ON 		City.City_ID = Destination.City_ID
JOIN 	Tour
ON		Destination.Destination_ID = Tour.Destination_ID
GROUP BY Tour.Destination_ID;

-- Tính số tour có ngày bắt đầu trong ngày 21 tháng 9 năm 2022 ( dùng count) 
SELECT	Destination.Destination_Name, CategoryTour.CategoryTour_Name, COUNT(Tour.DateStart) AS 'Số lượng'
FROM 	Destination
RIGHT JOIN 	Tour
ON		Destination.Destination_ID = Tour.Destination_ID
LEFT JOIN	CategoryTour
ON		CategoryTour.CategoryTour_ID = Tour.Category_ID
WHERE Tour.DateStart = '2022-9-21'
GROUP BY CategoryTour.CategoryTour_Name;

-- SELECT CategoryTour.CategoryTour_Name, COUNT(Tour.DateStart)
-- FROM CategoryTour
-- JOIN Tour
-- ON CategoryTour.CategoryTour_ID = Tour.Category_ID
-- WHERE Tour.DateStart = '2022-9-21'
-- GROUP BY CategoryTour.CategoryTour_Name;

-- Tính số tour có ngày kết thúc trong ngày 24 tháng 9 năm 2022
SELECT	Destination.Destination_Name, CategoryTour.CategoryTour_Name, COUNT(Tour.DateEnd) AS 'Số lượng'
FROM 	Destination
RIGHT JOIN 	Tour
ON		Destination.Destination_ID = Tour.Destination_ID
LEFT JOIN	CategoryTour
ON		CategoryTour.CategoryTour_ID = Tour.Category_ID
WHERE Tour.DateEnd = '2022-9-24'
GROUP BY CategoryTour.CategoryTour_Name;