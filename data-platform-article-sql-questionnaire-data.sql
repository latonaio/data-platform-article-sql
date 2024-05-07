CREATE TABLE `data_platform_article_questionnaire_data`
(
  `Article`                  int(16) NOT NULL,
  `Respondent`               int(12) NOT NULL,
  `Questionnaire`            int(20) NOT NULL,
  `CreationDate`             date NOT NULL,
  `CreationTime`             time NOT NULL,

    PRIMARY KEY (`Article`, `Respondent`),

    CONSTRAINT `DPFMArticleQuestionnaireData_fk` FOREIGN KEY (`Article`) REFERENCES `data_platform_article_header_data` (`Article`),
    CONSTRAINT `DPFMArticleQuestionnaireDataRespondent_fk` FOREIGN KEY (`Respondent`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMArticleQuestionnaireDataQuestionnaire_fk` FOREIGN KEY (`Questionnaire`) REFERENCES `data_platform_questionnaire_header_data` (`Questionnaire`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
