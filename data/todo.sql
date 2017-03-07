--
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- 表的结构 `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('v7l3aq0pj468k168ab4el6pv68j35tdv', '127.0.0.1', 1488929919, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438383932393931393b);

-- --------------------------------------------------------

--
-- 表的结构 `flags`
--

DROP TABLE IF EXISTS `flags`;
CREATE TABLE `flags` (
  `id` int(1) NOT NULL,
  `meaning` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `flags`
--

INSERT INTO `flags` (`id`, `meaning`) VALUES
(1, 'Urgent');

-- --------------------------------------------------------

--
-- 表的结构 `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(1) NOT NULL,
  `name` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'house'),
(2, 'school'),
(3, 'work'),
(4, 'family');

-- --------------------------------------------------------

--
-- 表的结构 `priorities`
--

DROP TABLE IF EXISTS `priorities`;
CREATE TABLE `priorities` (
  `id` int(1) NOT NULL,
  `name` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `priorities`
--

INSERT INTO `priorities` (`id`, `name`) VALUES
(1, 'low'),
(2, 'medium'),
(3, 'high');

-- --------------------------------------------------------

--
-- 表的结构 `sizes`
--

DROP TABLE IF EXISTS `sizes`;
CREATE TABLE `sizes` (
  `id` int(1) NOT NULL,
  `name` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sizes`
--

INSERT INTO `sizes` (`id`, `name`) VALUES
(1, 'small'),
(2, 'medium'),
(3, 'large');

-- --------------------------------------------------------

--
-- 表的结构 `statuses`
--

DROP TABLE IF EXISTS `statuses`;
CREATE TABLE `statuses` (
  `id` int(1) NOT NULL,
  `name` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'in progress'),
(2, 'complete');

-- --------------------------------------------------------

--
-- 表的结构 `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(2) NOT NULL,
  `task` varchar(22) DEFAULT NULL,
  `priority` int(1) DEFAULT NULL,
  `size` int(1) DEFAULT NULL,
  `group` int(1) DEFAULT NULL,
  `deadline` varchar(8) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `flag` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tasks`
--

INSERT INTO `tasks` (`id`, `task`, `priority`, `size`, `group`, `deadline`, `status`, `flag`) VALUES
(1, 'COMP1234 assignment', 3, 2, 2, '20170219', '1', ''),
(2, 'Mow the lawn', 2, 2, 1, '', '2', ''),
(3, 'Wash the car', 2, 2, 1, '', '', ''),
(4, 'Paint the fence', 1, 2, 1, '', '', ''),
(5, 'Study for midterms', 3, 3, 2, '', '', ''),
(6, 'Intramural hockey game', 1, 2, 4, '', '', ''),
(7, 'Canucks hockey game', 3, 3, 4, '20170305', '', ''),
(8, 'Buy steel-toed boots', 2, 1, 3, '', '', ''),
(9, 'Learn French', 1, 3, 3, '20161231', '1', ''),
(10, 'Hit the gym', 2, 1, 4, '', '', ''),
(11, 'Pay bills', 3, 1, 1, '', '', ''),
(12, 'Meet George', 2, 1, 1, '', '', ''),
(13, 'Buy milk & bread', 2, 1, 1, '', '', '1'),
(14, 'Read War & Peace', 1, 3, 1, '', '', ''),
(15, 'Organize the study', 1, 4, 1, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
