-- MySQL dump 10.13  Distrib 5.5.58, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ciclope
-- ------------------------------------------------------
-- Server version	5.5.58-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ipes_has_polos`
--

DROP TABLE IF EXISTS `ipes_has_polos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipes_has_polos` (
  `ipes_id` int(11) NOT NULL,
  `polos_id` int(11) NOT NULL,
  PRIMARY KEY (`ipes_id`,`polos_id`),
  KEY `fk_ipes_has_polos_polos1_idx` (`polos_id`),
  KEY `fk_ipes_has_polos_ipes_idx` (`ipes_id`),
  CONSTRAINT `fk_ipes_has_polos_ipes` FOREIGN KEY (`ipes_id`) REFERENCES `ipes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ipes_has_polos_polos1` FOREIGN KEY (`polos_id`) REFERENCES `polos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipes_has_polos`
--

LOCK TABLES `ipes_has_polos` WRITE;
/*!40000 ALTER TABLE `ipes_has_polos` DISABLE KEYS */;
INSERT INTO `ipes_has_polos` VALUES (2990,1),(3869,1),(4310,1),(4348,1),(2990,2),(3869,2),(4348,2),(2990,3),(3869,3),(4348,3),(4378,3),(2990,5),(4348,5),(4378,5),(2990,6),(4310,6),(4348,6),(2990,7),(3869,7),(4348,7),(2990,8),(4310,8),(4348,8),(4378,8),(2825,9),(4353,9),(5136,9),(4353,10),(4357,10),(4664,10),(4353,11),(2990,12),(4353,12),(4664,12),(4667,12),(3869,14),(4369,14),(5206,14),(2831,17),(4342,17),(4378,17),(4548,17),(2831,18),(4548,18),(3870,20),(4354,20),(4355,20),(4364,20),(4378,20),(4440,20),(2990,21),(3870,21),(4440,21),(3870,22),(4354,22),(4378,22),(4667,22),(3870,23),(4354,23),(4355,23),(4378,23),(3870,24),(4354,24),(4440,24),(3206,25),(3870,25),(4354,25),(4440,25),(3870,28),(4354,28),(4355,28),(4440,28),(3870,29),(4354,29),(4377,29),(4440,29),(4445,29),(3870,30),(4354,30),(4362,30),(4365,30),(4378,30),(4440,30),(4664,30),(3870,31),(4354,31),(4355,31),(4440,31),(5287,31),(4354,32),(4355,32),(2990,33),(3870,33),(4364,33),(4440,33),(4445,33),(5287,33),(2825,38),(4360,38),(5293,38),(3444,39),(4360,39),(5293,39),(2825,40),(3444,40),(4360,40),(2825,41),(3444,41),(4360,41),(2825,42),(3444,42),(4360,42),(4364,42),(2825,43),(3444,43),(4360,43),(4364,43),(2825,44),(2990,44),(3444,44),(4360,44),(2825,46),(3444,46),(5293,46),(2825,47),(3444,47),(4360,47),(2825,48),(4360,48),(2825,50),(3444,50),(4360,50),(3444,51),(4360,51),(2825,52),(4360,52),(4348,54),(4349,54),(5202,54),(4348,55),(4349,55),(4369,55),(5202,55),(4349,56),(5202,56),(2990,58),(4349,58),(5202,58),(4348,60),(4349,60),(5202,60),(4349,61),(5202,61),(4349,62),(5202,62),(4349,63),(5202,63),(4349,64),(5202,64),(4349,65),(5202,65),(4349,67),(5202,67),(4349,68),(5202,68),(4348,69),(4349,69),(5202,69),(4349,70),(5202,70),(2990,73),(4106,73),(4361,73),(2990,74),(4106,74),(4361,74),(2990,75),(4106,75),(4361,75),(4106,76),(4361,76),(5208,76),(4106,77),(4361,77),(4445,77),(2990,78),(4106,78),(4361,78),(2990,80),(4106,80),(4361,80),(4106,81),(4361,81),(4106,82),(4361,82),(4309,83),(4341,83),(4309,84),(4341,84),(4380,84),(4369,85),(4373,85),(4378,85),(5284,85),(3727,86),(4351,86),(4370,86),(4378,86),(5153,86),(2737,87),(4348,87),(4378,87),(4985,87),(2737,88),(4352,88),(5284,88),(5286,88),(4352,89),(4370,89),(4373,89),(5284,89),(2737,90),(2990,90),(3727,90),(4351,90),(4352,90),(4352,91),(4370,91),(4373,91),(5284,91),(4351,92),(4370,92),(4373,92),(4348,93),(4351,93),(4352,93),(4378,93),(3727,94),(4351,94),(5153,94),(2737,95),(2990,95),(4352,95),(4378,95),(4985,95),(5197,95),(4362,96),(4374,96),(4378,96),(4351,97),(4370,97),(4373,97),(4351,98),(4352,98),(4370,98),(4378,98),(4352,99),(4370,99),(4373,99),(2990,100),(4351,100),(4352,100),(4378,100),(5286,100),(4348,101),(4351,101),(4378,101),(5284,101),(4370,102),(5284,102),(3727,103),(4351,103),(4374,103),(4378,103),(4985,103),(5153,103),(4348,104),(4351,104),(4378,104),(2737,105),(4351,105),(4378,105),(4985,105),(4352,107),(4378,107),(5153,107),(4352,108),(4370,108),(4373,108),(5284,108),(3727,110),(4351,110),(4374,110),(5153,110),(2737,111),(3727,111),(4351,111),(4442,111),(4985,111),(5136,112),(5274,112),(5280,112),(5136,113),(5274,113),(5280,113),(4362,114),(5136,114),(5274,114),(5280,114),(4369,115),(4464,115),(5197,115),(4464,116),(5197,116),(2990,117),(4464,117),(5197,117),(5197,118),(3785,124),(4342,124),(4348,124),(2831,129),(3785,129),(4342,129),(4348,129),(4369,129),(2831,130),(3785,130),(4342,130),(2831,133),(4342,133),(4348,133),(2831,134),(4342,134),(4355,135),(5208,135),(4355,136),(5208,136),(4355,137),(5208,137),(4355,138),(2990,139),(4312,139),(4355,139),(2990,140),(4355,140),(5208,140),(4312,142),(4355,142),(5208,142),(4355,143),(4369,143),(5208,143),(4355,144),(4355,145),(5208,145),(4355,146),(5208,146),(4312,148),(4355,148),(5208,148),(4355,149),(4357,149),(4364,149),(4667,149),(4355,150),(4357,150),(4364,150),(4667,150),(4357,152),(4364,152),(4667,152),(4357,153),(4364,153),(5287,153),(4203,154),(4496,154),(4203,156),(4496,156),(4203,157),(4496,157),(4203,158),(4496,158),(4203,159),(4496,159),(4203,160),(4362,160),(4496,160),(4203,162),(4496,162),(4203,163),(4496,163),(4203,164),(4496,164),(4203,165),(4364,165),(4496,165),(5287,165),(4203,166),(4496,166),(4203,167),(4496,167),(4203,168),(4496,168),(4343,169),(4475,169),(4584,169),(5279,169),(4331,170),(4343,170),(4347,170),(4362,170),(4584,170),(5136,170),(2990,171),(4343,171),(4347,171),(4359,171),(4362,171),(4365,171),(4475,171),(4584,171),(5136,171),(5279,171),(4343,172),(4347,172),(4359,172),(4362,172),(4365,172),(4387,172),(5279,172),(5284,172),(4343,173),(4347,173),(4362,173),(4365,173),(4399,173),(4475,173),(4584,173),(5279,173),(4343,174),(4347,174),(4365,174),(4584,174),(5136,174),(4331,175),(4343,175),(4347,175),(4475,175),(5279,175),(4347,176),(4362,176),(4399,176),(4475,176),(4584,176),(5279,176),(4331,177),(4343,177),(4347,177),(4362,177),(4365,177),(4475,177),(4584,177),(5136,177),(4347,178),(4362,178),(4387,178),(4445,178),(4475,178),(4584,178),(5279,178),(4343,179),(4347,179),(4475,179),(4584,179),(5136,179),(4307,180),(4348,180),(4350,180),(4363,180),(4442,180),(4663,180),(5284,180),(4348,181),(4442,181),(4348,182),(4350,182),(4442,182),(4348,184),(4442,184),(4348,185),(4350,185),(4363,185),(4442,185),(4348,186),(4350,186),(4363,186),(4442,186),(4663,186),(4350,187),(4442,187),(4663,187),(4307,188),(4348,188),(4442,188),(4307,189),(4348,189),(4663,189),(4307,190),(4348,190),(4363,190),(4442,190),(4663,190),(4307,191),(4348,191),(4350,191),(4378,191),(4442,191),(4663,191),(4348,192),(4350,192),(4363,192),(4442,192),(4663,192),(4307,194),(4348,194),(4350,194),(4442,194),(4663,194),(5284,194),(4348,195),(4442,195),(4663,195),(4307,196),(4348,196),(4350,196),(4363,196),(4369,196),(4378,196),(4442,196),(4663,196),(4348,198),(4350,198),(4442,198),(4348,199),(4442,199),(4348,200),(4350,200),(4363,200),(4442,200),(4663,200),(4307,202),(4348,202),(4442,202),(4348,203),(4350,203),(4442,203),(4307,204),(4348,204),(4350,204),(4363,204),(4442,204),(4663,204),(4348,205),(4363,205),(4442,205),(4663,205),(4344,208),(4366,208),(4456,208),(5285,211),(5285,212),(5285,213),(5285,214),(2831,215),(5137,215),(5200,215),(2831,216),(4362,216),(5137,216),(5200,216),(2831,217),(2990,217),(3869,217),(4362,217),(5137,217),(5200,217),(5206,217),(2831,218),(3869,218),(4362,218),(5137,218),(5200,218),(2831,220),(3869,220),(4362,220),(5137,220),(5200,220),(5206,220),(2831,222),(3869,222),(4362,222),(5200,222),(5206,222),(2831,225),(3869,225),(4362,225),(5137,225),(5200,225),(2831,226),(4362,226),(5137,226),(5200,226),(2831,227),(5137,227),(5200,227),(4358,230),(4359,230),(4399,230),(4358,231),(4399,231),(4445,231),(4358,232),(4359,232),(4399,232),(4284,233),(4358,233),(4359,233),(4365,233),(4399,233),(4358,234),(4359,234),(4399,234),(4358,236),(4359,236),(4399,236),(4358,237),(4359,237),(4362,237),(4399,237),(4358,238),(4359,238),(4284,240),(4358,240),(4362,240),(4399,240),(4358,242),(4359,242),(4362,242),(4399,242),(4358,244),(4399,244),(4358,245),(4359,245),(4399,245),(4284,246),(4358,246),(4359,246),(4399,246),(4358,247),(4359,247),(4399,247),(4358,248),(4359,248),(4399,248),(4358,249),(4359,249),(4399,249),(4284,250),(4358,250),(4359,250),(4399,250),(2990,251),(4358,251),(4359,251),(4399,251),(4358,252),(4359,252),(4362,252),(4399,252),(4399,254),(4358,255),(4359,255),(4399,255),(4358,257),(4359,257),(4369,257),(4399,257),(4464,257),(4358,258),(4359,258),(4362,258),(4358,259),(4359,259),(4362,259),(4365,259),(4358,260),(4359,260),(4399,260),(4358,261),(4359,261),(4399,261),(4362,262),(4365,262),(5258,262),(5138,264),(5138,266),(5138,268),(5138,270),(5138,271),(5138,272),(4331,273),(4365,273),(4378,273),(4445,273),(5136,273),(4331,274),(4378,274),(4445,274),(2990,275),(4347,275),(4348,275),(4369,275),(4445,275),(4183,276),(4369,276),(4445,276),(5284,276),(2737,277),(4445,277),(5136,277),(2990,279),(4348,279),(4365,279),(4369,279),(4445,279),(4183,280),(4331,280),(4365,280),(4369,280),(4378,280),(4445,280),(4183,281),(4359,281),(4365,281),(4369,281),(4373,281),(4378,281),(4445,281),(4183,282),(4348,282),(4365,282),(4369,282),(4378,282),(4445,282),(4369,284),(4445,284),(4331,287),(4348,287),(4365,287),(4442,287),(4445,287),(4475,287),(2990,288),(3803,288),(4364,288),(5134,288),(3803,289),(5134,289),(2990,290),(3803,290),(4359,290),(4369,290),(5134,290),(3727,296),(4374,296),(5153,296),(4464,299),(5197,299),(3206,302),(3870,302),(4044,302),(4354,302),(4440,302),(2990,303),(4106,303),(4361,303),(4347,305),(4362,305),(4365,305),(4475,305),(4584,305),(5279,305),(3803,308),(5134,308),(3803,310),(5134,310),(4362,311),(5258,311),(2990,313),(4183,313),(4331,313),(4348,313),(4365,313),(4369,313),(4373,313),(4442,313),(4445,313),(4475,313),(5279,313),(5284,313),(2737,315),(4348,315),(4351,315),(4352,315),(4985,315),(5284,315),(3803,317),(4343,318),(4347,318),(4475,318),(4584,318),(5279,318),(4351,323),(4370,323),(4373,323),(2990,330),(4445,330),(4464,330),(5197,330),(3727,335),(4352,335),(4378,335),(5286,335),(5136,336),(5274,336),(5280,336),(2825,337),(3444,337),(4360,337),(5136,339),(5274,339),(5280,339),(4343,340),(4347,340),(4475,340),(4584,340),(4347,345),(4475,345),(4584,345),(5279,345),(4362,346),(4365,346),(5258,346),(4203,347),(4496,347),(4183,353),(4331,353),(4373,353),(5284,353),(3444,354),(4360,354),(2831,358),(3785,358),(4342,358),(4348,358),(4369,358),(3206,359),(3870,359),(4354,359),(4377,359),(4440,359),(5285,362),(4355,363),(4357,363),(4284,364),(4358,364),(4359,364),(4399,364),(4349,366),(5202,366),(5136,371),(5274,371),(5280,371),(3785,373),(4342,373),(4348,373),(2737,375),(4183,375),(4348,375),(4369,375),(4373,375),(4348,376),(4351,376),(4370,376),(4373,376),(4203,378),(4496,378),(2825,381),(3444,381),(4360,381),(4362,388),(4365,388),(5258,388),(4344,389),(4366,389),(4456,389),(3727,391),(4378,391),(5153,391),(2737,392),(4309,393),(4341,393),(4380,393),(4309,400),(4341,400),(4380,400),(4347,405),(4475,405),(4584,405),(5279,405),(4362,407),(5258,407),(4309,412),(4341,412),(4380,412),(4349,415),(5202,415),(4347,419),(4365,419),(4475,419),(4584,419),(5279,419),(3870,421),(4044,421),(4354,421),(4440,421),(5287,421),(3727,422),(4351,422),(4373,422),(4348,424),(4351,424),(4370,424),(4378,424),(5153,424),(5286,424),(4475,425),(4584,425),(5279,425),(4355,427),(4203,428),(4496,428),(5136,429),(5274,429),(5280,429),(3803,433),(5134,433),(3727,434),(5153,434),(4183,437),(4348,437),(4352,437),(4369,437),(4442,437),(4445,437),(4352,438),(4369,438),(4464,438),(5197,438),(4183,442),(4331,442),(4348,442),(4365,442),(4369,442),(4442,442),(2990,444),(4464,444),(5197,444),(3803,446),(5134,446),(4348,450),(4363,450),(4378,450),(4442,450),(4352,451),(5286,451),(4358,454),(4359,454),(4399,454),(4343,455),(4347,455),(4475,455),(4584,455),(5279,455),(3870,458),(4354,458),(4364,458),(4378,458),(5287,458),(4343,460),(4475,460),(4584,460),(5279,460),(4343,463),(4387,463),(4475,463),(4584,463),(5279,463),(4362,466),(4365,466),(4369,466),(4475,466),(5258,466),(4309,470),(4341,470),(4369,470),(4331,471),(4348,471),(4365,471),(4373,471),(4442,471),(4445,471),(3727,472),(4351,472),(5153,472),(2990,477),(4106,477),(4361,477),(4343,478),(4347,478),(4365,478),(4475,478),(4584,478),(5279,478),(4309,480),(4341,480),(4380,480),(4344,482),(4366,482),(4456,482),(4464,487),(5197,487),(3803,489),(4309,491),(4341,491),(4380,491),(3206,492),(4354,492),(4440,492),(3785,495),(4342,495),(4348,495),(3206,498),(3870,498),(4044,498),(4354,498),(4364,498),(4377,498),(4440,498),(4664,498),(5287,498),(4362,500),(4365,500),(5258,500),(4106,501),(4361,501),(4351,502),(4352,502),(5286,502),(4347,504),(4475,504),(4584,504),(5279,504),(3206,507),(3870,507),(4354,507),(4355,507),(4377,507),(4440,507),(5287,507),(3870,509),(4364,509),(4440,509),(5287,509),(3206,510),(4044,510),(4354,510),(4440,510),(4307,512),(4348,512),(3727,515),(4378,515),(5153,515),(4343,516),(4347,516),(4475,516),(5279,516),(4362,517),(4365,517),(5258,517),(3206,518),(4354,518),(4440,518),(2825,520),(3444,520),(4360,520),(4351,526),(4370,526),(4378,526),(5286,526),(4343,527),(4347,527),(4475,527),(4584,527),(5279,527),(4347,531),(4475,531),(2825,532),(3444,532),(4360,532),(3727,533),(4985,533),(4331,534),(4365,534),(4369,534),(4445,534),(4475,534),(4464,535),(5197,535),(4464,542),(5197,542),(4351,543),(4352,543),(5138,545),(3727,548),(4348,548),(4351,548),(4352,548),(4370,548),(4378,548),(5286,548),(4347,552),(4475,552),(5279,552),(4347,553),(4387,553),(4475,553),(4584,553),(5279,553),(4352,554),(4370,554),(4373,554),(4348,557),(4349,557),(5202,557),(4369,560),(5197,560),(4203,561),(4496,561),(4378,562),(4548,562),(4307,564),(4348,564),(4350,564),(4442,564),(3727,567),(4352,567),(5153,567),(3444,570),(4360,570),(4344,571),(4366,571),(4203,572),(4496,572),(4331,574),(3803,575),(5134,575),(3444,576),(4106,578),(4361,578),(5136,579),(5274,579),(5280,579),(3444,581),(4360,581),(4203,582),(4496,582),(4344,586),(4366,586),(4369,586),(5136,586),(4307,593),(4348,593),(4363,593),(4442,593),(4663,593),(5285,594),(4343,595),(4365,595),(4387,595),(4475,595),(4349,596),(5202,596),(4464,598),(5197,598),(4347,599),(4358,599),(4359,599),(4399,599),(4203,600),(4496,600),(2825,602),(3444,602),(4360,602),(4347,610),(4475,610),(4584,610),(4331,611),(4343,611),(4347,611),(4475,611),(4584,611),(5279,611),(4362,612),(4365,612),(5258,612),(2831,614),(3785,614),(4342,614),(4344,617),(4355,617),(4456,617),(2737,619),(3870,621),(4354,621),(4440,621),(5287,621),(3727,623),(4351,623),(5153,623),(4331,627),(4347,627),(4348,627),(4365,627),(4203,629),(4496,629),(4347,631),(4475,631),(4584,631),(5279,631),(3444,633),(4360,633),(5293,633),(4203,635),(4496,635),(3727,638),(4351,638),(4352,638),(5153,638),(4475,640),(4584,640),(5279,640),(5136,646),(5274,646),(5280,646),(2990,647),(3803,647),(5134,647),(5285,649),(4362,651),(5258,651),(4360,653),(4357,656),(4364,656),(4369,656),(4307,661),(4348,661),(4350,661),(4442,661),(4347,664),(4365,664),(4475,664),(4584,664),(4309,669),(4341,669),(4380,669),(4331,671),(4369,671),(4373,671),(3869,672),(4348,678),(4349,678),(5202,678),(3870,684),(4354,684),(2990,685),(4183,685),(4348,685),(4352,685),(4369,685),(4445,685),(5284,685),(4312,686),(4355,686),(4183,694),(4331,694),(4348,694),(4373,694),(4378,694),(4442,694),(4475,694),(5279,694),(5284,694),(3727,695),(4352,695),(5153,695),(4309,696),(4341,696),(4380,696),(4362,697),(5258,697),(4353,698),(4664,698),(4331,699),(4348,699),(2990,707),(4362,707),(5258,707),(4284,710),(4358,710),(4359,710),(4399,710),(4358,711),(4359,711),(4399,711),(4358,712),(4359,712),(4362,712),(4399,712),(4331,713),(4343,713),(4475,713),(4584,713),(4358,715),(4359,715),(4399,715),(2990,716),(4352,716),(4369,716),(4373,716),(4445,716),(5284,716),(4351,719),(4352,719),(4370,719),(4378,719),(4464,724),(5197,724),(4357,725),(4364,725),(4667,725),(5133,725),(4357,726),(4364,726),(5133,726),(4312,727),(4355,727),(5208,727),(2825,728),(3444,728),(4360,728),(4347,731),(4365,731),(4475,731),(4584,731),(5279,731),(4352,734),(4378,734),(5286,734),(4351,735),(4352,735),(4370,735),(4378,735),(5284,735),(2737,742),(4351,742),(4352,742),(4985,742),(4343,744),(4365,744),(4475,744),(4584,744),(4203,746),(4496,746),(4106,747),(4361,747),(3727,748),(5153,748),(4203,751),(4496,751),(4349,753),(5202,753),(4358,757),(4359,757),(4362,757),(4399,757),(3206,762),(3870,762),(4044,762),(4354,762),(4364,762),(4440,762),(4664,762),(4347,764),(4348,764),(4442,764),(2737,765),(4331,765),(4348,765),(4361,765),(4365,765),(4369,765),(4362,767),(5258,767),(3727,768),(4352,768),(5153,768),(4309,780),(4341,780),(4380,780),(4464,784),(5197,784),(4357,787),(4364,787),(5133,787),(5287,787),(4362,789),(5258,789),(4362,792),(5258,792),(4362,793),(5258,793),(4362,794),(5258,794),(4203,797),(4496,797),(4203,798),(4496,798),(3870,805),(4203,805),(4354,805),(4364,805),(4440,805),(5287,805),(4044,808),(4364,808),(4440,808),(5287,808),(3206,811),(4440,811),(4203,813),(4354,813),(4440,813),(5287,813),(3870,816),(4354,816),(4422,816),(4440,816),(5287,816),(4548,821),(3803,833),(3803,834),(5134,834),(4347,837),(4475,837),(4584,837),(5279,837),(4343,848),(4347,848),(4365,848),(4475,848),(4584,848),(5279,848),(4343,852),(4362,852),(4387,852),(4584,852),(5279,852),(4475,853),(5279,853),(4347,854),(4475,854),(4584,854),(5279,854),(4362,856),(5258,856),(3803,857),(5134,857),(4475,858),(4584,858),(5279,858),(3803,860),(4307,861),(4348,861),(4442,861),(4663,861),(4307,862),(4348,862),(4350,862),(4442,862),(4307,863),(4348,863),(4442,863),(3803,868),(5134,868),(5138,869),(4343,872),(4387,872),(4475,872),(4584,872),(5279,872),(4362,876),(5258,876),(4365,877),(5258,877),(4357,878),(4364,878),(4667,878),(5133,878),(4357,879),(4364,879),(5287,879),(4357,880),(4364,880),(4667,880),(5133,880),(4364,881),(5133,881),(5287,881),(5258,884),(4106,888),(4361,888),(4357,891),(4667,891),(5133,891),(4357,892),(5287,892),(4357,893),(4667,893),(5133,893),(5287,893),(4364,894),(5133,894),(5287,894),(4357,907),(5133,907),(5287,907),(3727,909),(4351,909),(4352,909),(5286,909),(3727,918),(4351,918),(4370,918),(4378,918),(3727,919),(4369,919),(4370,919),(4373,919),(4378,919),(4374,921),(4378,921),(4351,923),(4378,923),(4352,924),(4374,925),(3727,926),(4374,926),(5153,926),(4374,935),(4373,938),(4378,939),(4351,944),(4374,944),(3727,945),(4351,945),(4985,946),(3727,948),(4374,948),(5153,948),(4374,949),(5153,949),(3727,950),(4351,950),(5153,950),(2825,955),(4464,965),(5197,965),(4344,975),(4366,975),(4456,975),(4203,978),(4496,978),(4203,979),(4496,979),(4203,983),(4496,983),(4203,984),(4496,984),(4203,987),(4496,987),(4203,990),(4496,990),(4464,997),(5197,997),(4464,998),(5197,998),(2990,999),(4359,999),(4464,1007),(5197,1007),(4464,1008),(5197,1008),(4464,1009),(2990,1010),(4361,1010),(4331,1018),(4347,1018),(4348,1018),(4351,1018),(4352,1018),(4365,1018),(4369,1018),(4331,1020),(4348,1020),(4351,1020),(4352,1020),(4369,1020),(4985,1020),(4331,1021),(4348,1021),(4351,1021),(4352,1021),(4365,1021),(4369,1021),(4445,1021),(4331,1022),(4348,1022),(4351,1022),(4352,1022),(4365,1022),(4369,1022),(4445,1022),(4331,1023),(4348,1023),(4352,1023),(4369,1023),(4378,1023),(4183,1024),(4331,1024),(4348,1024),(4351,1024),(4352,1024),(4369,1024),(4183,1025),(4331,1025),(4348,1025),(4352,1025),(4369,1025),(4331,1026),(4348,1026),(4352,1026),(4369,1026),(4985,1026),(4331,1027),(4348,1027),(4352,1027),(4378,1027),(4183,1028),(4331,1028),(4348,1028),(4351,1028),(4352,1028),(4369,1028),(4445,1028),(4331,1029),(4348,1029),(4352,1029),(4369,1029),(4378,1029),(4183,1030),(4331,1030),(4347,1030),(4348,1030),(4352,1030),(4369,1030),(4985,1030),(4331,1031),(4347,1031),(4348,1031),(4352,1031),(4365,1031),(4183,1032),(4331,1032),(4347,1032),(4348,1032),(4352,1032),(4183,1033),(4331,1033),(4347,1033),(4348,1033),(4352,1033),(4369,1033),(4985,1033),(4331,1035),(4348,1035),(4352,1035),(4369,1035),(4378,1035),(4183,1036),(4331,1036),(4347,1036),(4348,1036),(4352,1036),(4369,1036),(4353,1051),(4464,1052),(5197,1052),(4349,1053),(5202,1053),(4044,1054),(5287,1054),(4347,1056),(4475,1056),(4343,1057),(4362,1062),(5258,1062),(4044,1063),(4354,1063),(5287,1063),(4475,1065),(4387,1066),(4584,1066),(5279,1066),(4664,1071),(5258,1072),(4044,1075),(5287,1075),(4183,1076),(4331,1076),(4365,1076),(4369,1076),(4378,1076),(4445,1076),(5284,1076),(2990,1078),(4362,1078),(5258,1078),(2139,1080),(4358,1080),(4399,1080),(4044,1082),(4475,1085),(4584,1085),(5279,1085),(4044,1087),(4354,1087),(5287,1087),(4584,1089),(5279,1089),(4475,1090),(4584,1090),(5280,1091),(4183,1095),(4663,1095),(2035,1103),(4663,1103),(4183,1107),(3727,1114),(5153,1114),(3727,1119),(5153,1119),(4044,1123),(4044,1125),(4354,1125),(3727,1127),(3727,1129),(5279,1131),(3727,1135),(3727,1139),(4343,1157),(4440,1158),(4106,1161),(4341,1162),(4378,1165),(4378,1170),(4464,1184),(4362,1187),(4307,1200),(4348,1200),(4350,1200);
/*!40000 ALTER TABLE `ipes_has_polos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-14  9:25:06
