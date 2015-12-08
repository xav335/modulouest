<?

	// ---- D�finition des constantes du site ------------------------ //
	//echo $_SERVER[ "DOCUMENT_ROOT" ] . "<br>";
	switch( $_SERVER[ "DOCUMENT_ROOT" ] ) {
		
		// ---- Serveur local Franck -------- //
		case "/var/www/modul-ouest" :
			$localhost = "localhost";
			$dbname = "modulouest";
			$user = "modulouest";
			$mdp = "modulouest";
			break;
		
		// ---- Serveur PRE-PROD ------------ //
		case "/home/web/modulouest" :
			$localhost = "localhost";
			$dbname = "modulouest";
			$user = "modulouest";
			$mdp = "modulouest33";
			break;
		
		// ---- Serveur PROD ---------------- //
		case "/var/www/modulouest" :
			$localhost = "localhost";
			$dbname = "modulouest";
			$user = "modulouest";
			$mdp = "modulouest33";
			break;
		default:
		    $localhost = "localhost";
		    $dbname = "modulouest";
		    $user = "modulouest";
		    $mdp = "modulouest33";
		    break;
	}
		
	define( "DBHOST",	$localhost );
	define( "DBNAME",	$dbname );
	define( "DBUSER",	$user );
	define( "DBPASSWD", $mdp );
	
	define( "MAILCUSTOMER", 	"NePasRepondre@fournil.com" );
	define( "MAILNAMECUSTOMER", "Modul Ouest" );
	define( "URLSITEDEFAULT", 	"http://www.modul-ouest.com/" );
	define( "FACEBOOK_LINK", 	"https://www.facebook.com/#" );
	define( "DAILYMOTION_LINK", "#" );
	
	// ---- Mail d'envoi
	define( "MAIL_TEST", 	"fjavi.gonzalez@gmail.com" ); // Si rempli alors cette valeur ser utilis�e pour les diff�rents envois de mails
	define( "MAIL_CONTACT", "fjavi.gonzalez@gmail.com" );
	define( "MAIL_BCC", 	"xav335@hotmail.com,xavier.gonzalez@laposte.net,jav_gonz@yahoo.com" );
?>