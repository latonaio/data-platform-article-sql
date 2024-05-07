CREATE TABLE `data_platform_article_counter_data`
(
  `Article`                          int(16) NOT NULL,
  `NumberOfLikes`                    int(10) DEFAULT NULL,
  `NumberOfParticipations`           int(10) DEFAULT NULL,
  `NumberOfAttendances`              int(10) DEFAULT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,

    PRIMARY KEY (`Article`),

    CONSTRAINT `DPFMArticleCounterData_fk` FOREIGN KEY (`Article`) REFERENCES `data_platform_article_header_data` (`Article`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
