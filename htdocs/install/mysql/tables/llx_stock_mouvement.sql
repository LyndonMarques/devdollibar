-- ============================================================================
-- Copyright (C) 2003 Rodolphe Quiedeville <rodolphe@quiedeville.org>
-- Copyright (C) 2009 Laurent Destailleur  <eldy@users.sourceofrge.net>
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
-- ============================================================================

create table llx_stock_mouvement
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  tms             timestamp,
  datem           datetime,
  fk_product      integer NOT NULL,
  batch           varchar(30) DEFAULT NULL,
  eatby           date DEFAULT NULL,
  sellby          date DEFAULT NULL,
  fk_entrepot     integer NOT NULL,
  value           real,
  price           float(13,4) DEFAULT 0,
  type_mouvement  smallint,
  fk_user_author  integer,
  label           varchar(255),		-- comment on movement
  inventorycode   varchar(128),		-- code used to group different movement line into one operation (may be an inventory, a mass picking)
  fk_origin       integer,
  origintype      varchar(32)
)ENGINE=innodb;
