CREATE TABLE "teams"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "date" DATE NOT NULL,
    "team_value" DECIMAL(8, 2) NOT NULL
);
ALTER TABLE
    "teams" ADD PRIMARY KEY("id");
CREATE TABLE "oyuncular"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "surname" VARCHAR(255) NOT NULL,
    "player_value" DECIMAL(8, 2) NOT NULL,
    "gender" VARCHAR(255) NOT NULL,
    "salary" DECIMAL(8, 2) NOT NULL,
    "team_id" BIGINT NOT NULL,
    "country_id" BIGINT NOT NULL
);
ALTER TABLE
    "oyuncular" ADD PRIMARY KEY("id");
CREATE TABLE "branches"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "branches" ADD PRIMARY KEY("id");
CREATE TABLE "positions"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "branch_id" BIGINT NOT NULL
);
ALTER TABLE
    "positions" ADD PRIMARY KEY("id");
CREATE TABLE "coaches"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "surname" VARCHAR(255) NOT NULL,
    "gender" VARCHAR(255) NOT NULL,
    "salary" DECIMAL(8, 2) NOT NULL,
    "country_id" BIGINT NOT NULL,
    "team_id" BIGINT NOT NULL,
    "branch_id" BIGINT NOT NULL
);
ALTER TABLE
    "coaches" ADD PRIMARY KEY("id");
CREATE TABLE "leagues"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "country" VARCHAR(255) NOT NULL,
    "country_id" BIGINT NOT NULL,
    "sponsorship_id" BIGINT NOT NULL
);
ALTER TABLE
    "leagues" ADD PRIMARY KEY("id");
CREATE TABLE "countries"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "team_id" BIGINT NOT NULL
);
ALTER TABLE
    "countries" ADD PRIMARY KEY("id");
CREATE TABLE "sponsorships"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" VARCHAR(255) NOT NULL,
    "value" DECIMAL(8, 2) NOT NULL
);
ALTER TABLE
    "sponsorships" ADD PRIMARY KEY("id");
CREATE TABLE "teams_branches"(
    "id" BIGINT NOT NULL,
    "team_id" BIGINT NOT NULL,
    "branch_id" BIGINT NOT NULL
);
ALTER TABLE
    "teams_branches" ADD PRIMARY KEY("id");
CREATE TABLE "team_leagues"(
    "id" BIGINT NOT NULL,
    "team_id" BIGINT NOT NULL,
    "league_id" BIGINT NOT NULL
);
ALTER TABLE
    "team_leagues" ADD PRIMARY KEY("id");
CREATE TABLE "player_posizitons"(
    "id" SERIAL NOT NULL,
    "player_id" BIGINT NOT NULL,
    "position_id" BIGINT NOT NULL
);
ALTER TABLE
    "player_posizitons" ADD PRIMARY KEY("id");
CREATE TABLE "team_sponsorships"(
    "id" SERIAL NOT NULL,
    "team_id" BIGINT NOT NULL,
    "sponsorship_id" BIGINT NOT NULL
);
ALTER TABLE
    "team_sponsorships" ADD PRIMARY KEY("id");
ALTER TABLE
    "team_sponsorships" ADD CONSTRAINT "team_sponsorships_sponsorship_id_foreign" FOREIGN KEY("sponsorship_id") REFERENCES "sponsorships"("id");
ALTER TABLE
    "coaches" ADD CONSTRAINT "coaches_team_id_foreign" FOREIGN KEY("team_id") REFERENCES "teams"("id");
ALTER TABLE
    "coaches" ADD CONSTRAINT "coaches_country_id_foreign" FOREIGN KEY("country_id") REFERENCES "countries"("id");
ALTER TABLE
    "team_sponsorships" ADD CONSTRAINT "team_sponsorships_id_foreign" FOREIGN KEY("id") REFERENCES "teams"("id");
ALTER TABLE
    "oyuncular" ADD CONSTRAINT "oyuncular_team_id_foreign" FOREIGN KEY("team_id") REFERENCES "teams"("id");
ALTER TABLE
    "leagues" ADD CONSTRAINT "leagues_sponsorship_id_foreign" FOREIGN KEY("sponsorship_id") REFERENCES "sponsorships"("id");
ALTER TABLE
    "oyuncular" ADD CONSTRAINT "oyuncular_country_id_foreign" FOREIGN KEY("country_id") REFERENCES "countries"("id");
ALTER TABLE
    "leagues" ADD CONSTRAINT "leagues_country_id_foreign" FOREIGN KEY("country_id") REFERENCES "countries"("id");
ALTER TABLE
    "coaches" ADD CONSTRAINT "coaches_branch_id_foreign" FOREIGN KEY("branch_id") REFERENCES "branches"("id");
ALTER TABLE
    "team_leagues" ADD CONSTRAINT "team_leagues_league_id_foreign" FOREIGN KEY("league_id") REFERENCES "leagues"("id");
ALTER TABLE
    "player_posizitons" ADD CONSTRAINT "player_posizitons_player_id_foreign" FOREIGN KEY("player_id") REFERENCES "oyuncular"("id");
ALTER TABLE
    "teams_branches" ADD CONSTRAINT "teams_branches_id_foreign" FOREIGN KEY("id") REFERENCES "teams"("id");
ALTER TABLE
    "team_leagues" ADD CONSTRAINT "team_leagues_team_id_foreign" FOREIGN KEY("team_id") REFERENCES "teams"("id");
ALTER TABLE
    "player_posizitons" ADD CONSTRAINT "player_posizitons_position_id_foreign" FOREIGN KEY("position_id") REFERENCES "positions"("id");
ALTER TABLE
    "positions" ADD CONSTRAINT "positions_branch_id_foreign" FOREIGN KEY("branch_id") REFERENCES "branches"("id");
ALTER TABLE
    "teams_branches" ADD CONSTRAINT "teams_branches_branch_id_foreign" FOREIGN KEY("branch_id") REFERENCES "branches"("id");