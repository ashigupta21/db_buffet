--Admin--
        var sql="SELECT * FROM `admin_credential` WHERE `password`=?";

--Menu Initial--
	--add Menu--
        var sql="INSERT INTO menu_initial(category_id,menu_name,price,size,offer_id,topping_count,image) VALUES (?,?,?,?,?,?,?)";
    --update Menu--      
    	var sql="UPDATE menu_initial SET category_id = ?, menu_name = ?, price = ?, size =?, offer_id = ?, topping_count = ?,image=?, WHERE id = ? ";
    --get Menu--
    	var sql="SELECT * FROM menu_initial JOIN menu_category ON menu_initial.category_id = menu_category.cat_id JOIN toppings ON menu_initial.topping_count=toppings.topping_id JOIN offers ON menu_initial.offer_id=offers.offer_id ORDER BY category_id,menu_name DESC";
    --delete Menu--
    	var sql="DELETE FROM menu_initial WHERE id = ?";



 --Menu Categories--
 	--add--
 	    var sql="INSERT INTO menu_category(category_name,sub_category_name) VALUES (?,?)";
 	--update--
 	   	var sql="UPDATE menu_category SET category_name = ?, sub_category_name = ? WHERE cat_id = ? ";
 	--get--
 		var sql="SELECT * FROM menu_category";
 	--delete--
        var sql="DELETE FROM menu_category WHERE cat_id = ?";



--Reports--
	--get--
        var sql="SELECT * FROM reports";
    --analysis--
    	var sql="SELECT * FROM orders_history";



--Authtentication User-- Login User

        var sql="SELECT * FROM `users_profile` WHERE `phone`=?";
        var sqlInsert = "UPDATE login_session SET timestamp = ?, login = ? WHERE user_id=?";


--Blogs--

        var sql="INSERT INTO blog_feeds(user,url,caption,timestamp) VALUES (?,?,?,?)";
        var sql1 = "INSERT INTO blog_likes(blog_id,likes) VALUES(?,?)";
        var sql2 = "SELECT * FROM blog_feeds ORDER BY blog_id DESC LIMIT 1"

--Get All Orders--

        var sql="SELECT * FROM orders_history AS oh JOIN menu_initial AS mi ON oh.menu_id = mi.id JOIN toppings ON mi.topping_count=toppings.topping_id JOIN offers ON mi.offer_id=offers.offer_id";

--Wallet--
		--Service Activate for wallet --
        var sql = "INSERT INTO wallet_service(userID,mobile,service) VALUES (?,?,?)";

		--Check Status of User's Wallet Service

	    var sqlCheck = "SELECT * FROM wallet_service WHERE userID=" + userID;

		--//getAllTransactions of User by ID
		var sqlCheck = "SELECT * FROM wallet_transactions WHERE user_id=" + userID;

		--//get user details
	    var sql="SELECT * FROM wallet_details INNER JOIN users_profile on wallet_details.user_id=users_profile.user_id WHERE wallet_details.user_id=?";
