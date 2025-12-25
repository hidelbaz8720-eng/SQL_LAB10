
<img width="1366" height="768" alt="Capture d&#39;écran 2025-12-25 213547" src="https://github.com/user-attachments/assets/12399ab6-c1ec-4ab2-adae-4c93bf93b5c7" />
<img width="1366" height="768" alt="Capture d&#39;écran 2025-12-25 212830" src="https://github.com/user-attachments/assets/e7a287d7-ea61-4f7b-aebc-c3bc0f0c62f1" />

Rapport – Avantages et inconvénients des méthodes de migration
Pour migrer une base MySQL, plusieurs méthodes sont possibles :
•	mysqldump : c’est la méthode classique et simple. Elle permet d’exporter la structure, les données, les triggers et les routines. Elle est fiable pour toutes les bases, mais devient lente quand la base est très volumineuse, car elle fonctionne en monothread.
•	mysqlpump : version plus moderne de mysqldump, elle utilise le multi-thread et est donc plus rapide pour les grosses bases. Elle exporte aussi la structure et les données. Son inconvénient est qu’elle nécessite MySQL 5.7+ et peut être un peu complexe pour un débutant.
•	MySQL Shell (dba.cloneDatabase) : permet de cloner rapidement toute une base, avec plusieurs threads. Très pratique pour les environnements clusterisés. Par contre, sur un serveur local classique, cette méthode n’est pas disponible, car elle nécessite un InnoDB Cluster et des privilèges spéciaux.
•	Workbench Migration Wizard : méthode graphique, très facile à utiliser et guidée étape par étape. Elle permet de migrer structure et données sans taper de commandes. L’inconvénient est qu’elle est moins rapide et difficile à automatiser sur plusieurs bases.
Conclusion :
Pour une base simple ou un lab, mysqldump ou Workbench suffisent. Pour des bases volumineuses, mysqlpump est plus efficace. MySQL Shell clone reste une solution idéale mais théorique sur un serveur loca
