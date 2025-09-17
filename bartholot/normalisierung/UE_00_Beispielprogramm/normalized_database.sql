-- ============================================
-- NORMALISIERTE DATENBANK (3NF)
-- Automatisch generiert vom DatabaseNormalizer
-- ============================================

-- Tabelle 1: Abteilungen
CREATE TABLE Abteilungen (
    Abt_Nr INT PRIMARY KEY,
    Abt_Name VARCHAR(50) NOT NULL
);

INSERT INTO Abteilungen (Abt_Nr, Abt_Name) VALUES
(1, 'Motoren'),
(2, 'Karosserie');

-- Tabelle 2: Personal  
CREATE TABLE Personal (
    P_Nr INT PRIMARY KEY,
    P_Name VARCHAR(50) NOT NULL,
    Abt_Nr INT NOT NULL,
    FOREIGN KEY (Abt_Nr) REFERENCES Abteilungen(Abt_Nr)
);

INSERT INTO Personal (P_Nr, P_Name, Abt_Nr) VALUES
(101, 'Müller', 1),
(102, 'Meier', 2),
(103, 'Krause', 2),
(104, 'Schmidt', 1);

-- Tabelle 3: Projekte
CREATE TABLE Projekte (
    Pj_Nr VARCHAR(10) PRIMARY KEY,
    Pj_Name VARCHAR(50) NOT NULL
);

INSERT INTO Projekte (Pj_Nr, Pj_Name) VALUES
('I1', 'A'),
('I2', 'B'),
('I3', 'C');

-- Tabelle 4: Personal-Projekt-Zuordnung (n:m Beziehung)
CREATE TABLE Personal_Projekte (
    P_Nr INT,
    Pj_Nr VARCHAR(10),
    Pj_Std INT NOT NULL,
    PRIMARY KEY (P_Nr, Pj_Nr),
    FOREIGN KEY (P_Nr) REFERENCES Personal(P_Nr),
    FOREIGN KEY (Pj_Nr) REFERENCES Projekte(Pj_Nr)
);

INSERT INTO Personal_Projekte (P_Nr, Pj_Nr, Pj_Std) VALUES
(101, 'I1', 60), (101, 'I2', 40),
(102, 'I3', 100),
(103, 'I1', 20), (103, 'I2', 50), (103, 'I3', 30),
(104, 'I1', 80), (104, 'I3', 20);

-- ============================================
-- BEISPIEL-ABFRAGE: Vollständige Übersicht
-- ============================================
SELECT 
    p.P_Name AS Mitarbeiter,
    a.Abt_Name AS Abteilung,
    pr.Pj_Name AS Projekt,
    pp.Pj_Std AS Stunden
FROM Personal p
    JOIN Abteilungen a ON p.Abt_Nr = a.Abt_Nr
    JOIN Personal_Projekte pp ON p.P_Nr = pp.P_Nr  
    JOIN Projekte pr ON pp.Pj_Nr = pr.Pj_Nr
ORDER BY p.P_Name, pr.Pj_Name;
