-- Vatandaş Ekleme Stored Procedure
DELIMITER //
CREATE PROCEDURE VatandasEkle(
    IN p_Adi VARCHAR(64),
    IN p_Soyadi VARCHAR(64),
    IN p_TCKN VARCHAR(11),
    IN p_Telefon VARCHAR(15),
    IN p_Adres VARCHAR(250)
)
BEGIN
    INSERT INTO Vatandaslar (Adi, Soyadi, TCKN, Telefon, Adres)
    VALUES (p_Adi, p_Soyadi, p_TCKN, p_Telefon, p_Adres);
END //
DELIMITER ;

-- İşlem Ekleme Stored Procedure
DELIMITER //
CREATE PROCEDURE IslemEkle(
    IN p_VatandasID INT,
    IN p_IslemTuru VARCHAR(100),
    IN p_Tarih DATE,
    IN p_Ucret DECIMAL(10, 2),
    IN p_Durum VARCHAR(50)
)
BEGIN
    INSERT INTO Islemler (VatandasID, IslemTuru, Tarih, Ucret, Durum)
    VALUES (p_VatandasID, p_IslemTuru, p_Tarih, p_Ucret, p_Durum);
END //
DELIMITER ;

-- Ödeme Ekleme Stored Procedure
DELIMITER //
CREATE PROCEDURE OdemeEkle(
    IN p_IslemID INT,
    IN p_OdemeTarihi DATE,
    IN p_OdemeTutari DECIMAL(10, 2),
    IN p_OdemeTuru VARCHAR(50)
)
BEGIN
    INSERT INTO Odemeler (IslemID, OdemeTarihi, OdemeTutari, OdemeTuru)
    VALUES (p_IslemID, p_OdemeTarihi, p_OdemeTutari, p_OdemeTuru);
END //
DELIMITER ;

