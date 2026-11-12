ALTER TABLE contact_detail
    ADD CONSTRAINT contact_detail_user_id_fk FOREIGN KEY ( user_id )
        REFERENCES amz_user ( email )
            ON DELETE CASCADE;

ALTER TABLE card_info
    ADD CONSTRAINT card_info_buyer_id_fk FOREIGN KEY ( buyer_id )
        REFERENCES buyer ( buyer_id )
            ON DELETE CASCADE;

ALTER TABLE product
    ADD CONSTRAINT product_seller_id_fk FOREIGN KEY ( seller_id )
        REFERENCES seller ( seller_id )
            ON DELETE CASCADE;

ALTER TABLE product
    ADD CONSTRAINT product_category_id_fk FOREIGN KEY ( category_id )
        REFERENCES category ( category_id )
            ON DELETE CASCADE;

ALTER TABLE product
    ADD CONSTRAINT product_carrier_id_fk FOREIGN KEY ( carrier_id )
        REFERENCES carrier ( carrier_id )
            ON DELETE CASCADE;

ALTER TABLE product_image
    ADD CONSTRAINT product_image_product_id_fk FOREIGN KEY ( product_id )
        REFERENCES product ( product_id )
            ON DELETE CASCADE;

ALTER TABLE shopping_cart
    ADD CONSTRAINT shopping_cart_buyer_id_fk FOREIGN KEY ( buyer_id )
        REFERENCES buyer ( buyer_id )
            ON DELETE CASCADE;

ALTER TABLE product_shoppingcart
    ADD CONSTRAINT product_sc_buyer_id_fk FOREIGN KEY ( buyer_id )
        REFERENCES buyer ( buyer_id )
            ON DELETE CASCADE;

ALTER TABLE product_shoppingcart
    ADD CONSTRAINT product_sc_product_id_fk FOREIGN KEY ( product_id )
        REFERENCES product ( product_id )
            ON DELETE CASCADE;

ALTER TABLE wish_list
    ADD CONSTRAINT wishlist_buyer_id_fk FOREIGN KEY ( buyer_id )
        REFERENCES buyer ( buyer_id )
            ON DELETE CASCADE;

ALTER TABLE product_wishlist
    ADD CONSTRAINT product_wishlist_product_id_fk FOREIGN KEY ( product_id )
        REFERENCES product ( product_id )
            ON DELETE CASCADE;

ALTER TABLE product_wishlist
    ADD CONSTRAINT product_wishlist_buyer_id_fk FOREIGN KEY ( buyer_id )
        REFERENCES buyer ( buyer_id )
            ON DELETE CASCADE;

ALTER TABLE amz_order
    ADD CONSTRAINT order_buyer_id_fk FOREIGN KEY ( buyer_id )
        REFERENCES buyer ( buyer_id )
            ON DELETE CASCADE;

ALTER TABLE amz_order
    ADD CONSTRAINT order_card_id_fk FOREIGN KEY ( card_id )
        REFERENCES card_info ( card_id )
            ON DELETE CASCADE;

ALTER TABLE amz_order
    ADD CONSTRAINT order_delivery_address_id_fk FOREIGN KEY ( delivery_address_id )
        REFERENCES contact_detail ( address_id )
            ON DELETE CASCADE;

ALTER TABLE order_product
    ADD CONSTRAINT order_product_order_id_fk FOREIGN KEY ( order_id )
        REFERENCES amz_order ( order_id )
            ON DELETE CASCADE;

ALTER TABLE order_product
    ADD CONSTRAINT order_product_product_id_fk FOREIGN KEY ( product_id )
        REFERENCES product ( product_id )
            ON DELETE CASCADE;

ALTER TABLE review
    ADD CONSTRAINT review_product_id_fk FOREIGN KEY ( product_id )
        REFERENCES product ( product_id )
            ON DELETE CASCADE;

ALTER TABLE review
    ADD CONSTRAINT review_buyer_id_fk FOREIGN KEY ( buyer_id )
        REFERENCES buyer ( buyer_id )
            ON DELETE CASCADE;

ALTER TABLE review_image
    ADD CONSTRAINT review_image_review_id_fk FOREIGN KEY ( review_id )
        REFERENCES review ( review_id )
            ON DELETE CASCADE;
