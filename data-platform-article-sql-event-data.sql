CREATE TABLE `data_platform_article_event_data`
(
    `Article`                        int(16) NOT NULL,
    `Event`                          int(16) NOT NULL,
    `CreationDate`                   date NOT NULL,
    `LastChangeDate`                 date NOT NULL,
    `IsReleased`                     tinyint(1) DEFAULT NULL,
    `IsCancelled`                    tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`Article`, `Event`),
    
    CONSTRAINT `DPFMArticleEventData_fk` FOREIGN KEY (`Article`) REFERENCES `data_platform_article_header_data` (`Article`),
    CONSTRAINT `DPFMArticleEventDataEvent_fk` FOREIGN KEY (`Event`) REFERENCES `data_platform_event_header_data` (`Event`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
