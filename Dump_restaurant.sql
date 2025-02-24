PGDMP     *    7        	    
    {            TFin    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16406    TFin    DATABASE     z   CREATE DATABASE "TFin" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "TFin";
                postgres    false                        2615    16417    TdFin    SCHEMA        CREATE SCHEMA "TdFin";
    DROP SCHEMA "TdFin";
                postgres    false            �            1259    24683    Booking    TABLE     �   CREATE TABLE "TdFin"."Booking" (
    "BookingId" text NOT NULL,
    "BookingRestaurant" text NOT NULL,
    "BookingGuestInfo" text NOT NULL,
    "BookingWish" text,
    "BookingVisitsofdata" timestamp without time zone NOT NULL
);
    DROP TABLE "TdFin"."Booking";
       TdFin         heap    postgres    false    6            �            1259    24633    Food    TABLE     Z   CREATE TABLE "TdFin"."Food" (
    "FoodID" text NOT NULL,
    "FoodName" text NOT NULL
);
    DROP TABLE "TdFin"."Food";
       TdFin         heap    postgres    false    6            �            1259    24640 	   GuestInfo    TABLE     �   CREATE TABLE "TdFin"."GuestInfo" (
    "GuestID" text NOT NULL,
    "GuestSerName" text NOT NULL,
    "GuestName" text NOT NULL,
    "GuestPhone" text NOT NULL
);
     DROP TABLE "TdFin"."GuestInfo";
       TdFin         heap    postgres    false    6            �            1259    24661 
   Restaurant    TABLE     O  CREATE TABLE "TdFin"."Restaurant" (
    "RestaurantId" text NOT NULL,
    "RestaurantAdminId" text NOT NULL,
    "RestaurantName" text NOT NULL,
    "RestaurantAdress" text NOT NULL,
    "RestaurantDiscription" text,
    "RestaurantFood" text NOT NULL,
    "RestaurantTablesStatus" text NOT NULL,
    "RestaurantTableCount" integer
);
 !   DROP TABLE "TdFin"."Restaurant";
       TdFin         heap    postgres    false    6            �            1259    24647    TablesInRestaurant    TABLE     �   CREATE TABLE "TdFin"."TablesInRestaurant" (
    "TableID" text NOT NULL,
    "TableRestaurant" text,
    "TableStatus" boolean DEFAULT true NOT NULL
);
 )   DROP TABLE "TdFin"."TablesInRestaurant";
       TdFin         heap    postgres    false    6            �            1259    24654    adminrestaurant    TABLE     �   CREATE TABLE "TdFin".adminrestaurant (
    "AdminID" text NOT NULL,
    "AdminLogin" text NOT NULL,
    "AdminPassword" text NOT NULL,
    "AdminPhone" text NOT NULL
);
 $   DROP TABLE "TdFin".adminrestaurant;
       TdFin         heap    postgres    false    6            �           2606    24689    Booking Booking_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "TdFin"."Booking"
    ADD CONSTRAINT "Booking_pkey" PRIMARY KEY ("BookingId");
 C   ALTER TABLE ONLY "TdFin"."Booking" DROP CONSTRAINT "Booking_pkey";
       TdFin            postgres    false    220            {           2606    24639    Food Food_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY "TdFin"."Food"
    ADD CONSTRAINT "Food_pkey" PRIMARY KEY ("FoodID");
 =   ALTER TABLE ONLY "TdFin"."Food" DROP CONSTRAINT "Food_pkey";
       TdFin            postgres    false    215            }           2606    24646    GuestInfo GuestInfo_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "TdFin"."GuestInfo"
    ADD CONSTRAINT "GuestInfo_pkey" PRIMARY KEY ("GuestID");
 G   ALTER TABLE ONLY "TdFin"."GuestInfo" DROP CONSTRAINT "GuestInfo_pkey";
       TdFin            postgres    false    216            �           2606    24667    Restaurant Restaurant_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "TdFin"."Restaurant"
    ADD CONSTRAINT "Restaurant_pkey" PRIMARY KEY ("RestaurantId");
 I   ALTER TABLE ONLY "TdFin"."Restaurant" DROP CONSTRAINT "Restaurant_pkey";
       TdFin            postgres    false    219                       2606    24653 *   TablesInRestaurant TablesInRestaurant_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY "TdFin"."TablesInRestaurant"
    ADD CONSTRAINT "TablesInRestaurant_pkey" PRIMARY KEY ("TableID");
 Y   ALTER TABLE ONLY "TdFin"."TablesInRestaurant" DROP CONSTRAINT "TablesInRestaurant_pkey";
       TdFin            postgres    false    217            �           2606    24660 $   adminrestaurant adminrestaurant_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY "TdFin".adminrestaurant
    ADD CONSTRAINT adminrestaurant_pkey PRIMARY KEY ("AdminID");
 O   ALTER TABLE ONLY "TdFin".adminrestaurant DROP CONSTRAINT adminrestaurant_pkey;
       TdFin            postgres    false    218            �           2606    24678    Restaurant FK_Admin    FK CONSTRAINT     �   ALTER TABLE ONLY "TdFin"."Restaurant"
    ADD CONSTRAINT "FK_Admin" FOREIGN KEY ("RestaurantAdminId") REFERENCES "TdFin".adminrestaurant("AdminID") NOT VALID;
 B   ALTER TABLE ONLY "TdFin"."Restaurant" DROP CONSTRAINT "FK_Admin";
       TdFin          postgres    false    219    218    3201            �           2606    24668    Restaurant FK_Food    FK CONSTRAINT     �   ALTER TABLE ONLY "TdFin"."Restaurant"
    ADD CONSTRAINT "FK_Food" FOREIGN KEY ("RestaurantFood") REFERENCES "TdFin"."Food"("FoodID") NOT VALID;
 A   ALTER TABLE ONLY "TdFin"."Restaurant" DROP CONSTRAINT "FK_Food";
       TdFin          postgres    false    3195    219    215            �           2606    24695    Booking FK_GuestInfo    FK CONSTRAINT     �   ALTER TABLE ONLY "TdFin"."Booking"
    ADD CONSTRAINT "FK_GuestInfo" FOREIGN KEY ("BookingGuestInfo") REFERENCES "TdFin"."GuestInfo"("GuestID");
 C   ALTER TABLE ONLY "TdFin"."Booking" DROP CONSTRAINT "FK_GuestInfo";
       TdFin          postgres    false    220    3197    216            �           2606    24690    Booking FK_Restaurant    FK CONSTRAINT     �   ALTER TABLE ONLY "TdFin"."Booking"
    ADD CONSTRAINT "FK_Restaurant" FOREIGN KEY ("BookingRestaurant") REFERENCES "TdFin"."Restaurant"("RestaurantId");
 D   ALTER TABLE ONLY "TdFin"."Booking" DROP CONSTRAINT "FK_Restaurant";
       TdFin          postgres    false    220    219    3203            �           2606    24673    Restaurant FK_Tables    FK CONSTRAINT     �   ALTER TABLE ONLY "TdFin"."Restaurant"
    ADD CONSTRAINT "FK_Tables" FOREIGN KEY ("RestaurantTablesStatus") REFERENCES "TdFin"."TablesInRestaurant"("TableID") NOT VALID;
 C   ALTER TABLE ONLY "TdFin"."Restaurant" DROP CONSTRAINT "FK_Tables";
       TdFin          postgres    false    3199    219    217           