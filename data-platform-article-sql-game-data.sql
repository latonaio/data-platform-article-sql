CREATE TABLE `data_platform_article_game_data`
(
    `Article`                     int(16) NOT NULL,
    `Game`                        int(16) NOT NULL,
    `CreationDate`                date NOT NULL,
    `LastChangeDate`              date NOT NULL,
    `IsReleased`                  tinyint(1) DEFAULT NULL,
    `IsCancelled`                 tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`         tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Article`, `Game`),

    CONSTRAINT `DPFMArticleGameData_fk` FOREIGN KEY (`Article`) REFERENCES `data_platform_article_header_data` (`Article`),
    CONSTRAINT `DPFMArticleGameDataGame_fk` FOREIGN KEY (`Game`) REFERENCES `data_platform_game_header_data` (`Game`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
