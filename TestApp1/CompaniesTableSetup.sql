CREATE TABLE Companies (
    Id INT IDENTITY(1,1) CONSTRAINT PK_Companies PRIMARY KEY,
    CompanyAltId UNIQUEIDENTIFIER CONSTRAINT DF_Companies_CompanyAltId DEFAULT NEWID() CONSTRAINT UQ_Companies_CompanyAltId UNIQUE,
    CompanyCode NVARCHAR(50) CONSTRAINT UQ_Companies_CompanyCode UNIQUE,
    Name NVARCHAR(50),
    StreetAddress NVARCHAR(150),
    City NVARCHAR(50),
    State NVARCHAR(50),
    PostalCode NVARCHAR(20)
)


drop table Companies

-- Example 1
INSERT INTO Companies (CompanyCode, Name, StreetAddress, City, State, PostalCode)
VALUES ('COMP001', 'Tech Innovators Inc.', '1234 Elm Street', 'Metropolis', 'NY', '10001');

-- Example 2
INSERT INTO Companies (CompanyCode, Name, StreetAddress, City, State, PostalCode)
VALUES ('COMP002', 'Green Energy Solutions', '5678 Oak Avenue', 'Springfield', 'IL', '62704');

-- Example 3
INSERT INTO Companies (CompanyCode, Name, StreetAddress, City, State, PostalCode)
VALUES ('COMP003', 'Global Markets LLC', '9101 Pine Road', 'River City', 'CA', '90210');

-- Example 4
INSERT INTO Companies (CompanyCode, Name, StreetAddress, City, State, PostalCode)
VALUES ('COMP004', 'Healthcare Partners', '2345 Maple Boulevard', 'Lakeside', 'TX', '75001');

-- Example 5
INSERT INTO Companies (CompanyCode, Name, StreetAddress, City, State, PostalCode)
VALUES ('COMP005', 'Financial Advisors Group', '6789 Birch Lane', 'Hilltown', 'PA', '19019');

-- Example 6
INSERT INTO Companies (CompanyCode, Name, StreetAddress, City, State, PostalCode)
VALUES ('COMP006', 'Innovative Solutions Inc.', '1357 Cedar Avenue', 'Innovation City', 'CA', '90001');



select * from TestApp1Db.dbo.Companies