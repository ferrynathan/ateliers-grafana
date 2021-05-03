# Atelier Grafana

## Prérequis du lab

Installer Vagrant: [download](https://www.vagrantup.com/downloads)
Installer Virtualbox: [download](https://www.virtualbox.org/wiki/Downloads)

Note: En cas d'échec sur Virtualbox mac, autoriser "Oracle" dans "Sécurité et Confidentialité" puis réessayer.

Vérifier l'installation de Vagrant:
```console
vagrant init hashicorp/bionic64
vagrant up
vagrant ssh
vagrant destroy
```
Cloner le dépôt de l'atelier:
```console
git clone https://github.com/ferrynathan/ateliers-grafana.git
cd ateliers-grafana
```
Lancer les 3 VMs et s'y connecter dans 3 shells différents
```console
vagrant up
vagrant status
vagrant ssh grafana
vagrant ssh client1
vagrant ssh client2
```

Vérifier l'accès à la console Grafana http://localhost:3000

Suspendre les VMs

```console
vagrant suspend
```

## Diagrammes du lab

![archi]https://i.imgur.com/uVA3dKx.png)
![réseau](https://i.imgur.com/e0TLptU.png)

## Plan d'atelier

Reprise des VMs

```console
vagrant resume
```





