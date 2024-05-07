CREATE TABLE `data_platform_article_like_data`
(
  `Article`                  int(16) NOT NULL,
  `BusinessPartner`          int(12) NOT NULL,
  `Like`                     tinyint(1) DEFAULT NULL,
  `CreationDate`             date NOT NULL,
  `CreationTime`             time NOT NULL,
  `LastChangeDate`           date NOT NULL,
  `LastChangeTime`           time NOT NULL,

    PRIMARY KEY (`Article`, `BusinessPartner`),

    CONSTRAINT `DPFMArticleLikeData_fk` FOREIGN KEY (`Article`) REFERENCES `data_platform_article_header_data` (`Article`),
    CONSTRAINT `DPFMArticleLikeDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
