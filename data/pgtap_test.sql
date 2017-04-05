\set ECHO none
\set QUIET true
\set VERBOSITY verbose
\pset format unaligned
\pset tuples_only true

SET client_min_messages TO WARNING;

BEGIN;

SELECT plan(3);

SELECT has_schema( 'gazetteer' );
SELECT has_schema( 'gazetteer_export' );
SELECT has_schema( 'gazetteer_history' );

SELECT * FROM finish(); 
ROLLBACK;
