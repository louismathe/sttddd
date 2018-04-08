<sql>
<datatypes db="mysql">
    <group label="Numeric" color="rgb(238,238,170)">
        <type label="Integer" length="0" sql="INTEGER" quote=""/>
         <type label="TINYINT" length="0" sql="TINYINT" quote=""/>
         <type label="SMALLINT" length="0" sql="SMALLINT" quote=""/>
         <type label="MEDIUMINT" length="0" sql="MEDIUMINT" quote=""/>
         <type label="INT" length="0" sql="INT" quote=""/>
        <type label="BIGINT" length="0" sql="BIGINT" quote=""/>
        <type label="Decimal" length="1" sql="DECIMAL" re="DEC" quote=""/>
        <type label="Single precision" length="0" sql="FLOAT" quote=""/>
        <type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
    </group>


    <group label="Character" color="rgb(255,200,200)">
        <type label="Char" length="1" sql="CHAR" quote="'"/>
        <type label="Varchar" length="1" sql="VARCHAR" quote="'"/>
        <type label="Text" length="0" sql="MEDIUMTEXT" re="TEXT" quote="'"/>
        <type label="Binary" length="1" sql="BINARY" quote="'"/>
        <type label="Varbinary" length="1" sql="VARBINARY" quote="'"/>
        <type label="BLOB" length="0" sql="BLOB" re="BLOB" quote="'"/>
    </group>


    <group label="Date &amp; Time" color="rgb(200,255,200)">
        <type label="Date" length="0" sql="DATE" quote="'"/>
        <type label="Time" length="0" sql="TIME" quote="'"/>
        <type label="Datetime" length="0" sql="DATETIME" quote="'"/>
        <type label="Year" length="0" sql="YEAR" quote=""/>
        <type label="Timestamp" length="0" sql="TIMESTAMP" quote="'"/>
    </group>

    <group label="Miscellaneous" color="rgb(200,200,255)">
        <type label="ENUM" length="1" sql="ENUM" quote=""/>
        <type label="SET" length="1" sql="SET" quote=""/>
        <type label="Bit" length="0" sql="bit" quote=""/>
    </group>
</datatypes><table x="577" y="37" name="partnerships">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="university_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="universities" row="id" />
</row>
<row name="university_reference_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="universities" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="277" y="184" name="universities">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="address_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="address" row="id" />
</row>
<row name="partner" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="886" y="224" name="countries">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="909" y="415" name="cities">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="1130" y="316" name="operators(phone)">
<row name="name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="country_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="countries" row="id" />
</row>
<key type="PRIMARY" name="">
</key>
</table>
<table x="1132" y="430" name="flats">
<row name="price" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="city_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="cities" row="id" />
</row>
<key type="PRIMARY" name="">
</key>
</table>
<table x="112" y="188" name="users">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="university_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="universities" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="1125" y="168" name="banks">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="country_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="countries" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="646" y="264" name="address">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="country_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="countries" row="id" />
</row>
<row name="city_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="cities" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>
