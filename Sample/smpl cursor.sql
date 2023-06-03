CREATE TABLE orders (
    id INT PRIMARY KEY,
    total DECIMAL(10, 2)
);

INSERT INTO orders VALUES
(1, 100.00),
(2, 200.00),
(3, 300.00);


DELIMITER //
CREATE PROCEDURE process_orders()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE order_id INT;
    DECLARE order_total DECIMAL(10, 2);
    DECLARE cur_orders CURSOR FOR SELECT id, total FROM orders;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur_orders;

    orders_loop: LOOP
        FETCH cur_orders INTO order_id, order_total;
        IF done THEN
            LEAVE orders_loop;
        END IF;

        -- Perform some operation on the order
        UPDATE orders SET total = order_total * 1.1 WHERE id = order_id;
    END LOOP;

    CLOSE cur_orders;
END //
DELIMITER ;

CALL process_orders();

SELECT * FROM orders;

