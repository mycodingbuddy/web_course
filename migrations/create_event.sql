CREATE TABLE event (
  event_id int NOT NULL AUTO_INCREMENT,
  title varchar(100) NOT NULL,
  category varchar(50),
  start_time datetime NOT NULL,
  end_time datetime,
  address varchar(150) NOT NULL,
  city varchar(50),
  state varchar(2),
  zip_code varchar(15),
  country varchar(30),
  event_description text,
  max_capacity int,
  organizer_name varchar(100),
  organizer_description text,
  PRIMARY KEY(event_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT into event values(1, 'Awesome Charity Event', 'Charity', '2015-06-30 09:00:00', '2015-06-30 11:00:00',
'106 Court Street', 'Brooklyn', 'NY', '11201', 'USA',
'Come join this awesome event and help your favorite charities', -1, 'New York Charity Association', '', 2, CURTIME());
INSERT into event values(2, 'Farmers Market', 'Food', '2015-07-02 13:00:00', '2015-07-02 15:00:00',
'Union Square Park', 'New York', 'NY', '10004', 'USA',
'Come shop the freshest produce from vendors from tri-state area', -1, 'Union Square Association', '', 2, CURTIME());
INSERT into event values(3, 'New York Fashion Week', 'Fashion', '2015-07-15 13:00:00', '2015-07-15 15:00:00',
'151 W 34th St', 'New York', 'NY', '10007', 'USA',
'New York Fashion Week with all famous designers', -1, 'Fashion Association', '', 2, CURTIME());

