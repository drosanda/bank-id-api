# Bank API Provider (ID)
Ready to use API provider for bank options in Indonesian format. Created from Seme Framework version 4.

## Version
Here is the version log:
- 1.0.0 First Release

## Get started
Start consuming the API by reading the [bank.thecloudalert.com](https://bank.thecloudalert.com/)

## Instalation
Clone this repository
`git clone https://github.com/drosanda/bank-id-api.git bank`

### Importing database
Importing database from sql/tca_bank.sql

### Configuration
For setup your site please create and adjust following files:
- app/config/config.php

```php
<?php
$site = "http://".$_SERVER['HTTP_HOST']."/bank/";
$sene_method = "PATH_INFO";//REQUEST_URI,PATH_INFO,ORIG_PATH_INFO,
```

- app/config/database.php

```php
<?php
$db['host']  = "localhost";
$db['user']  = "root";
$db['pass']  = "";
$db['name']  = "tca_bank";
$db['engine']= "mysqli"; //available mysql,mysqli,pdo
```


## How to use
To use the API, you can open [postman.json](https://github.com/drosanda/bank-id-api/blob/master/postman.json) on this project directory using [Postman](https://www.postman.com/downloads/).

## Data Source
Bank name and Location data obtained from [OJK](https://www.ojk.go.id/id/kanal/perbankan/data-dan-statistik/Documents/Nama%20dan%20Alamat%20Kantor%20Pusat%20Bank%20Juni%202021.xlsx).

## License
Licensed under MIT License 2.0
