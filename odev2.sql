BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "oyuncaklar" (
	"id"	INTEGER,
	"isim"	TEXT NOT NULL,
	"tur"	TEXT,
	"fiyat"	REAL CHECK("fiyat" > 0),
	"renk"	TEXT DEFAULT 'kırmızı',
	"kimin"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "oyuncaklar" VALUES (1,'Şimşek','araba',50.0,'mavi',NULL);
INSERT INTO "oyuncaklar" VALUES (2,'Ayıcık','peluş',80.0,'kahverengi',NULL);
INSERT INTO "oyuncaklar" VALUES (3,'Kale Seti','lego',150.0,'gri','Ali');
INSERT INTO "oyuncaklar" VALUES (5,'Barbi','bebek',90.0,'pembe',NULL);
COMMIT;
