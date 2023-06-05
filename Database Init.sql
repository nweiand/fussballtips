-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public."User"
(
    "ID" serial,
    "Username" "char",
    "Punktstand" integer NOT NULL DEFAULT 0,
    PRIMARY KEY ("ID")
);

CREATE TABLE IF NOT EXISTS public."Spiele"
(
    "ID" serial,
    "Spieltag" integer NOT NULL,
    "Heimteam" "char" NOT NULL,
    "Auswärtsteam" "char" NOT NULL,
    "Heimtore" integer NOT NULL DEFAULT 0,
    "Auswärsttore" integer NOT NULL DEFAULT 0,
    PRIMARY KEY ("ID")
);

CREATE TABLE IF NOT EXISTS public."Tipps"
(
    "User" serial,
    "Spiel" serial,
    "Tipp Heimtore" integer,
    "Tipp Auswärtstore" integer,
    "Aktuelle Punkte" integer,
    PRIMARY KEY ("User", "Spiel")
);

ALTER TABLE IF EXISTS public."Tipps"
    ADD CONSTRAINT "ID" FOREIGN KEY ("User")
    REFERENCES public."User" ("ID") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Tipps"
    ADD CONSTRAINT "Spiel ID" FOREIGN KEY ("Spiel")
    REFERENCES public."Spiele" ("ID") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;