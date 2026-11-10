CREATE TABLE amz_user (
    email       VARCHAR(255) PRIMARY KEY,
    fname       VARCHAR(255) NOT NULL,
    lname       VARCHAR(255),
    password    VARCHAR(30) NOT NULL,
    user_type   NUMBER(1) NOT NULL
);

CREATE TABLE contact_detail (
    user_id      VARCHAR(255) NOT NULL,
    address_id   INTEGER PRIMARY KEY,
    street1      VARCHAR(255) NOT NULL,
    street2      VARCHAR(255),
    city         VARCHAR(50) NOT NULL,
    state        VARCHAR(50) NOT NULL,
    country      VARCHAR(50) NOT NULL,
    zipcode      NUMBER(5) NOT NULL,
    phone        VARCHAR(20) NOT NULL,
    is_default   NUMBER(1) DEFAULT 0
);

CREATE TABLE card_info (
    card_id       INTEGER PRIMARY KEY,
    card_number   NUMBER(16) NOT NULL,
    expiry_date   DATE NOT NULL,
    cvv           NUMBER(3) NOT NULL,
    buyer_id      VARCHAR(255) NOT NULL,
    is_default    NUMBER(1)
);

CREATE TABLE buyer (
    buyer_id            VARCHAR(255) PRIMARY KEY,
    is_prime            NUMBER(1) DEFAULT 0,
    prime_expiry_date   DATE
);

CREATE TABLE seller (
    seller_id        VARCHAR(255) PRIMARY KEY,
    company_name     VARCHAR(255) NOT NULL,
    url              VARCHAR(255),
    description      VARCHAR(255),
    average_rating   NUMBER(2, 1) DEFAULT 2.5,
    rating_count     NUMBER DEFAULT 0
);

CREATE TABLE category (
    category_id     INTEGER PRIMARY KEY,
    category_name   VARCHAR(255) NOT NULL
);

CREATE TABLE product (
    product_id         INTEGER PRIMARY KEY,
    name               VARCHAR(255) NOT NULL,
    seller_id          VARCHAR(255) NOT NULL,
    price              NUMBER(10, 2) NOT NULL,
    rating             NUMBER(2, 1),
    review_count       INTEGER,
    category_id        INTEGER,
    description        VARCHAR(255),
    discount_percent   NUMBER(4, 2),
    available_units    INTEGER,
    color              VARCHAR(30),
    in_stock           NUMBER(1),
    weight             NUMBER(10, 2),
    carrier_id         INTEGER
);

CREATE TABLE product_image (
    product_id   INTEGER,
    image_url    VARCHAR(255),
    PRIMARY KEY ( product_id,
                  image_url )
);

CREATE TABLE shopping_cart (
    buyer_id     VARCHAR(255),
    date_added   DATE
);

CREATE TABLE product_shoppingcart (
    product_id   INTEGER,
    buyer_id     VARCHAR(255),
    PRIMARY KEY ( product_id,
                  buyer_id )
);

CREATE TABLE wish_list (
    buyer_id     VARCHAR(255),
    date_added   DATE
);

CREATE TABLE product_wishlist (
    product_id   INTEGER,
    buyer_id     VARCHAR(255),
    PRIMARY KEY ( product_id,
                  buyer_id )
);

CREATE TABLE amz_order (
    order_id              INTEGER PRIMARY KEY,
    buyer_id              VARCHAR(255) NOT NULL,
    card_id               INTEGER NOT NULL,
    total_price           NUMBER(10, 2),
    order_date            DATE,
    tax                   NUMBER(4, 2) DEFAULT 10,
    shipping_price        NUMBER(4, 2) DEFAULT 10,
    delivery_address_id   INTEGER,
    delivery_date         DATE,
    order_status          CHAR(1) NOT NULL,
    quantity              INTEGER NOT NULL
);

CREATE TABLE order_product (
    order_id     INTEGER,
    product_id   INTEGER,
    PRIMARY KEY ( order_id,
                  product_id )
);

CREATE TABLE review (
    review_id     INTEGER PRIMARY KEY,
    product_id    INTEGER NOT NULL,
    buyer_id      VARCHAR(255) NOT NULL,
    review        VARCHAR(1000),
    rating        NUMBER(2, 1),
    review_date   DATE
);

CREATE TABLE review_image (
    review_id   INTEGER,
    image_url   VARCHAR(255),
    PRIMARY KEY ( review_id,
                  image_url )
);

CREATE TABLE carrier (
    carrier_id      INTEGER PRIMARY KEY,
    carrier_name    VARCHAR(255) NOT NULL,
    carrier_phone   NUMBER(10) NOT NULL,
    carrier_email   VARCHAR(255) NOT NULL
);
