PGDMP         7                 x            youtrip    12.1    12.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16445    youtrip    DATABASE     �   CREATE DATABASE youtrip WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'German_Germany.1252' LC_CTYPE = 'German_Germany.1252';
    DROP DATABASE youtrip;
                postgres    false            �            1259    24578    activity    TABLE     �  CREATE TABLE public.activity (
    id bigint NOT NULL,
    activity_category character varying(255) NOT NULL,
    average_rating_score double precision NOT NULL,
    email_address character varying(255),
    phone_number character varying(255),
    website character varying(255),
    description character varying(255),
    house_number character varying(255),
    name character varying(255) NOT NULL,
    street character varying(255),
    zip_code character varying(255),
    city_id bigint NOT NULL
);
    DROP TABLE public.activity;
       public         heap    postgres    false            �            1259    24576    activity_id_seq    SEQUENCE     x   CREATE SEQUENCE public.activity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.activity_id_seq;
       public          postgres    false    203            !           0    0    activity_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.activity_id_seq OWNED BY public.activity.id;
          public          postgres    false    202            �            1259    24615    city    TABLE     _   CREATE TABLE public.city (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.city;
       public         heap    postgres    false            �            1259    24613    city_id_seq    SEQUENCE     t   CREATE SEQUENCE public.city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.city_id_seq;
       public          postgres    false    205            "           0    0    city_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.city_id_seq OWNED BY public.city.id;
          public          postgres    false    204            �            1259    24628    rating    TABLE     �   CREATE TABLE public.rating (
    id bigint NOT NULL,
    comment character varying(255),
    score double precision NOT NULL,
    activity_id bigint
);
    DROP TABLE public.rating;
       public         heap    postgres    false            �            1259    24626    rating_id_seq    SEQUENCE     v   CREATE SEQUENCE public.rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rating_id_seq;
       public          postgres    false    207            #           0    0    rating_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rating_id_seq OWNED BY public.rating.id;
          public          postgres    false    206            �
           2604    24581    activity id    DEFAULT     j   ALTER TABLE ONLY public.activity ALTER COLUMN id SET DEFAULT nextval('public.activity_id_seq'::regclass);
 :   ALTER TABLE public.activity ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    24618    city id    DEFAULT     b   ALTER TABLE ONLY public.city ALTER COLUMN id SET DEFAULT nextval('public.city_id_seq'::regclass);
 6   ALTER TABLE public.city ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    24631 	   rating id    DEFAULT     f   ALTER TABLE ONLY public.rating ALTER COLUMN id SET DEFAULT nextval('public.rating_id_seq'::regclass);
 8   ALTER TABLE public.rating ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207                      0    24578    activity 
   TABLE DATA           �   COPY public.activity (id, activity_category, average_rating_score, email_address, phone_number, website, description, house_number, name, street, zip_code, city_id) FROM stdin;
    public          postgres    false    203   i                 0    24615    city 
   TABLE DATA           (   COPY public.city (id, name) FROM stdin;
    public          postgres    false    205   "                 0    24628    rating 
   TABLE DATA           A   COPY public.rating (id, comment, score, activity_id) FROM stdin;
    public          postgres    false    207   t       $           0    0    activity_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.activity_id_seq', 7, true);
          public          postgres    false    202            %           0    0    city_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.city_id_seq', 5, true);
          public          postgres    false    204            &           0    0    rating_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rating_id_seq', 8, true);
          public          postgres    false    206            �
           2606    24586    activity activity_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.activity
    ADD CONSTRAINT activity_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.activity DROP CONSTRAINT activity_pkey;
       public            postgres    false    203            �
           2606    24620    city city_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    205            �
           2606    24633    rating rating_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_pkey;
       public            postgres    false    207            �
           2606    24634 "   rating fka8gk8hvfla6a2wd7patmqlp7l    FK CONSTRAINT     �   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT fka8gk8hvfla6a2wd7patmqlp7l FOREIGN KEY (activity_id) REFERENCES public.activity(id);
 L   ALTER TABLE ONLY public.rating DROP CONSTRAINT fka8gk8hvfla6a2wd7patmqlp7l;
       public          postgres    false    207    2704    203            �
           2606    24621 $   activity fkk625iqwi2ks5l6bta493k6a1b    FK CONSTRAINT     �   ALTER TABLE ONLY public.activity
    ADD CONSTRAINT fkk625iqwi2ks5l6bta493k6a1b FOREIGN KEY (city_id) REFERENCES public.city(id);
 N   ALTER TABLE ONLY public.activity DROP CONSTRAINT fkk625iqwi2ks5l6bta493k6a1b;
       public          postgres    false    2706    205    203               �  x�U�=n�@���Sl���E���(R%D
n���H\�\
��L�!�:^,K��;������n����n�-G���,���SߏR�c�W���̈��M��*+RlGJFB��k�]
ِ�o
a��Em�֒�5��/���$˴,�?�ċ�9|'��1_m���P�x�[�m�M��fGk�~r������4.[1��X��	Ǒ�U=�1�КESV��Qy$��T�q�>Y���H�y����=���ͼ�ֲ�	z6���i@�'V=�c�Y��Y]Sr�@��E;&�,���&����������E�%I��I�[�Ö�,��(��_�u��	a�-)"g����C.Msy�%/�0J�����J0���*�2�L�sQV�O*�/�~6��}3g�3 �cl�5ۿ�ck~Q3$5Yv �[���8� i��#         B   x�3�t+J��N+-*�2��>�-'�˘�;�(���4#�˄�����<.SN��ܤҢt�=... @��         �   x�Eͱ�0����7A$�N�TM"��X�[�i������{��u�W50Tc1K�o)<�VG�s���,�"v�v�}�'��L��=���З+����j��K�i̢��?Ž�EmG���~�C'.     