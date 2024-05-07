CREATE TABLE `data_platform_article_campaign_data`
(
    `Article`                        int(16) NOT NULL,
    `Campaign`                       int(16) NOT NULL,
    `CreationDate`                   date NOT NULL,
    `LastChangeDate`                 date NOT NULL,
    `IsReleased`                     tinyint(1) DEFAULT NULL,
    `IsCancelled`                    tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`Article`, `Campaign`),
    
    CONSTRAINT `DPFMArticleCampaignData_fk` FOREIGN KEY (`Article`) REFERENCES `data_platform_article_header_data` (`Article`),
    CONSTRAINT `DPFMArticleCampaignDataCampaign_fk` FOREIGN KEY (`Campaign`) REFERENCES `data_platform_campaign_header_data` (`Campaign`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
