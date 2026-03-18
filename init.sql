CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;

CREATE TABLE IF NOT EXISTS material (
    material_id INT PRIMARY KEY AUTO_INCREMENT,
    material_code VARCHAR(30) NOT NULL,
    material_name VARCHAR(150) NOT NULL,
    category VARCHAR(100) NOT NULL,
    specification VARCHAR(255) NOT NULL,
    unit VARCHAR(30) NOT NULL,
    unit_price INT NOT NULL,
    stock_qty INT NOT NULL,
    safety_stock INT NOT NULL,
    supplier_name VARCHAR(120) NOT NULL,
    warehouse_location VARCHAR(120) NOT NULL,
    inbound_date DATE NOT NULL,
    material_status VARCHAR(50) NOT NULL,
    manager_name VARCHAR(100) NOT NULL,
    manager_phone VARCHAR(30) NOT NULL,
    note TEXT NOT NULL,
    created_at DATETIME NOT NULL
);

INSERT INTO material (
    material_code, material_name, category, specification, unit, unit_price,
    stock_qty, safety_stock, supplier_name, warehouse_location, inbound_date,
    material_status, manager_name, manager_phone, note, created_at
) VALUES
('MAT-2026-001', '산업용 베어링 6205', '기계부품', '내경 25mm / 외경 52mm / 폭 15mm', 'EA', 18500, 320, 100, '한국정밀부품', 'A-01-03', '2026-03-10', '정상', '김현수', '010-2345-6789', '생산라인 2호기 정기 교체용 자재. 월간 사용량 증가 추세.', '2026-03-17 09:30:00'),
('MAT-2026-002', '고강도 육각볼트 M12', '체결부품', 'M12 x 60 / 아연도금 / 고장력', 'BOX', 42000, 85, 40, '동양패스너', 'B-02-01', '2026-03-12', '정상', '이서준', '010-3456-7890', '최근 입고 완료. 외주 조립라인 납품 예정.', '2026-03-17 09:35:00'),
('MAT-2026-003', '알루미늄 판재 2T', '원자재', '1000 x 2000 x 2T', 'SHEET', 68000, 22, 30, '한빛메탈', 'C-03-02', '2026-03-08', '부족', '박지훈', '010-4567-8901', '안전재고 미만. 다음주 추가 발주 필요.', '2026-03-17 09:40:00'),
('MAT-2026-004', '절연 전선 4SQ', '전기자재', '4SQ / 100m 롤 / 난연', 'ROLL', 97000, 14, 10, '대한전기소재', 'D-01-04', '2026-03-05', '정상', '최유진', '010-5678-9012', '설비 유지보수용으로 사용 중. 다음 분기 예산 반영 필요.', '2026-03-17 09:45:00');
