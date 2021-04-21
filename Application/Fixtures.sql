

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('db3eca5e-0bd3-4f40-8a3b-78e04788c8fe', 'Das ist', 'ein Test', '2021-04-19 17:30:35.931297+02');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('7b32eb0d-8560-44ec-859e-f202db118538', '„Pflegedienst am Röttgen“ sucht eine Pflegedienstleitung (PDL)', 'Hallo ich mag Erdbeeren', '2021-04-19 18:13:31.559712+02');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('a25dfd96-e0d2-43eb-b135-3b278491754c', 'Tesr', '## Hallo', '2021-04-20 20:22:06.540247+02');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('3ea4a7e4-dd44-4fb3-8c4f-c41d77893047', '#', '# nh', '2021-04-20 20:33:04.127781+02');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('30bfc780-9fd2-4fa3-b2dd-54eca1eb8cec', '3ea4a7e4-dd44-4fb3-8c4f-c41d77893047', 'me', 'ein dummer Test');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('c56e2876-79f2-4a75-95ce-233b5f9717b5', '3ea4a7e4-dd44-4fb3-8c4f-c41d77893047', 'me', 'ajsnd');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


