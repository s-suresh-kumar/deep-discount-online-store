-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(3000) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('Computer Books');
INSERT INTO product_category(category_name) VALUES ('English Books');
INSERT INTO product_category(category_name) VALUES ('Gardening Books');
INSERT INTO product_category(category_name) VALUES ('Health Books');
INSERT INTO product_category(category_name) VALUES ('Tamil Books');

-- -----------------------------------------------------
-- Computer Books
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-COMPUTER-1000', 'Algorithms', 'This fourth edition of Robert Sedgewick and Kevin Wayne’s Algorithms is the leading textbook on algorithms today and is widely used in colleges and universities worldwide. This book surveys the most important computer algorithms currently in use and provides a full treatment of data structures and algorithms for sorting, searching, graph processing, and string processing--including fifty algorithms every programmer should know. In this edition, new Java implementations are written in an accessible modular programming style, where all of the code is exposed to the reader and ready to use.

The algorithms in this book represent a body of knowledge developed over the last 50 years that has become indispensable, not just for professional programmers and computer science students but for any student with interests in science, mathematics, and engineering, not to mention students who use computation in the liberal arts.

The companion web site, algs4.cs.princeton.edu, contains

An online synopsis
Full Java implementations
Test data
Exercises and answers
Dynamic visualizations
Lecture slides
Programming assignments with checklists
Links to related material
The MOOC related to this book is accessible via the "Online Course" link at algs4.cs.princeton.edu. The course offers more than 100 video lecture segments that are integrated with the text, extensive online assessments, and the large-scale discussion forums that have proven so valuable. Offered each fall and spring, this course regularly attracts tens of thousands of registrants.

Robert Sedgewick and Kevin Wayne are developing a modern approach to disseminating knowledge that fully embraces technology, enabling people all around the world to discover new ways of learning and teaching. By integrating their textbook, online content, and MOOC, all at the state of the art, they have built a unique resource that greatly expands the breadth and depth of the educational experience', 'assets/images/products/ComputerBooks/Algorithms.jpg', 1, 100, 18.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-COMPUTER-1001', 'Algorithms To Live By', '\A remarkable book... A solid, research-based book that’s applicable to real life. The algorithms the authors discuss are, in fact, more applicable to real-life problems than I\’d have ever predicted.... It\’s well worth the time to find a copy of Algorithms to Live By and dig deeper.\”
―Forbes

By the end of the book, I was convinced. Not because I endorse the idea of living like some hyper-rational Vulcan, but because computing algorithms could be a surprisingly useful way to embrace the messy compromises of real, non-Vulcan life.
―The Guardian (UK)', 'assets/images/products/ComputerBooks/AlgorithmstoLiveBy.jpg', 1, 100, 18.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-COMPUTER-1002', 'Compiler Design', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/ComputerBooks/CompilerDesign.jpg', 1, 100, 18.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-COMPUTER-1003', 'Computer Science', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/ComputerBooks/ComputerScience.jpg', 1, 100, 18.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-COMPUTER-1004', 'Computer Systems', 'Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!', 'assets/images/products/ComputerBooks/ComputerSystems.jpg', 1, 100, 18.99, 1, NOW());


-- -----------------------------------------------------
-- English Books
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-ENGLISH-1000', 'Lord of the Flies', 'The boy with fair hair lowered himself down the last few feet of rock and began to pick his way towards the lagoon. Though he had taken off his school sweater and trailed it now from one hand, his grey shirt stuck to him and his hair was plastered to his forehead. All round him the long scar smashed into the jungle was a bath of heat. He was clambering heavily among the creepers and broken trunks when a bird, a vision of red and yellow, flashed upwards with a witch-like cry; and this cry was echoed by another. Descriptor(s): WESTERNS | LITERARY TEXTS | LITERARY CRITICISM | LITERARY ANALYSIS | LITERARY STYLE | LITTERATEURS | BIOGRAPHIES | MODERN AGE | UNITED KINGDOM', 'assets/images/products/EnglishBooks/LordoftheFlies.jpg', 1, 100, 14.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-ENGLISH-1001', 'The Giver', '
Lowry narrates The Giver in third person ("He said, as opposed to I said," which is called first person), using a limited omniscient viewpoint (only Jonas\' thoughts and feelings are revealed). Through Jonas\' eyes, his community appears to be a utopia — a perfect place — that is self-contained and isolated from Elsewhere, every other place in the world. No evidence of disease, hunger, poverty, war, or lasting pain exists in the ', 'assets/images/products/EnglishBooks/TheGiver.jpg', 1, 100, 20.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-ENGLISH-1002', 'THE HOUSE ON MANGO STREET', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/images/products/EnglishBooks/TheHouseonMangoStreet.jpg', 1, 100, 13.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-ENGLISH-1003', 'TO KILL A Mockingbird', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/images/products/EnglishBooks/ToKillaMockingbird.jpg', 1, 100, 14.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-ENGLISH-1004', 'Treasure Island', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/images/products/EnglishBooks/TreasureIsland.jpg', 1, 100, 18.99, 2, NOW());

-- -----------------------------------------------------
-- Gardening Books
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-GARDEN-1000', 'Lord of the Flies', 'The boy with fair hair lowered himself down the last few feet of rock and began to pick his way towards the lagoon. Though he had taken off his school sweater and trailed it now from one hand, his grey shirt stuck to him and his hair was plastered to his forehead. All round him the long scar smashed into the jungle was a bath of heat. He was clambering heavily among the creepers and broken trunks when a bird, a vision of red and yellow, flashed upwards with a witch-like cry; and this cry was echoed by another. Descriptor(s): WESTERNS | LITERARY TEXTS | LITERARY CRITICISM | LITERARY ANALYSIS | LITERARY STYLE | LITTERATEURS | BIOGRAPHIES | MODERN AGE | UNITED KINGDOM', 'assets/images/products/EnglishBooks/LordoftheFlies.jpg', 1, 100, 14.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-GARDEN-1001', 'The Giver', '
Lowry narrates The Giver in third person ("He said, as opposed to I said," which is called first person), using a limited omniscient viewpoint (only Jonas\' thoughts and feelings are revealed). Through Jonas\' eyes, his community appears to be a utopia — a perfect place — that is self-contained and isolated from Elsewhere, every other place in the world. No evidence of disease, hunger, poverty, war, or lasting pain exists in the ', 'assets/images/products/EnglishBooks/TheGiver.jpg', 1, 100, 20.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-GARDEN-1002', 'THE HOUSE ON MANGO STREET', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/images/products/EnglishBooks/TheHouseonMangoStreet.jpg', 1, 100, 13.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-GARDEN-1003', 'TO KILL A Mockingbird', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/images/products/EnglishBooks/ToKillaMockingbird.jpg', 1, 100, 14.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-GARDEN-1004', 'Treasure Island', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'assets/images/products/EnglishBooks/TreasureIsland.jpg', 1, 100, 18.99, 2, NOW());


-- -----------------------------------------------------
-- Tamil Books
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TAMIL-1000', 'Ponniyin Selvan', 'Sword of Slaughter findsus at an exciting cliffhanger following the end of Book 3 - have Vandhiyathevan and Arulmozhi Varmar truly been saved? What of their fate in the land of their birth, Chozha Nadu? Are the Pazhuvettarayars truly stirring the country in a revolt against their favourite prince? Why does the alluring Nandhini Devi insist on meeting allies within crumbling palaces? Why does Madhuranthaka Thevar ride his stumbling horse through fields, on a rainy night? And why does Vanathi, that shrinking, timid violet, leave her charming mentor to go on a solitary journey? Then, there are our trusted friends, whose fates are also unclear: Is Sundara Chozhar still bedridden? What of the canny Anbil Aniruddhar and his cunning disciple Azhwarkkadiyaan? And what of the light of the Chozhas, princess Kundhavai herself?', 'assets/images/products/TamilBooks/ponniyinSelvan.jpg', 1, 100, 14.99, 5, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TAMIL-1001', 'Semmari', 'Samura was one of the winners at the Microsoft ThinkWeek paper publishing global contest in 2008. He was awarded for his thought-provoking and well-articulated paper. He has published numerous Tamil poems on the social media and one of his poems on Dr Abdul Kalam has been published in an anthology yearbook at NAL Tamil club, Bangalore. Samura is from an engineering background and hails from Chennai.', 'assets/images/products/TamilBooks/SemMari.jpg', 1, 100, 20.99, 5, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TAMIL-1003', 'Raja Nandhi', '‘Rajanandi’ is the fourth historical novel I have written. I have written this book based on the events that took place during the Pallava period.
AD in Tamil Nadu. The Pallavas ruled from the third to the ninth century. The Carmandal Century states that one of the eighteen was a Pallava. The Pallavas ruled over places like Kanchipuram as their capital. The novel focuses on historical events that took place during the time of Parameswaravarman I.
Parameswaravarman, Rajasimhan, Wickramasinghe, Vinayadithan, Maravarman Arikesari, Kulachiraiyar with real characters like Karkuzhali, Kayalvizhi, Vikranthan, Anandakuttan, Saruthathan, Jayasanthan, Brahmarayar, such as fictional characters.', 'assets/images/products/TamilBooks/SivagamiSabadham.jpg', 1, 100, 13.99, 5, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TAMIL-1002', 'Sivagami Sabadham', 'Sivagamiyin Sapatham  literally ‘The vow of Sivagami’) is a Tamil historical novel written by Kalki, first serialized in kalki during January 1944 – June 1946, and published as a book in 1948. Along with Ponniyin Selvan, this is widely regarded as one of the greatest novels ever written in Tamil. Set in 7th-century south India against the backdrop of various historical events and figures, the novel created widespread interest in Tamil history. Honour, love and friendship are important themes that run through the course of the novel. It is also the prequel story of Parthiban Kanavu also written by Kalki.', 'assets/images/products/TamilBooks/rajaNandhi.jpg', 1, 100, 14.99, 5, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BOOK-TAMIL-1004', 'Yavana Rani', 'Yavana Rani is a Tamil language historical novel written by Sandilyan. Its title translates to "Greek Queen" in English. The story is based on ancient Tamil poetry. It is a love story set around 2000 years ago, focusing on the Commander-in-chief of the Chola Army. The story takes place during the period of Karikalan, one of the greatest kings of the Early Cholas.', 'assets/images/products/TamilBooks/yavanaRani.jpg', 1, 100, 18.99, 5, NOW());


