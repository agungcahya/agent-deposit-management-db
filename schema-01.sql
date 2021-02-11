-- CREATE TABLE AGENT
CREATE SEQUENCE agent_id_seq
INCREMENT 1
MINVALUE 1
MAXVALUE 999999999
START 1
CACHE 1;

CREATE TABLE agent
(
    id integer NOT NULL DEFAULT nextval('agent_id_seq'::regclass),
    name character varying(100),
    address character varying(255),
    phone_number character varying(12),
    email character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE agent
    OWNER to postgres;

-- CREATE TABLE ADMIN
CREATE SEQUENCE admin_id_seq
INCREMENT 1
MINVALUE 1
MAXVALUE 999999999
START 1
CACHE 1;

CREATE TABLE admin
(
    id integer NOT NULL DEFAULT nextval('admin_id_seq'::regclass),
    name character varying(100),
    email character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE admin
    OWNER to postgres;

-- CREATE TABLE BALANCE
CREATE SEQUENCE balance_id_seq
INCREMENT 1
MINVALUE 1
MAXVALUE 999999999
START 1
CACHE 1;

CREATE TABLE balance
(
    id integer NOT NULL DEFAULT nextval('balance_id_seq'::regclass),
    agent_id integer NOT NULL,
    balance bigInt NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE balance
    OWNER to postgres;

-- CREATE TABLE TRANSACTION
CREATE SEQUENCE transaction_id_seq
INCREMENT 1
MINVALUE 1
MAXVALUE 999999999
START 1
CACHE 1;

CREATE TABLE transaction
(
    id integer NOT NULL DEFAULT nextval('transaction_id_seq'::regclass),
    agent_id integer NOT NULL,
    amount bigInt NOT NULL,
    type character varying(10) NOT NULL,
    transaction_date timestamp without time zone NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE transaction
    OWNER to postgres;