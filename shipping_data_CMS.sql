
-- Insert data into the 'Port' table
INSERT INTO Port (name, city, country) VALUES
    ('Port A', 'Louisville', 'United States'),
    ('Port B', 'New York', 'United States'),
    ('Port C', 'London', 'England'),
    ('Port D', 'Tokyo', 'Japan'),
    ('Port E', 'Sydney', 'Australia');

-- Insert data into the 'Ship' table
INSERT INTO Ship (name, displacement, captain, crewCount, homePort, buildYear) VALUES
    ('Voyager', 1500.50, 'John Smith', 20, 'Port A', 2015),
    ('Explorer', 1200.75, 'Dave Williams', 15, 'Port A', 2018),
    ('Horizon', 2000.25, 'Ted Lasso', 30, 'Port C', 2010),
    ('Eclipse', 1800.00, 'Brandon Phillips', 25, 'Port B', 2013),
    ('Wave', 2500.80, 'LeBron James', 35, 'Port A', 2016),
    ('Starlight', 1700.40, 'Tom Brady', 22, 'Port A', 2012),
    ('Mariner', 1900.60, 'Dak Prescott', 28, 'Port B', 2017),
    ('Pacific', 2200.90, 'Babe Ruth', 32, 'Port C', 2019),
    ('Tide', 2100.30, 'Nolan Ryan', 27, 'Port D', 2014),
    ('Thunder', 2700.70, 'Tiger Woods', 40, 'Port E', 2011);

-- Insert data into the 'Container' table
INSERT INTO Container (containerID, height, width, length, weight, shipID) VALUES
   ('C1', 8.5, 6.2, 10.0, 500.0, 'Voyager'),
    ('C2', 7.0, 5.5, 8.0, 400.0, 'Voyager'),
    ('C3', 9.8, 7.5, 12.5, 600.0, 'Voyager'),
    ('C4', 10.0, 8.0, 11.0, 700.0, 'Explorer'),
    ('C5', 8.0, 6.0, 9.5, 450.0, 'Explorer'),
    ('C6', 9.2, 7.0, 11.2, 550.0, 'Horizon'),
    ('C7', 7.5, 5.8, 8.8, 420.0, 'Horizon'),
    ('C8', 8.8, 6.5, 10.5, 480.0, 'Horizon'),
    ('C9', 10.5, 8.2, 12.0, 680.0, 'Eclipse'),
    ('C10', 7.2, 5.0, 9.0, 380.0, 'Wave'),
    ('C11', 9.5, 7.8, 11.8, 600.0, 'Wave'),
    ('C12', 8.0, 6.5, 10.2, 520.0, 'Starlight'),
    ('C13', 7.8, 6.2, 9.0, 450.0, 'Mariner'),
    ('C14', 10.2, 8.5, 11.5, 700.0, 'Mariner'),
    ('C15', 8.5, 6.0, 10.8, 490.0, 'Pacific'),
    ('C16', 9.0, 7.2, 12.0, 550.0, 'Pacific'),
    ('C17', 7.5, 5.5, 8.5, 420.0, 'Tide'),
    ('C18', 8.2, 6.8, 10.5, 480.0, 'Thunder'),
    ('C19', 10.0, 8.0, 12.2, 600.0, 'Thunder'),
    ('C20', 7.0, 5.2, 9.5, 400.0, 'Thunder');
