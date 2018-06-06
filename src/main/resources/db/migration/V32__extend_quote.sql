ALTER TABLE quote RENAME COLUMN percent TO written;
ALTER TABLE quote ADD live varchar;
ALTER TABLE quote ADD status varchar;
ALTER TABLE quote ADD signed numeric(10,6);

UPDATE quote SET status = 'QUOTED';
UPDATE quote SET live = 'LIVE';

UPDATE quote SET signed = written;