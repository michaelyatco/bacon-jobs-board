PGDMP     &                    u           bacon_jobs_board_production    9.6.3    9.6.3     h	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            i	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            j	           1262    24992    bacon_jobs_board_production    DATABASE     �   CREATE DATABASE bacon_jobs_board_production WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
 +   DROP DATABASE bacon_jobs_board_production;
             mjyatco    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            k	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12655    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            l	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24993    ar_internal_metadata    TABLE     �   CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         mjyatco    false    3            �            1259    24999    jobs    TABLE     <  CREATE TABLE jobs (
    id bigint NOT NULL,
    title character varying,
    company character varying,
    location character varying,
    description text,
    jobtype character varying,
    price numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.jobs;
       public         mjyatco    false    3            �            1259    25005    jobs_id_seq    SEQUENCE     m   CREATE SEQUENCE jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public       mjyatco    false    3    186            m	           0    0    jobs_id_seq    SEQUENCE OWNED BY     -   ALTER SEQUENCE jobs_id_seq OWNED BY jobs.id;
            public       mjyatco    false    187            �            1259    25007    schema_migrations    TABLE     K   CREATE TABLE schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         mjyatco    false    3            �           2604    25013    jobs id    DEFAULT     T   ALTER TABLE ONLY jobs ALTER COLUMN id SET DEFAULT nextval('jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public       mjyatco    false    187    186            b	          0    24993    ar_internal_metadata 
   TABLE DATA               K   COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public       mjyatco    false    185          c	          0    24999    jobs 
   TABLE DATA               j   COPY jobs (id, title, company, location, description, jobtype, price, created_at, updated_at) FROM stdin;
    public       mjyatco    false    186   e       n	           0    0    jobs_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('jobs_id_seq', 10, true);
            public       mjyatco    false    187            e	          0    25007    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public       mjyatco    false    188          �           2606    25015 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public         mjyatco    false    185    185            �           2606    25017    jobs jobs_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public         mjyatco    false    186    186            �           2606    25019 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public         mjyatco    false    188    188            b	   ?   x�K�+�,���M�+�LI-K��/ ���u,t-M�LM����LLL��Hq��qqq �gt      c	   �  x��W�rܶ]s�Yi3Ckƶ,9+Y�o�eU�*U�`�&�	� �1��o�߻_���Hvl]{1UC<���t7�٩�&h��ЖZ��Y�MP׭s�:�`j�+ך�������՟i騰��T*cUlHun3t�j��"ı�\��Y�8J����1HE*k>����ΖAY��n��#���O�0<�Q�m���)���uK�7TLp��j��F�ú5�!�jhU�c$oC���e_aP۠�Ε�i:r��
O����W��s�!���ui�qV�l�qe���}U� ��/����-������_\w8V�u��*^uz�m{��S;*gUpm�U�g��!Ln���r�jT�/$f��J'�٦����$��ޕ��I�1uC!���F��*(^l���C
�a��	��:$�V������� \o0lb��ʳ3g�cq��E0�W��p�bqx�X���������a�<Y.WO����36���L�+����Eタꮏ�
ѯ{�I�eF��U��?xBwl��<ρ[Y�5w \����A"�k�6>6���?Y�`g�_w��`Ϗ��@Gk�["x�5G'j��|EETE�L!c�(&S2�4{Y�>ad�ŵ��o���2�W�ӵ����"��*�.����:������HVtd�¡f6s�`t�g����W5oM�(S �+>�6�59\ �%*ÏP��hu����i������!����g�ͨ�Vouh������%����B�ߴam������}��M4�k�&Ck��,+�O��8� !%$Vu��brU�n����ECF1��G@g�k6ӫ�a�,a^��tA�����W@\1��H^H��w�>Y3R6���$�a��t����q~@�Zf���A�Qďe�T�wY�?[�'�s��.�!U a�e��kW�i������B:��7H�@��uk�S�	*j�B!�=�p��͘����d�{}@���XDӡ������掋���v��<��Թ��P����G�f�@�b b��q�ER9 җ[��7����T"��3�H�YM(Dm�ӮjwV��՛f��A���6�l�Q>�jCt��&Jr؛R4N���]~����MTpz�M����%�J)s�E��64���cyy�w�;���G�(׮��7�+pN#.�S�CCѠ�M��{ƨ
�{�Թ�HC���h��?25{��S3����8Fe��m���z��⠃WBZS������-,��>ڭv���т�$�A �'������S�u5T��A<�L��AYT�-�#;Ui:��4Am�E��䊖{�p t@s4�"gu{��;
{]�rD�e
������cU��}�A����"%�B�Z���8)Ԕ׸łe����V/�=3;ʮ5{볛�ŨN-:5�CF�~��5et[+�@bw��k�J��%
	W*���)���Ai��-��kΰ�Q��Xa7Q��6�zm�\�g^.>�S���ќҐϴsu�`�"	$��'���z`�*�w&�W{��k�*NV�9f��5���L8Ԧ�=�q��;�U��j�� 8��%4g��'pQ-@E�VϿީ��ً�4C��6&���7�P����Pp��[�*Ь�i�ӽR�1�� "��v-�8�kn��<e&;6N�`���<y�<W�Y;��PV��5�L�]�����|X����^ߙrwҗv��Ny�c��{�Ӝ0�j�U�vm��@%���]ҏ�"q�#�X0ȣ�ƺmKe������=��نm�kS�����I܀͢�}���'_�����8�n�n��9�  '����Յ�L�8:��/���+���nș���?���\d7>շ�F�K�9�)Q��I8�NՒޠ��xEƔ�x3C���u�8лj˨~"�=���}�e �D�2��K�G3������8^����d��|���J��op^�J�djՐ^7L�Y��?s�V��O�Pr���X̎T���%��θ~�L�&�R��'$d��N�}+���ly�]��k殺�캡��I���
(_ֲ:3�H���#:���ހzuvz�B�T�Mx%���]i�SDȋ�7�k��	�jZ������rU�i��C��#A���D�m�JSH���Pn�DsV�V�N��X�&������#S��l6��'�      e	      x�32047�0�047130����� (��     