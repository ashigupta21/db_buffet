CREATE DEFINER=`root`@`localhost` PROCEDURE `Buffet`.`getCartItems`(
IN USERPARAM INT(10)
)
BEGIN
	
	SELECT * FROM cart_details JOIN menu_initial ON cart_details.menu_id = menu_initial.id WHERE user_id = USERPARAM;
	
END;

-------------------------------------------------------------------------------------

CREATE DEFINER=`root`@`localhost` PROCEDURE `Buffet`.`pushItemsToCart`(
IN userParam INT(100),
IN menuParam INT(100),
IN offerParam INT(100),
IN toppingParam INT(100)
)
BEGIN
	
	INSERT INTO cart_details (user_id,menu_id,offer_id,toppings_id) values (userParam, menuParam, offerParam,toppingParam);
	
	
END;
