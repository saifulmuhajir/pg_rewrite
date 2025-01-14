PG_CONFIG ?= pg_config
MODULE_big = pg_rewrite
OBJS = pg_rewrite.o concurrent.o $(WIN32RES)
PGFILEDESC = "pg_rewrite - tools for maintenance that requires table rewriting."

EXTENSION = pg_rewrite
DATA = pg_rewrite--1.0.sql

REGRESS = main
REGRESS_OPTS = "--schedule=parallel_schedule"

PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

