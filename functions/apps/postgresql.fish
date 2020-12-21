# https://www.postgresql.org
set -gx PSQLRC $XDG_CONFIG_HOME/pg/psqlrc
set -gx PSQL_HISTORY $XDG_CACHE_HOME/pg/psql_history
set -gx PGPASSFILE $XDG_CONFIG_HOME/pg/pgpass
set -gx PGSERVICEFILE $XDG_CONFIG_HOME/pg/pg_service.conf
