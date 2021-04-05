# SUPER ARP

Beiriz 05/abril/2021

## Script em bash para o comando arp retornar o vendor de cada MAC

------------------------------------------------------------------------

## Pré requisito: "arp" e "curl".

Executar como root para instalar:

```
apt install curl arp
```

------------------------------------------------------------------------
## Manual de Instruções:

###### Exemplo do funcionamento (rodar com o usuário root):

```
      MAC=$(arp -a | grep : | awk '{print $4}') ; for LINHA in $MAC; do RESULTADO=$(curl -s "https://api.macvendors.com/${LINHA//\:/\-}"); echo "$LINHA => $RESULTADO"; sleep 2; done
```

Resultado (00:00:00:00:00:00 é apenas ilustrativo):

```
00:00:00:00:00:00 => Ubiquiti Networks Inc.
00:00:00:00:00:00 => Hangzhou Hikvision Digital Technology Co.,Ltd.
00:00:00:00:00:00 => DIGIBRAS INDUSTRIA DO BRASILS/A
00:00:00:00:00:00 => DIGIBRAS INDUSTRIA DO BRASILS/A
00:00:00:00:00:00 => Hangzhou Hikvision Digital Technology Co.,Ltd.
```

------------------------------------------------------------------------
## LICENÇA

SUPER ARP is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA