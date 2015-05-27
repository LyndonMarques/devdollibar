-- ===================================================================
-- Copyright (C) 2005 Rodolphe Quiedeville <rodolphe@quiedeville.org>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <http://www.gnu.org/licenses/>.
--
-- ===================================================================


create table llx_prelevement_facture_demande
(
  rowid               integer AUTO_INCREMENT PRIMARY KEY,
  fk_facture          integer NOT NULL,
  amount              real NOT NULL,
  date_demande        datetime NOT NULL,
  traite              smallint DEFAULT 0,
  date_traite         datetime,
  fk_prelevement_bons integer,
  fk_user_demande     integer NOT NULL,

  code_banque         varchar(7),
  code_guichet        varchar(6),
  number              varchar(255),
  cle_rib             varchar(5)

)ENGINE=innodb;
