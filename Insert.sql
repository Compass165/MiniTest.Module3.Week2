USE minitest_module3_week2;

-- Thêm 5 thành phố 
INSERT INTO City (City_Name)
VALUES
('Quảng Ninh'),
('Thái Bình'),
('Bắc Ninh'),
('Ninh Bình'),
('Yên Bái');

-- Thêm 10 khách hàng
INSERT INTO Clients (Clients_ID, Clients_Name, IDNumber, DateBirth, City_ID)
VALUES
(100, 'Phong', 'CGMD-1','1999-5-16',1),
(101, 'Huy', 'CGMD-2','1999-2-2',1),
(102, 'Bảnh', 'CGMD-3','1998-3-3',2),
(103, 'Lương', 'CGMD-4','1998-4-4',2),
(104, 'Quyết', 'CGMD-5','2001-5-5',3),
(105, 'Hằng', 'CGMD-6','1991-6-6',3),
(106, 'Hân', 'CGMD-7','1996-7-7',4),
(107, 'Trung', 'CGMD-8','1993-8-8',4),
(108, 'Hoàng', 'CGMD-9','1999-9-9',5),
(109, 'Quân', 'CGMD-10','1993-10-10',5);

-- Thêm 5 bản ghi của điểm đến du lịch
INSERT INTO Destination (Destination_ID, Destination_Name, Describes, Cost, City_ID)
VALUES
(200, 'Vịnh Hạ Long', 'Bãi Cắt trắng mịn, Bãi biển to tròn', 2000, 1),
(201, 'Khu du lịch Tiền Hải', 'Sông Mê-Kông thu nhỏ', 700, 2),
(202, 'Đền thờ, Miếu Quan họ', 'Mấy em Đào cực kỳ tuyệt vời', 1500, 3),
(203, 'Ninh Bình', 'Nhà thờ có muôn vàn cha xứ', 300, 4),
(204, 'Bản làng Mê Linh', 'Lâm sản toẹt vời', 1200, 5);


-- Thêm 2 CategoryTour
INSERT INTO CategoryTour (CategoryTour_ID, CategoryTour_Code, CategoryTour_Name)
VALUES
(666,'CT01','Trong Ngày'),
(999,'CT02','3 Ngày 2 Đêm');

-- Thêm 15 loại Tour
INSERT INTO Tour (Tour_ID, Tour_Code, Category_ID, Destination_ID, DateStart, DateEnd)
VALUES
(501, 'VHL01', 999, 200, '2022-9-21', '2022-9-24'),
(502, 'VLH02', 666, 200, '2022-9-21', '2022-9-22'),
(503, 'VLH03', 999, 200, '2022-9-25', '2022-9-28'),
(504, 'TH04', 999, 201, '2022-9-21', '2022-9-24'),
(505, 'TH05', 999, 201, '2022-9-21', '2022-9-22'),
(506, 'TH06', 999, 201, '2022-9-25', '2022-9-28'),
(507, 'QH07', 999, 202, '2022-9-21', '2022-9-24'),
(508, 'QH08', 999, 202, '2022-9-21', '2022-9-22'),
(509, 'QH09', 999, 202, '2022-9-25', '2022-9-28'),
(510, 'NB10', 999, 203, '2022-9-21', '2022-9-24'),
(511, 'NB11', 999, 203, '2022-9-21', '2022-9-22'),
(512, 'NB12', 999, 203, '2022-9-25', '2022-9-28'),
(513, 'ML13', 999, 204, '2022-9-21', '2022-9-24'),
(514, 'ML14', 999, 204, '2022-9-21', '2022-9-22'),
(515, 'ML15', 999, 204, '2022-9-25', '2022-9-28');

-- Thêm 10 hóa đơn đặt tour
INSERT INTO OrderTour (OrderTour_ID, Tour_ID, Clients_ID, Status)
VALUES
(0000, 501, 109, 'Đã thanh toán'),
(1111, 502, 108, 'Chưa thanh toán'),
(2222, 505, 107, 'Đã thanh toán'),
(3333, 507, 106, 'Chưa thanh toán'),
(4444, 509, 105, 'Chưa thanh toán'),
(5555, 511, 104, 'Đã thanh toán'),
(6666, 515, 103, 'Đã thanh toán'),
(7777, 503, 102, 'Chưa thanh toán'),
(8888, 506, 101, 'Chưa thanh toán'),
(9999, 508, 100, 'Đã thanh toán');