
CREATE TABLE hotell (
  hotellid serial primary key,
  fornavn text not null,
  etternavn text not null,
  epost text,
  mobil text
);

CREATE TABLE turist (
  turistid serial primary key,
  fornavn text not null,
  etternavn text not null,
  epost text 
);

CREATE TABLE overnatting (
  overnattingid serial primary key,
  rom text not null,
  pris int default = 2000,
  betalt text,
  hotellid int references hotell (hotellid),
  turistid int references turist (turistid)
);