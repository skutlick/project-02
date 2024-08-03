-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "category" (
    "category_id" int   NOT NULL,
    "category" str   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" int   NOT NULL,
    "subcategory" str   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" str   NOT NULL,
    "last_name" str   NOT NULL,
    "email" str   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "description" str   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" str   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" str   NOT NULL,
    "currency" str   NOT NULL,
    "launch_date" datetime   NOT NULL,
    "end_date" datetime   NOT NULL,
    "category_id" int   NOT NULL,
    "subcategory_id" int   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

