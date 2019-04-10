CREATE TABLE `hua_file_base64` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original_file_name` varchar(45) DEFAULT NULL COMMENT 'The name of the file prior to conversion.',
  `base64_string` longtext COMMENT 'The base64 conversion string of the file.',
  `original_file_directory` varchar(5000) DEFAULT NULL COMMENT 'The Directory the file was in prior to conversion.',
  `date_converted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11700 DEFAULT CHARSET=utf8 COMMENT='the base 64 conversions of the files given to britehouse';

set global max_allowed_packet = 32000000;

select distinct candidate_id from deltek_xml_temp;

select * from hua_user where hua_user_firstname = 'Esayvanie (Sharona)';