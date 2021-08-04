-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: mapp
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `profile` varchar(200) NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `subcategory_id` int unsigned NOT NULL,
  `company_id` int unsigned NOT NULL,
  `rating` int unsigned DEFAULT NULL,
  `duration` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_subcategory1_idx` (`subcategory_id`),
  KEY `fk_product_company1_idx` (`company_id`),
  CONSTRAINT `fk_product_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `fk_product_subcategory1` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Ανδρικό κούρεμα',15.00,9,1,5,1,1,'Ένας καλός κομμωτής μπορεί αμέσως να αναγνωρίσει το ιδανικό χτένισμα και κούρεμα για εσένα, με μια μόνο ματιά. Άλλα επειδή, αυτό δεν συμβαίνει πάντα, είμαι εδώ να σου δείξω τι πρέπει να προτιμάς, ανάλογα το σχήμα του προσώπου σου.'),(2,'Ξύρισμα',10.00,9,1,5,1,1,'Το πρωινό ξύρισμα είναι γνωστή συνήθεια για πολλούς άνδρες, όμως το δέρμα όταν ξυπνάμε είναι πρησμένο και περισσότερο ευαίσθητο, άρα και πιο ευάλωτο απέναντι στο ξυράφι. Είναι λοιπόν προτιμότερο να γίνεται 1-2 ώρες αφότου ξυπνήσουμε ή το βράδυ.'),(3,'Μανικιούρ με ημιμόνιμο βερνίκι',12.00,10,2,5,2,1,'Βαρέθηκες να βάφεις κάθε βδομάδα τα νύχια σου; Φοβάσαι να πλύνεις τα πιάτα για να μην ξεφλουδίζει το βερνίκι σου; Τότε ξεκίνησε τον εύκολο και ξεκούραστο τρόπο και δώσε διάρκεια 2-3 εβδομάδες με το ημιμόνιμο βερνίκι! Την τάση που όλοι αγαπήσαμε τα τελευταία χρόνια και έγινε μέρος της ζωής μας.'),(4,'Πεντικιούρ με ημιμόνιμο βερνίκι',8.00,10,2,5,2,1,'Βαρέθηκες να βάφεις κάθε βδομάδα τα νύχια σου; Φοβάσαι να πλύνεις τα πιάτα για να μην ξεφλουδίζει το βερνίκι σου; Τότε ξεκίνησε τον εύκολο και ξεκούραστο τρόπο και δώσε διάρκεια 2-3 εβδομάδες με το ημιμόνιμο βερνίκι! Την τάση που όλοι αγαπήσαμε τα τελευταία χρόνια και έγινε μέρος της ζωής μας.'),(5,'Ημιμόνιμο μανικιούρ',15.00,10,3,5,2,1,'Βαρέθηκες να βάφεις κάθε βδομάδα τα νύχια σου; Φοβάσαι να πλύνεις τα πιάτα για να μην ξεφλουδίζει το βερνίκι σου; Τότε ξεκίνησε τον εύκολο και ξεκούραστο τρόπο και δώσε διάρκεια 2-3 εβδομάδες με το ημιμόνιμο βερνίκι! Την τάση που όλοι αγαπήσαμε τα τελευταία χρόνια και έγινε μέρος της ζωής μας.'),(6,'Ημιμόνιμο πεντικιούρ',15.00,10,3,5,2,1,'Βαρέθηκες να βάφεις κάθε βδομάδα τα νύχια σου; Φοβάσαι να πλύνεις τα πιάτα για να μην ξεφλουδίζει το βερνίκι σου; Τότε ξεκίνησε τον εύκολο και ξεκούραστο τρόπο και δώσε διάρκεια 2-3 εβδομάδες με το ημιμόνιμο βερνίκι! Την τάση που όλοι αγαπήσαμε τα τελευταία χρόνια και έγινε μέρος της ζωής μας.'),(7,'Περιποίηση χεριών - ημιμόνιμο μανικιούρ',17.00,10,4,5,2,1,'Βαρέθηκες να βάφεις κάθε βδομάδα τα νύχια σου; Φοβάσαι να πλύνεις τα πιάτα για να μην ξεφλουδίζει το βερνίκι σου; Τότε ξεκίνησε τον εύκολο και ξεκούραστο τρόπο και δώσε διάρκεια 2-3 εβδομάδες με το ημιμόνιμο βερνίκι! Την τάση που όλοι αγαπήσαμε τα τελευταία χρόνια και έγινε μέρος της ζωής μας.'),(8,'Περιποίηση ποδιών - ημιμόνιμο πεντικιούρ',15.00,10,4,5,2,1,'Βαρέθηκες να βάφεις κάθε βδομάδα τα νύχια σου; Φοβάσαι να πλύνεις τα πιάτα για να μην ξεφλουδίζει το βερνίκι σου; Τότε ξεκίνησε τον εύκολο και ξεκούραστο τρόπο και δώσε διάρκεια 2-3 εβδομάδες με το ημιμόνιμο βερνίκι! Την τάση που όλοι αγαπήσαμε τα τελευταία χρόνια και έγινε μέρος της ζωής μας.'),(9,'Ανδρικό κούρεμα',7.00,9,5,5,1,1,'Ένας καλός κομμωτής μπορεί αμέσως να αναγνωρίσει το ιδανικό χτένισμα και κούρεμα για εσένα, με μια μόνο ματιά. Άλλα επειδή, αυτό δεν συμβαίνει πάντα, είμαι εδώ να σου δείξω τι πρέπει να προτιμάς, ανάλογα το σχήμα του προσώπου σου.'),(10,'Ανδρικό ξύρισμα - περιποίηση γενειάδας',7.00,9,5,5,1,1,'Σημαντικό είναι πριν το ξύρισμα το μασάζ. Απλώνοντας είτε τον αφρό είτε το gel κάνε απαλό μασάζ, το οποίο θα βοηθήσεi στην αιμάτωση της περιοχής και συνεπώς θα μαλακώσει την τρίχα'),(11,'Επισκευή καζανάκι',30.00,5,6,5,2,1,'Τρέχει το καζανάκι και δε ξέρετε τι να κάνετε; Μπορείτε να προσπαθήσετε και μόνοι σας να το διορθώσετε. Πως; Ακολουθώντας τα 9 παρακάτω εύκολα βήματα. Αν πάλι δε τα καταφέρετε δε θα πρέπει να αγχώνεστε ! Μπορείτε να καλέσετε κάποιον υδραυλικό !'),(12,'διάφορες υδραυλικές εργασίες',50.00,5,6,5,2,1,'Βρισκόμαστε στον χώρο εδώ και 27 χρόνια και έχουμε αποκτήσει μεγάλη εμπειρία αλλά και εξειδίκευση στην ψύξη και τη θέρμανση. Για σόμπες ξύλων για σώματα, ηλεκτρικά μπόιλερ για σώματα, air condition, αντλίες πιεστικά, boiler κ.α., η εταιρεία Υδραυλικά Express  με σιγουριά και αξιοπιστία θα σας προσφέρει τα προϊόντα και τις υπηρεσίες που χρειάζεστε.'),(13,'Επισκευή/αλλαγή καζανάκι παντός τύπου',35.00,5,7,5,2,1,'Η λαστιχένια φούσκα βρίσκεται στο κάτω μέρος από το καζανάκι, στο σημείο επαφής με την λεκάνη και είναι υπεύθυνη για να κλείνει το στόμιο από το οποίο περνάει το νερό για τη λεκάνη. Αν λοιπόν η λαστιχένια φούσκα έχει φθαρεί, ή έχει μαζέψει πολλά άλατα, τότε δεν φράζει καλά το στόμιο.'),(14,'Επισκευή καλοριφέρ',45.00,5,7,5,2,1,'Η διαρροή σωλήνα καλοριφέρ συνήθως χρειάζεται κάποιον υδραυλικό για να την επιδιορθώσει. Ωστόσο αν η διαρροή  είναι μικρή μπορείτε να δοκιμάσετε και μόνοι σας. Θέλει ιδιαίτερη προσοχή, καθώς μπορεί να μη καταφέρετε να την αντιμετωπίσετε αποτελεσματικά. Αυτό μελλοντικά θα προκαλέσει μεγαλύτερο πρόβλημα και σίγουρα θα χρειαστεί να επικοινωνήσετε με κάποιον ειδικό'),(15,'Hatha Yoga session',20.00,14,8,5,3,1,'Αυτήν την περίοδο περισσότερο από ποτέ, ΑΥΤΟ είναι το πρόγραμμα που χρειάζεσαι! ΤΩΡΑ! Για να ενδυναμώσεις ακόμα περισσότερο το εσωτερικό σου δυναμικό. ΤΩΡΑ! Για να πιστέψεις ακόμα περισσότερο στον εαυτό σου και στη δύναμη σου.'),(16,'Pilates Orthosomia session',15.00,14,8,5,1,1,'Βουτήξτε βαθιά στην τέχνη της αληθινής γιόγκα και βιώστε την όπως προήλθε από τις πραγματικές εμπειρίες πολλών ανθρώπων και από τον εγκάρδιο διάλογο μεταξύ φίλων, αποτελώντας μέρος της μεγάλης επιστροφής μας στον εαυτό μας και του θαύματος της αληθινής μας ύπαρξης!'),(17,'Vinyasa Yoga session',20.00,14,8,5,2,1,'Ένας χώρος αφιερωμένος στην ολιστική προσέγγιση της γιόγκα. Με όραμα τη δημιουργία μιας όμορφης γιογκικής κοινότητας, μοιραζόμαστε καθημερινά αληθινές στιγμές, γεμάτες αγάπη, εμπιστοσύνη και αλληλοσεβασμό.'),(18,'Cross Fit training session',40.00,14,9,5,2,1,'Ο στόχος του CrossFit είναι να σφυρηλατήσει το κορμί μέσα από μια ευρεία, γενική και χωρίς αποκλεισμούς προπόνηση, όπως υποστηρίζουν και οι εκπαιδευτές. Να δομήσει ένα πρόγραμμα που θα προετοιμάσει καλύτερα τον εκπαιδευόμενο για οποιαδήποτε συνθήκη έκτακτης ανάγκης. Με άλλα λόγια, μία προπόνηση, ιδανική για όλους που ειδικεύεται… στα πάντα.'),(19,'Pilates orthosomia Session',18.00,14,9,5,1,1,'Ακολούθησε τις μοναδικές σε ασφάλεια και αποτέλεσμα ασκήσεις pilates και δες το σώμα σου να αλλάζει ΑΜΕΣΑ!'),(20,'Επισκευή Η/Υ - laptop',20.00,18,10,5,1,1,'Όποιον τύπο επιτραπέζιου υπολογιστή κι αν διαθέτετε, μπορείτε να βασιστείτε σε εμάς για οτιδήποτε χρειάζεστε! Οι εξειδικευμένοι τεχνικοί μας, με υψηλή τεχνογνωσία στις επισκευές υπολογιστών, σας προσφέρουν επαγγελματική εξυπηρέτηση στις πιο οικονομικές τιμές της αγοράς'),(21,'Επισκευή κινητού - αλλαγή οθόνης',15.00,18,10,5,1,1,'Υποστηρίζουμε και προσφέρουμε τεχνική υποστήριξη όλων των βλαβών (σπασμένη οθόνη, δεν ανάβει, δεν φορτίζει, χαλασμένα κουμπιά, χαλασμένα βύσματα, μπαταρία, επισκευή πλακέτας, υγρασία,...) σε όλα τα μοντέλα SmartPhone όλων των κατασκευαστών.'),(22,'Επισκευές Η/Υ - laptop, εγκαταστάσεις λογισμικού, antivirus',22.00,18,11,5,1,1,'Προσφέρει γρήγορες και οικονομικές επισκευές Laptop, Υπολογιστών, Motherboard & Εκτυπωτών. Γνωρίζουμε ότι ο υπολογιστής σας είναι το κύριο κομβικό σημείο του ψηφιακού κόσμου σας. Εάν ο υπολογιστής σας δεν λειτουργεί σωστά, δεν μπορείτε να εργαστείτε ή να παίξετε!'),(23,'Επσικευή smartphone κινητού - αλλαγή σπασμένης οθόνης',18.00,18,11,5,1,1,'Επισκευάζουμε άμεσα σχεδόν όλες τις βλάβες των Smartphones ώστε να λειτουργούν σαν καινούργια, με υψηλής ποιότητας ανταλλακτικά και με άμεσους χρόνους επισκευής (20 λεπτά) των περισσοτέρων βλαβών, κάτι που αποδεικνύεται από το υψηλότατο ποσοστό ικανοποίησης των πελατών μας 99.1%.'),(24,'rweqw',11.00,1,1,5,1,1,'SAD');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-19 22:09:29