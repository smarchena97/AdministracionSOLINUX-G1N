#!/bin/bash

function main {
 opcion=""
 read -p "Ingrese una opcion [1-12]: " opcion
 

 case $opcion in
      "1") deploy_nginx;;
      "2") deploy_httpd;;
      "3") consultar_so;;
      "4") consultar_dns;;
      "5") consultar_gateway;;
      "7") consultar_estado;;
      "8") deploy_firewall;;
      "9") mostrar_info;;
      "10") listar_discos;;
      "11") mirar_tiempo;;
      "12") mirar_procesos;;
 esac

}

function deploy_nginx {
 sudo yum install nginx -y
 sudo systemctl start nginx
 sudo systemctl enable nginx
}

function deploy_httpd {
 sudo yum install httpd -y
 sudo systemctl start httpd
 sudo systemctl enable httpd
}

function consultar_so {
 cat /etc/*release
}

function consultar_dns {
 cat /etc/resolv.conf
}

function consultar_gateway {
 route -n
}

function consultar_estado {
 getenforce
}

function deploy_firewall {
 sudo yum install firewalld
 firewall-cmd --list-all
}

function mostrar_info {
 cat /etc/passwd
}

function listar_discos {
 lsblk
}

function mirar_tiempo {
 uptime
}

function mirar_procesos {
 top
}

main


