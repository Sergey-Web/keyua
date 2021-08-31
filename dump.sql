create schema keyua collate utf8mb4_0900_ai_ci;

create table categories
(
    id     bigint unsigned auto_increment
        primary key,
    name   varchar(50) not null,
    parent tinyint     null
)
    collate = utf8mb4_unicode_ci;

INSERT INTO keyua.categories (id, name, parent) VALUES (1, 'category_67d5af3bba1', null);
INSERT INTO keyua.categories (id, name, parent) VALUES (2, 'category_62011023ce2', 1);
INSERT INTO keyua.categories (id, name, parent) VALUES (3, 'category_516487fa303', 2);
INSERT INTO keyua.categories (id, name, parent) VALUES (4, 'category_ed901840ff4', 2);
INSERT INTO keyua.categories (id, name, parent) VALUES (5, 'category_802df6558a5', 2);
INSERT INTO keyua.categories (id, name, parent) VALUES (6, 'category_b72d3765336', 3);
INSERT INTO keyua.categories (id, name, parent) VALUES (7, 'category_f23b9b88467', 3);
INSERT INTO keyua.categories (id, name, parent) VALUES (8, 'category_88a5873b6c8', 3);
INSERT INTO keyua.categories (id, name, parent) VALUES (9, 'category_e70d9bb29a9', 1);
INSERT INTO keyua.categories (id, name, parent) VALUES (10, 'category_4cd6ac497310', 1);
INSERT INTO keyua.categories (id, name, parent) VALUES (11, 'category_9f7505dae011', 1);
INSERT INTO keyua.categories (id, name, parent) VALUES (12, 'category_06e56d23a712', 2);
INSERT INTO keyua.categories (id, name, parent) VALUES (13, 'category_333f15e23613', 2);
INSERT INTO keyua.categories (id, name, parent) VALUES (14, 'category_f635d4620f14', 2);
INSERT INTO keyua.categories (id, name, parent) VALUES (15, 'category_2624f279bf15', 3);
INSERT INTO keyua.categories (id, name, parent) VALUES (16, 'category_13753a906516', 3);
INSERT INTO keyua.categories (id, name, parent) VALUES (17, 'category_68c9f4576617', 3);
INSERT INTO keyua.categories (id, name, parent) VALUES (18, 'category_79dee3305a18', 1);
INSERT INTO keyua.categories (id, name, parent) VALUES (19, 'category_2a1e52cdc919', 1);
INSERT INTO keyua.categories (id, name, parent) VALUES (20, 'category_1d336efb2920', 1);


create table products
(
    id   bigint unsigned auto_increment
        primary key,
    name varchar(50) not null
)
    collate = utf8mb4_unicode_ci;

INSERT INTO keyua.products (id, name) VALUES (1, 'product_5cda113ce71');
INSERT INTO keyua.products (id, name) VALUES (2, 'product_7649550f3a2');
INSERT INTO keyua.products (id, name) VALUES (3, 'product_6c2f445fbc3');
INSERT INTO keyua.products (id, name) VALUES (4, 'product_6a1d256c024');
INSERT INTO keyua.products (id, name) VALUES (5, 'product_4f7c8f6b765');
INSERT INTO keyua.products (id, name) VALUES (6, 'product_ab7f31ea266');
INSERT INTO keyua.products (id, name) VALUES (7, 'product_f0634f330a7');
INSERT INTO keyua.products (id, name) VALUES (8, 'product_b492108f9d8');
INSERT INTO keyua.products (id, name) VALUES (9, 'product_752d6467c59');
INSERT INTO keyua.products (id, name) VALUES (10, 'product_17e7fe71de10');
INSERT INTO keyua.products (id, name) VALUES (11, 'product_452bae5bf911');
INSERT INTO keyua.products (id, name) VALUES (12, 'product_db683ae39912');
INSERT INTO keyua.products (id, name) VALUES (13, 'product_7db0f78d2513');
INSERT INTO keyua.products (id, name) VALUES (14, 'product_806aef85df14');
INSERT INTO keyua.products (id, name) VALUES (15, 'product_2a0df1031715');
INSERT INTO keyua.products (id, name) VALUES (16, 'product_e5aeda35c416');
INSERT INTO keyua.products (id, name) VALUES (17, 'product_b7d5bddcb617');
INSERT INTO keyua.products (id, name) VALUES (18, 'product_256b28f55e18');
INSERT INTO keyua.products (id, name) VALUES (19, 'product_133b65f95319');
INSERT INTO keyua.products (id, name) VALUES (20, 'product_33bf219ce420');

create table product_category
(
    id          bigint unsigned auto_increment
        primary key,
    product_id  bigint unsigned not null,
    category_id bigint unsigned not null,
    constraint product_category_category_id_foreign
        foreign key (category_id) references categories (id),
    constraint product_category_product_id_foreign
        foreign key (product_id) references products (id)
)
    collate = utf8mb4_unicode_ci;

INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (1, 1, 4);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (2, 2, 12);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (3, 3, 15);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (4, 4, 19);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (5, 5, 10);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (6, 6, 4);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (7, 7, 18);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (8, 8, 12);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (9, 9, 20);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (10, 10, 16);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (11, 11, 7);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (12, 12, 7);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (13, 13, 5);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (14, 14, 19);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (15, 15, 13);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (16, 16, 20);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (17, 17, 18);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (18, 18, 14);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (19, 19, 3);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (20, 20, 2);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (21, 17, 9);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (22, 1, 20);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (23, 20, 12);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (24, 19, 16);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (25, 20, 4);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (26, 11, 3);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (27, 8, 9);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (28, 10, 18);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (29, 17, 1);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (30, 4, 6);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (31, 10, 5);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (32, 15, 8);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (33, 8, 16);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (34, 18, 3);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (35, 5, 19);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (36, 20, 5);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (37, 2, 7);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (38, 4, 1);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (39, 7, 13);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (40, 9, 10);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (41, 1, 1);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (42, 9, 2);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (43, 2, 15);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (44, 10, 19);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (45, 9, 14);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (46, 16, 19);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (47, 5, 9);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (48, 8, 1);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (49, 16, 8);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (50, 13, 20);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (51, 5, 17);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (52, 20, 3);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (53, 7, 17);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (54, 17, 9);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (55, 2, 6);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (56, 11, 7);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (57, 6, 7);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (58, 1, 17);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (59, 4, 10);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (60, 3, 8);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (61, 13, 1);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (62, 15, 13);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (63, 8, 8);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (64, 8, 12);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (65, 12, 16);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (66, 9, 9);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (67, 18, 16);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (68, 8, 4);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (69, 5, 4);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (70, 14, 9);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (71, 2, 11);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (72, 3, 1);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (73, 16, 2);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (74, 9, 3);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (75, 6, 14);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (76, 9, 19);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (77, 11, 19);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (78, 13, 6);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (79, 13, 19);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (80, 1, 2);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (81, 4, 14);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (82, 9, 11);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (83, 10, 14);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (84, 17, 7);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (85, 2, 19);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (86, 7, 9);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (87, 3, 8);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (88, 5, 16);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (89, 5, 10);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (90, 18, 4);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (91, 10, 9);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (92, 13, 6);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (93, 4, 18);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (94, 11, 14);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (95, 16, 5);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (96, 5, 3);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (97, 20, 14);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (98, 16, 4);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (99, 1, 8);
INSERT INTO keyua.product_category (id, product_id, category_id) VALUES (100, 3, 19);


create table migrations
(
    id        int unsigned auto_increment
        primary key,
    migration varchar(255) not null,
    batch     int          not null
)
    collate = utf8mb4_unicode_ci;

INSERT INTO keyua.migrations (id, migration, batch) VALUES (1, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO keyua.migrations (id, migration, batch) VALUES (2, '2021_08_30_083800_create_products_table', 1);
INSERT INTO keyua.migrations (id, migration, batch) VALUES (3, '2021_08_30_084026_create_categories_table', 1);
INSERT INTO keyua.migrations (id, migration, batch) VALUES (4, '2021_08_30_120542_product_category', 1);
