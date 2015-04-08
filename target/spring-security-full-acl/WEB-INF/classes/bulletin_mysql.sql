

--
-- Database: bulletin
--

-- --------------------------------------------------------

--
-- Table structure for table admin_post
--

CREATE TABLE  admin_post (
  id bigint(20)IDENTITY(1,1) NOT NULL ,
  date datetime NOT NULL,
  message varchar(255) NOT NULL,
  PRIMARY KEY (id)
)

--
-- Dumping data for table admin_post
--

INSERT INTO admin_post (id, date, message) VALUES
(1, '2011-01-03 21:37:58', 'Custom post #1 from admin'),
(2, '2011-01-04 21:38:39', 'Custom post #2 from admin'),
(3, '2011-01-05 21:39:37', 'Custom post #3 from admin');

-- --------------------------------------------------------

--
-- Table structure for table personal_post
--

CREATE TABLE personal_post (
  id bigint(20)IDENTITY(1,1) NOT NULL ,
  date datetime NOT NULL,
  message varchar(255) NOT NULL,
  PRIMARY KEY (id)
) 

--
-- Dumping data for table personal_post
--

INSERT INTO personal_post (id, date, message) VALUES
(1, '2011-01-06 21:40:02', 'Custom post #1 from user'),
(2, '2011-01-07 21:40:13', 'Custom post #2 from user'),
(3, '2011-01-08 21:40:34', 'Custom post #3 from user');

-- --------------------------------------------------------

--
-- Table structure for table public_post
--

CREATE TABLE  public_post (
  id bigint(20)IDENTITY(1,1)  NOT NULL ,
  date datetime NOT NULL,
  message varchar(255) NOT NULL,
  PRIMARY KEY (id)
) 

--
-- Dumping data for table public_post
--

INSERT INTO public_post (id, date, message) VALUES
(1, '2011-01-10 21:40:44', 'Custom post #1 from public'),
(2, '2011-01-11 21:40:48', 'Custom post #2 from public'),
(3, '2011-01-12 21:41:08', 'Custom post #3 from public');