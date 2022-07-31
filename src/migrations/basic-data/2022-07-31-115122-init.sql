INSERT INTO `category` (`id`, `parent_id`, `name`, `url`, `lft`, `rgt`, `created`, `updated`, `deleted`)
VALUES (1, NULL, 'Pekárna a cukrárna', 'pekarna-cukrarna', NULL, NULL, now(), NULL, '0'),
       (2, NULL, 'Ovoce a zelenina', 'ovoce-a-zelenina', NULL, NULL, now(), NULL, '0'),
       (3, NULL, 'Maso a ryby', 'maso-a-ryby', NULL, NULL, now(), NULL, '0'),
       (4, NULL, 'Mléčné a chlazené', 'mlecne-a-chlazene', NULL, NULL, now(), NULL, '0'),
       (5, NULL, 'Nápoje', 'napoje', NULL, NULL, now(), NULL, '0'),
       (6, 1, 'Chléb', 'chleb', NULL, NULL, now(), NULL, '0'),
       (7, 1, 'Sladké pečivo', 'sladke-pecivo', NULL, NULL, now(), NULL, '0'),
       (8, 2, 'Zelenina', 'zelenina', NULL, NULL, now(), NULL, '0'),
       (9, 2, 'Ovoce', 'ovoce', NULL, NULL, now(), NULL, '0'),
       (10, 3, 'Hovězí maso', 'hovezi-maso', NULL, NULL, now(), NULL, '0'),
       (11, 3, 'Drůbeží maso', 'drubezi-maso', NULL, NULL, now(), NULL, '0'),
       (12, 4, 'Tvarohy', 'tvarohy', NULL, NULL, now(), NULL, '0'),
       (13, 4, 'Jogurty a mléčné dezerty', 'jogurty-a-mlecne-dezerty', NULL, NULL, now(), NULL, '0'),
       (14, 5, 'Vína', 'vina', NULL, NULL, now(), NULL, '0'),
       (15, 5, 'Čaje', 'caje', NULL, NULL, now(), NULL, '0');


INSERT INTO `product` (`id`, `name`, `url`, `short_description`, `created`, `updated`, `deleted`)
VALUES (1, 'Chléb konzumní kmínový', 'chleb-konzumni-kminovy', 'Chléb pšenično-žitný oválný.', now(), NULL, '0'),
       (2, 'Bageta světlá malá', 'bageta-svetla-mala', 'Běžné pšeničné pečivo.', now(), NULL, '0'),
       (3, 'Pizza rolka', 'pizza-rolka', 'Pekařský výrobek z listového těsta.', now(), NULL, '0');

INSERT INTO `product_category` (`product_id`, `category_id`, `created`, `updated`, `deleted`)
VALUES (1, 6, now(), NULL, '0'),
       (2, 6, now(), NULL, '0'),
       (3, 6, now(), NULL, '0');


