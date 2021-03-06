PGDMP         !                x            d2knns67m28kqr     12.5 (Ubuntu 12.5-1.pgdg16.04+1)    12.5 V   5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    13844383    d2knns67m28kqr    DATABASE     �   CREATE DATABASE d2knns67m28kqr WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE d2knns67m28kqr;
                hihletamnmkwuq    false            9           0    0    DATABASE d2knns67m28kqr    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE d2knns67m28kqr FROM PUBLIC;
                   hihletamnmkwuq    false    4408            :           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO hihletamnmkwuq;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   hihletamnmkwuq    false    3            ;           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO hihletamnmkwuq;
                   postgres    false    937            ,           1255    16688930    fibonacci()    FUNCTION     {  CREATE FUNCTION public.fibonacci() RETURNS integer
    LANGUAGE plpgsql
    AS $$ 
DECLARE
   
   NUM INTEGER := 23;
   PORCENTAJE INTEGER :=0;
BEGIN
	LOOP
						
						IF NUM>0 THEN
							PORCENTAJE = PORCENTAJE + 0.1;
							UPDATE empresa SET porcentaje_popularidad=PORCENTAJE WHERE idempresa = NUM;
							NUM =NUM -1 ;
						END IF;
					END LOOP;
	
	RETURN i ;
END ; 
$$;
 "   DROP FUNCTION public.fibonacci();
       public          hihletamnmkwuq    false            �            1259    19402945    calificacion_servicio    TABLE     �   CREATE TABLE public.calificacion_servicio (
    idcalificacion_servicio integer NOT NULL,
    calificacion real NOT NULL,
    idusuario integer NOT NULL,
    idventa integer NOT NULL
);
 )   DROP TABLE public.calificacion_servicio;
       public         heap    hihletamnmkwuq    false            �            1259    19402943 1   calificacion_servicio_idcalificacion_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.calificacion_servicio_idcalificacion_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.calificacion_servicio_idcalificacion_servicio_seq;
       public          hihletamnmkwuq    false    254            <           0    0 1   calificacion_servicio_idcalificacion_servicio_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.calificacion_servicio_idcalificacion_servicio_seq OWNED BY public.calificacion_servicio.idcalificacion_servicio;
          public          hihletamnmkwuq    false    253                        1259    19402953    calificacion_usuario    TABLE     �   CREATE TABLE public.calificacion_usuario (
    idcalificacion_usuario integer NOT NULL,
    calificacion real NOT NULL,
    idusuario integer NOT NULL,
    idventa integer NOT NULL
);
 (   DROP TABLE public.calificacion_usuario;
       public         heap    hihletamnmkwuq    false            �            1259    19402951 /   calificacion_usuario_idcalificacion_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.calificacion_usuario_idcalificacion_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.calificacion_usuario_idcalificacion_usuario_seq;
       public          hihletamnmkwuq    false    256            =           0    0 /   calificacion_usuario_idcalificacion_usuario_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.calificacion_usuario_idcalificacion_usuario_seq OWNED BY public.calificacion_usuario.idcalificacion_usuario;
          public          hihletamnmkwuq    false    255            �            1259    13858250    empresa    TABLE     �  CREATE TABLE public.empresa (
    idempresa integer NOT NULL,
    idsubcategoriaempresa integer NOT NULL,
    nombre_empresa character varying(150) NOT NULL,
    direccion_empresa character varying(200) NOT NULL,
    ruc_empresa character varying(20) NOT NULL,
    telefono_empresa character varying(8) NOT NULL,
    celular_empresa character varying(9) NOT NULL,
    descripcion_empresa character varying(300),
    urlfoto_empresa character varying(400),
    nombredueno_empresa character varying(100) NOT NULL,
    porcentaje_popularidad double precision,
    cuenta_delivery boolean,
    costo_delivery double precision,
    detalle_delivery character varying(200),
    tiempo_aproximado_entrega character varying(25),
    iddistrito integer,
    horario_atencion character varying(100),
    icono_empresa character varying(400),
    horario_inicio integer,
    horario_fin integer,
    tarjeta boolean,
    detalle_tarjeta character varying,
    estrella_empresa double precision,
    maps_coordenada_x character varying,
    maps_coordenada_y character varying,
    detalle_ubicacion character varying,
    disponible boolean,
    precio_menu double precision,
    monto_descuento_menu double precision,
    idusuariogeneral integer
);
    DROP TABLE public.empresa;
       public         heap    hihletamnmkwuq    false            �            1259    13858310    pedido    TABLE     ,  CREATE TABLE public.pedido (
    idpedido integer NOT NULL,
    pedido_montototal double precision NOT NULL,
    pedido_cantidadtotal integer NOT NULL,
    pedido_fecha_registro timestamp without time zone NOT NULL,
    pedido_estado boolean NOT NULL,
    idusuario integer,
    idempresa integer
);
    DROP TABLE public.pedido;
       public         heap    hihletamnmkwuq    false            �            1259    13858289    producto    TABLE     �  CREATE TABLE public.producto (
    idproducto integer NOT NULL,
    idcategoriaproducto integer NOT NULL,
    idempresa integer NOT NULL,
    producto_nombre character varying(300) NOT NULL,
    producto_precio double precision NOT NULL,
    producto_stock integer,
    productofechacreacion timestamp(4) without time zone NOT NULL,
    producto_uriimagen character varying(400) NOT NULL,
    producto_calificacion double precision,
    producto_detalle character varying(400),
    producto_descuento double precision,
    producto_precio_descuento double precision,
    disponible boolean,
    tipomenu integer,
    producto_fechacreacion date
);
    DROP TABLE public.producto;
       public         heap    hihletamnmkwuq    false            �            1259    13858348    registropedido    TABLE     C  CREATE TABLE public.registropedido (
    idpedido integer NOT NULL,
    idproducto integer NOT NULL,
    registropedido_cantidadtotal integer NOT NULL,
    registropedido_preciototal double precision NOT NULL,
    registro_fecha timestamp without time zone,
    idempresa integer,
    comentario character varying(1000)
);
 "   DROP TABLE public.registropedido;
       public         heap    hihletamnmkwuq    false                       1259    20160263    carrito    VIEW     /  CREATE VIEW public.carrito AS
 SELECT pro.idproducto,
    pro.idempresa,
    pro.producto_nombre,
    pro.producto_detalle,
    pro.producto_precio,
    pro.producto_uriimagen,
    pro.producto_calificacion,
    pro.producto_descuento,
    pro.producto_precio_descuento,
    pro.tipomenu,
    rp.registropedido_cantidadtotal,
    rp.registropedido_preciototal,
    rp.idpedido,
    rp.comentario,
    p.idusuario,
    p.pedido_estado,
    p.pedido_montototal,
    p.pedido_cantidadtotal,
    emp.nombre_empresa,
    emp.costo_delivery,
    emp.urlfoto_empresa,
    emp.icono_empresa
   FROM (((public.pedido p
     JOIN public.registropedido rp ON ((p.idpedido = rp.idpedido)))
     JOIN public.producto pro ON ((rp.idproducto = pro.idproducto)))
     JOIN public.empresa emp ON ((pro.idempresa = emp.idempresa)));
    DROP VIEW public.carrito;
       public          hihletamnmkwuq    false    221    228    228    228    228    228    221    221    221    221    219    219    219    219    219    219    219    219    219    219    215    215    215    215    215                       1259    19921309    categoria_producto_empresa    TABLE     �   CREATE TABLE public.categoria_producto_empresa (
    idcategoriaproductoempresa integer NOT NULL,
    idempresa integer,
    nombre character varying,
    descripcion character varying
);
 .   DROP TABLE public.categoria_producto_empresa;
       public         heap    hihletamnmkwuq    false                       1259    19921307 9   categoria_producto_empresa_idcategoriaproductoempresa_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_producto_empresa_idcategoriaproductoempresa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public.categoria_producto_empresa_idcategoriaproductoempresa_seq;
       public          hihletamnmkwuq    false    271            >           0    0 9   categoria_producto_empresa_idcategoriaproductoempresa_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.categoria_producto_empresa_idcategoriaproductoempresa_seq OWNED BY public.categoria_producto_empresa.idcategoriaproductoempresa;
          public          hihletamnmkwuq    false    270            �            1259    13858186    categoriaempresa    TABLE       CREATE TABLE public.categoriaempresa (
    idcategoriaempresa integer NOT NULL,
    nombre_categoria character varying(100) NOT NULL,
    descripcion_categoria character varying(300),
    porcentajebusqueda double precision,
    url_imagen_categoria character varying(500)
);
 $   DROP TABLE public.categoriaempresa;
       public         heap    hihletamnmkwuq    false            �            1259    13858184 '   categoriaempresa_idcategoriaempresa_seq    SEQUENCE     �   CREATE SEQUENCE public.categoriaempresa_idcategoriaempresa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.categoriaempresa_idcategoriaempresa_seq;
       public          hihletamnmkwuq    false    203            ?           0    0 '   categoriaempresa_idcategoriaempresa_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.categoriaempresa_idcategoriaempresa_seq OWNED BY public.categoriaempresa.idcategoriaempresa;
          public          hihletamnmkwuq    false    202            �            1259    13858281    categoriaproducto    TABLE     �   CREATE TABLE public.categoriaproducto (
    idcategoriaproducto integer NOT NULL,
    nombrecategoria character varying(100) NOT NULL,
    detallecategoria character varying(200)
);
 %   DROP TABLE public.categoriaproducto;
       public         heap    hihletamnmkwuq    false            �            1259    13858279 )   categoriaproducto_idcategoriaproducto_seq    SEQUENCE     �   CREATE SEQUENCE public.categoriaproducto_idcategoriaproducto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.categoriaproducto_idcategoriaproducto_seq;
       public          hihletamnmkwuq    false    217            @           0    0 )   categoriaproducto_idcategoriaproducto_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.categoriaproducto_idcategoriaproducto_seq OWNED BY public.categoriaproducto.idcategoriaproducto;
          public          hihletamnmkwuq    false    216                       1259    20080062    cliente    TABLE     `   CREATE TABLE public.cliente (
    idcliente integer NOT NULL,
    idusuario integer NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    hihletamnmkwuq    false                       1259    19437483    cuenta_usuario    TABLE     �   CREATE TABLE public.cuenta_usuario (
    idcuentausuario integer NOT NULL,
    activa boolean,
    fecharegistro timestamp without time zone,
    idtipocuenta integer,
    idusuario integer
);
 "   DROP TABLE public.cuenta_usuario;
       public         heap    hihletamnmkwuq    false            �            1259    13858318 	   ubicacion    TABLE     �  CREATE TABLE public.ubicacion (
    idubicacion integer NOT NULL,
    idusuario integer,
    ubicacion_nombre character varying(300),
    ubicacion_comentarios character varying(400),
    eliminado boolean,
    maps_distrito character varying(1000),
    maps_detalle character varying(1000),
    ubicacion_estado boolean,
    maps_coordenada_x character varying,
    maps_coordenada_y character varying
);
    DROP TABLE public.ubicacion;
       public         heap    hihletamnmkwuq    false            �            1259    13858239    usuario    TABLE     ^   CREATE TABLE public.usuario (
    idusuario integer NOT NULL,
    idusuariogeneral integer
);
    DROP TABLE public.usuario;
       public         heap    hihletamnmkwuq    false                       1259    20141384    usuario_general    TABLE     #  CREATE TABLE public.usuario_general (
    idusuariogeneral integer NOT NULL,
    nombre character varying,
    correo character varying,
    contrasena character varying,
    apellido character varying,
    celular character varying,
    foto character varying,
    numero_sesion integer
);
 #   DROP TABLE public.usuario_general;
       public         heap    hihletamnmkwuq    false                       1259    20141978 
   cliente_bi    VIEW     �  CREATE VIEW public.cliente_bi AS
 SELECT u.idusuario,
    ug.idusuariogeneral,
    ug.nombre,
    ug.correo,
    ug.celular,
    ug.foto,
    cu.idcuentausuario,
    cu.activa,
    cu.idtipocuenta,
    ubi.idubicacion,
    ubi.ubicacion_nombre,
    ubi.ubicacion_comentarios,
    ubi.maps_distrito,
    ubi.maps_detalle,
    ubi.maps_coordenada_x,
    ubi.maps_coordenada_y
   FROM (((public.usuario u
     JOIN public.usuario_general ug ON ((u.idusuariogeneral = ug.idusuariogeneral)))
     JOIN public.cuenta_usuario cu ON ((cu.idusuario = u.idusuario)))
     JOIN public.ubicacion ubi ON ((ubi.idusuario = u.idusuario)))
  WHERE (ubi.ubicacion_estado = true);
    DROP VIEW public.cliente_bi;
       public          hihletamnmkwuq    false    281    281    281    281    281    263    263    263    263    223    223    223    223    223    223    223    223    223    213    213                       1259    20080060    cliente_idcliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cliente_idcliente_seq;
       public          hihletamnmkwuq    false    275            A           0    0    cliente_idcliente_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cliente_idcliente_seq OWNED BY public.cliente.idcliente;
          public          hihletamnmkwuq    false    274            �            1259    13858215    cuenta_empresa    TABLE     �  CREATE TABLE public.cuenta_empresa (
    idcuentaempresa integer NOT NULL,
    idtipocuenta integer NOT NULL,
    cuentaactiva boolean NOT NULL,
    fecha_registrocuenta timestamp without time zone NOT NULL,
    fecha_vencimiento timestamp without time zone NOT NULL,
    montoabonado double precision NOT NULL,
    detallecuenta character varying(300),
    idempresa integer NOT NULL,
    idtarifa integer,
    marketplace boolean,
    socio boolean
);
 "   DROP TABLE public.cuenta_empresa;
       public         heap    hihletamnmkwuq    false                       1259    19437367    cuenta_repartidor    TABLE     5  CREATE TABLE public.cuenta_repartidor (
    idcuentarepartidor integer NOT NULL,
    activa boolean,
    fecharegistro timestamp without time zone,
    fechavencimiento timestamp without time zone,
    idtarifa integer,
    idtipocuenta integer,
    idrepartidor integer,
    montoabonado double precision
);
 %   DROP TABLE public.cuenta_repartidor;
       public         heap    hihletamnmkwuq    false                       1259    19437365 (   cuenta_repartidor_idcuentamotorizado_seq    SEQUENCE     �   CREATE SEQUENCE public.cuenta_repartidor_idcuentamotorizado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.cuenta_repartidor_idcuentamotorizado_seq;
       public          hihletamnmkwuq    false    260            B           0    0 (   cuenta_repartidor_idcuentamotorizado_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.cuenta_repartidor_idcuentamotorizado_seq OWNED BY public.cuenta_repartidor.idcuentarepartidor;
          public          hihletamnmkwuq    false    259                       1259    19437481 "   cuenta_usuario_idcuentausuario_seq    SEQUENCE     �   CREATE SEQUENCE public.cuenta_usuario_idcuentausuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.cuenta_usuario_idcuentausuario_seq;
       public          hihletamnmkwuq    false    263            C           0    0 "   cuenta_usuario_idcuentausuario_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.cuenta_usuario_idcuentausuario_seq OWNED BY public.cuenta_usuario.idcuentausuario;
          public          hihletamnmkwuq    false    262            �            1259    13858213 !   cuentaempresa_idcuentaempresa_seq    SEQUENCE     �   CREATE SEQUENCE public.cuentaempresa_idcuentaempresa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.cuentaempresa_idcuentaempresa_seq;
       public          hihletamnmkwuq    false    209            D           0    0 !   cuentaempresa_idcuentaempresa_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.cuentaempresa_idcuentaempresa_seq OWNED BY public.cuenta_empresa.idcuentaempresa;
          public          hihletamnmkwuq    false    208            �            1259    18342216    estado_pago    TABLE     �   CREATE TABLE public.estado_pago (
    idestado_pago integer NOT NULL,
    nombre_estado character varying,
    detalle_estado character varying
);
    DROP TABLE public.estado_pago;
       public         heap    hihletamnmkwuq    false            �            1259    13858334    tipopago    TABLE     �   CREATE TABLE public.tipopago (
    idtipopago integer NOT NULL,
    tipopago_nombre character varying(100),
    tipopago_estado boolean,
    tipopago_url character varying(500)
);
    DROP TABLE public.tipopago;
       public         heap    hihletamnmkwuq    false            �            1259    13858363    venta    TABLE     3  CREATE TABLE public.venta (
    idventa integer NOT NULL,
    idtipopago integer NOT NULL,
    idhorario integer NOT NULL,
    idubicacion integer NOT NULL,
    idpedido integer NOT NULL,
    venta_fecha timestamp without time zone NOT NULL,
    venta_fechaentrega timestamp without time zone NOT NULL,
    venta_costodelivery double precision NOT NULL,
    venta_costototal double precision NOT NULL,
    comentario character varying(800),
    idestado_empresa integer,
    idestado_pago integer,
    idtipo_envio integer,
    comentario_entrega character varying,
    distancia_delivery character varying,
    costo_delivery double precision,
    orden_disponible boolean,
    tiempo_espera character varying,
    idrepartidor integer,
    cancelar boolean,
    comentario_cancelar character varying,
    tiempo_aprox_delivery character varying,
    idestado_delivery integer,
    idestado_general integer,
    numeromesa integer,
    descuento_mesa double precision,
    mesa boolean,
    venta_costopedido double precision,
    venta_distancia_delivery_total character varying,
    ganancia_yegoo double precision,
    ganancia_delivery double precision,
    venta_ganancia_delivery real NOT NULL,
    tiempototal_espera character varying,
    comentario_ubicacion character varying,
    celular_adicional character varying
);
    DROP TABLE public.venta;
       public         heap    hihletamnmkwuq    false            #           1259    21226865    delivery_pedido    VIEW     �  CREATE VIEW public.delivery_pedido AS
 SELECT v.idventa,
    tp.idtipopago,
    tp.tipopago_nombre,
    ubi.ubicacion_nombre,
    ubi.ubicacion_comentarios,
    ubi.maps_coordenada_x AS usuario_coordenada_x,
    ubi.maps_coordenada_y AS usuario_coordenada_y,
    v.idpedido,
    v.venta_costodelivery,
    v.distancia_delivery,
    v.tiempo_espera AS tiempo,
    v.venta_costototal,
    v.cancelar,
    v.comentario AS comentario_global,
    v.costo_delivery,
    v.idestado_delivery,
    v.orden_disponible,
    v.idrepartidor,
    v.comentario_ubicacion AS extra_ubicacion_comentario,
    v.celular_adicional AS extra_celular,
    v.venta_fechaentrega,
    ep.idestado_pago,
    ep.nombre_estado AS nombre_estadopago,
    p.idusuario,
    ug.idusuariogeneral,
    ug.nombre,
    ug.celular,
    emp.idempresa,
    emp.nombre_empresa,
    emp.direccion_empresa,
    emp.maps_coordenada_x AS empresa_coordenada_x,
    emp.maps_coordenada_y AS empresa_coordenada_y
   FROM (((((((public.venta v
     JOIN public.tipopago tp ON ((v.idtipopago = tp.idtipopago)))
     JOIN public.ubicacion ubi ON ((ubi.idubicacion = v.idubicacion)))
     JOIN public.estado_pago ep ON ((v.idestado_pago = ep.idestado_pago)))
     JOIN public.pedido p ON ((v.idpedido = p.idpedido)))
     JOIN public.usuario usu ON ((p.idusuario = usu.idusuario)))
     JOIN public.usuario_general ug ON ((usu.idusuariogeneral = ug.idusuariogeneral)))
     JOIN public.empresa emp ON ((emp.idempresa = p.idempresa)))
  WHERE (v.orden_disponible = true);
 "   DROP VIEW public.delivery_pedido;
       public          hihletamnmkwuq    false    215    230    230    230    230    230    230    230    230    230    225    225    223    223    223    223    223    221    221    221    215    215    215    215    213    213    281    281    281    242    242    230    230    230    230    230    230    230    230    230            �            1259    17336956    departamento    TABLE     z   CREATE TABLE public.departamento (
    iddepartamento integer NOT NULL,
    nombre_departamento character varying(200)
);
     DROP TABLE public.departamento;
       public         heap    hihletamnmkwuq    false            �            1259    17336954    departamento_iddepartamento_seq    SEQUENCE     �   CREATE SEQUENCE public.departamento_iddepartamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.departamento_iddepartamento_seq;
       public          hihletamnmkwuq    false    234            E           0    0    departamento_iddepartamento_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.departamento_iddepartamento_seq OWNED BY public.departamento.iddepartamento;
          public          hihletamnmkwuq    false    233            �            1259    17336977    distrito    TABLE     �   CREATE TABLE public.distrito (
    iddistrito integer NOT NULL,
    nombre_distrito character varying(200),
    idprovincia integer
);
    DROP TABLE public.distrito;
       public         heap    hihletamnmkwuq    false            �            1259    17336975    distrito_iddistrito_seq    SEQUENCE     �   CREATE SEQUENCE public.distrito_iddistrito_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.distrito_iddistrito_seq;
       public          hihletamnmkwuq    false    238            F           0    0    distrito_iddistrito_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.distrito_iddistrito_seq OWNED BY public.distrito.iddistrito;
          public          hihletamnmkwuq    false    237            �            1259    13858194    subcategoriaempresa    TABLE     C  CREATE TABLE public.subcategoriaempresa (
    idsubcategoriaempresa integer NOT NULL,
    idcategoriaempresa integer NOT NULL,
    nombre_subcategoria character varying(100),
    descripcion_subcategoria character varying(300),
    porcentajebusqueda double precision,
    url_imagen_subcategoria character varying(500)
);
 '   DROP TABLE public.subcategoriaempresa;
       public         heap    hihletamnmkwuq    false                       1259    20402176 
   empresa_bi    VIEW     @  CREATE VIEW public.empresa_bi AS
 SELECT e.idempresa,
    e.idsubcategoriaempresa,
    sce.nombre_subcategoria,
    e.nombre_empresa,
    e.direccion_empresa,
    e.ruc_empresa,
    e.telefono_empresa,
    e.celular_empresa,
    e.descripcion_empresa,
    e.urlfoto_empresa,
    e.nombredueno_empresa,
    e.porcentaje_popularidad AS popularidad,
    e.cuenta_delivery,
    e.costo_delivery,
    e.detalle_delivery,
    e.tiempo_aproximado_entrega,
    e.iddistrito,
    e.icono_empresa,
    e.horario_inicio,
    e.horario_fin,
    e.tarjeta,
    e.detalle_tarjeta,
    e.estrella_empresa,
    e.maps_coordenada_x,
    e.maps_coordenada_y,
    e.detalle_ubicacion,
    e.disponible,
    cae.idcategoriaempresa,
    cae.nombre_categoria,
    ce.idcuentaempresa,
    ce.cuentaactiva,
    ce.marketplace,
    ce.socio,
    e.precio_menu,
    e.monto_descuento_menu,
    ug.idusuariogeneral,
    ug.apellido,
    ug.nombre,
    ug.correo,
    ug.celular,
    ug.foto
   FROM ((((public.empresa e
     JOIN public.cuenta_empresa ce ON ((e.idempresa = ce.idempresa)))
     JOIN public.usuario_general ug ON ((ug.idusuariogeneral = e.idusuariogeneral)))
     JOIN public.subcategoriaempresa sce ON ((sce.idsubcategoriaempresa = e.idsubcategoriaempresa)))
     JOIN public.categoriaempresa cae ON ((cae.idcategoriaempresa = sce.idcategoriaempresa)));
    DROP VIEW public.empresa_bi;
       public          hihletamnmkwuq    false    281    281    281    281    281    281    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    215    209    209    209    209    209    205    205    205    203    203                       1259    20080044    empresa_favorito_usuario    TABLE     �   CREATE TABLE public.empresa_favorito_usuario (
    idefu integer NOT NULL,
    idempresa integer,
    idusuario integer,
    fecha timestamp without time zone
);
 ,   DROP TABLE public.empresa_favorito_usuario;
       public         heap    hihletamnmkwuq    false                       1259    20080179    empresa_favorita    VIEW       CREATE VIEW public.empresa_favorita AS
 SELECT e.idempresa,
    e.nombre_empresa,
    e.idsubcategoriaempresa,
    sce.nombre_subcategoria,
    cae.idcategoriaempresa,
    cae.nombre_categoria,
    ce.idcuentaempresa,
    ce.marketplace,
    ce.socio,
    e.direccion_empresa,
    e.ruc_empresa,
    e.telefono_empresa,
    e.celular_empresa,
    e.descripcion_empresa,
    e.urlfoto_empresa,
    e.nombredueno_empresa,
    e.porcentaje_popularidad AS popularidad,
    e.cuenta_delivery,
    e.costo_delivery,
    e.detalle_delivery,
    e.tiempo_aproximado_entrega,
    e.iddistrito,
    e.icono_empresa,
    e.horario_inicio,
    e.horario_fin,
    e.tarjeta,
    e.detalle_tarjeta,
    e.estrella_empresa,
    e.maps_coordenada_x,
    e.maps_coordenada_y,
    e.detalle_ubicacion,
    e.disponible,
    u.idusuario
   FROM (((((public.empresa_favorito_usuario efu
     JOIN public.empresa e ON ((efu.idempresa = e.idempresa)))
     JOIN public.usuario u ON ((efu.idusuario = u.idusuario)))
     JOIN public.cuenta_empresa ce ON ((e.idempresa = ce.idempresa)))
     JOIN public.subcategoriaempresa sce ON ((sce.idsubcategoriaempresa = e.idsubcategoriaempresa)))
     JOIN public.categoriaempresa cae ON ((cae.idcategoriaempresa = sce.idcategoriaempresa)))
  WHERE (ce.cuentaactiva = true);
 #   DROP VIEW public.empresa_favorita;
       public          hihletamnmkwuq    false    215    215    215    215    215    215    215    215    215    215    273    203    205    205    205    209    209    209    209    209    213    215    215    215    215    215    215    215    215    215    215    273    215    215    215    215    215    203    215                       1259    20080042 "   empresa_favorito_usuario_idefu_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_favorito_usuario_idefu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.empresa_favorito_usuario_idefu_seq;
       public          hihletamnmkwuq    false    273            G           0    0 "   empresa_favorito_usuario_idefu_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.empresa_favorito_usuario_idefu_seq OWNED BY public.empresa_favorito_usuario.idefu;
          public          hihletamnmkwuq    false    272            �            1259    13858342    horario    TABLE     �   CREATE TABLE public.horario (
    idhorario integer NOT NULL,
    horario_nombre character varying(50),
    comentario character varying(400),
    horario_inicio integer,
    horario_fin integer
);
    DROP TABLE public.horario;
       public         heap    hihletamnmkwuq    false            �            1259    18638109    orden_estado_empresa    TABLE     �   CREATE TABLE public.orden_estado_empresa (
    idventa integer,
    idestado_empresa integer,
    detalle character varying,
    fecha timestamp without time zone,
    idempresa integer
);
 (   DROP TABLE public.orden_estado_empresa;
       public         heap    hihletamnmkwuq    false            �            1259    18551359 
   tipo_envio    TABLE     �   CREATE TABLE public.tipo_envio (
    idtipo_envio integer NOT NULL,
    nombre_tipo_envio character varying,
    url_foto character varying
);
    DROP TABLE public.tipo_envio;
       public         heap    hihletamnmkwuq    false                       1259    20343000    empresa_historial    VIEW     �  CREATE VIEW public.empresa_historial AS
 SELECT v.idventa,
    v.idtipopago,
    tp.tipopago_nombre,
    v.idhorario,
    h.horario_nombre,
    v.idubicacion,
    u.ubicacion_nombre,
    u.maps_coordenada_x,
    u.maps_coordenada_y,
    u.ubicacion_comentarios,
    v.idpedido,
    p.idempresa,
    p.pedido_cantidadtotal,
    p.idusuario,
    ug.idusuariogeneral,
    ug.nombre,
    ug.apellido,
    ug.celular,
    v.venta_fecha AS ventafecha,
    v.venta_fechaentrega AS ventafechaentrega,
    v.venta_costodelivery,
    v.venta_costototal,
    v.comentario,
    v.idestado_empresa AS idestadoempresa,
    v.idestado_pago,
    ep.nombre_estado AS nombre_estadopago,
    v.idtipo_envio,
    tp_e.nombre_tipo_envio,
    v.orden_disponible AS ordendisponible,
    v.distancia_delivery,
    v.tiempo_espera,
    v.idrepartidor,
    v.cancelar,
    v.comentario_cancelar,
    v.tiempo_aprox_delivery,
    v.idestado_delivery AS idestadodelivery,
    v.idestado_general AS idestadogeneral,
    v.numeromesa,
    v.descuento_mesa,
    v.mesa,
    oee.fecha AS fechahistorial,
    oee.idestado_empresa AS idestadoempresaofi
   FROM (((((((((public.venta v
     JOIN public.tipopago tp ON ((v.idtipopago = tp.idtipopago)))
     JOIN public.horario h ON ((v.idhorario = h.idhorario)))
     JOIN public.estado_pago ep ON ((v.idestado_pago = ep.idestado_pago)))
     JOIN public.pedido p ON ((v.idpedido = p.idpedido)))
     JOIN public.tipo_envio tp_e ON ((v.idtipo_envio = tp_e.idtipo_envio)))
     JOIN public.usuario usu ON ((p.idusuario = usu.idusuario)))
     JOIN public.usuario_general ug ON ((ug.idusuariogeneral = usu.idusuariogeneral)))
     JOIN public.ubicacion u ON ((u.idubicacion = v.idubicacion)))
     JOIN public.orden_estado_empresa oee ON ((v.idventa = oee.idventa)));
 $   DROP VIEW public.empresa_historial;
       public          hihletamnmkwuq    false    230    230    230    227    230    227    225    225    223    281    281    281    281    245    245    245    244    244    242    242    230    230    230    230    230    230    230    230    230    223    223    223    223    221    221    221    221    213    213    230    230    230    230    230    230    230    230    230    230    230    230            �            1259    13858248    empresa_idempresa_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_idempresa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.empresa_idempresa_seq;
       public          hihletamnmkwuq    false    215            H           0    0    empresa_idempresa_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.empresa_idempresa_seq OWNED BY public.empresa.idempresa;
          public          hihletamnmkwuq    false    214                       1259    20097355    tipo_envio_empresa    TABLE     �   CREATE TABLE public.tipo_envio_empresa (
    idtee integer NOT NULL,
    idempresa integer,
    idtipoenvio integer,
    precio double precision
);
 &   DROP TABLE public.tipo_envio_empresa;
       public         heap    hihletamnmkwuq    false                       1259    20098487    envio_empresa    VIEW     J  CREATE VIEW public.envio_empresa AS
 SELECT tee.idtee,
    tee.idempresa,
    tee.idtipoenvio,
    te.nombre_tipo_envio,
    tee.precio,
    te.url_foto
   FROM ((public.tipo_envio te
     JOIN public.tipo_envio_empresa tee ON ((tee.idtipoenvio = te.idtipo_envio)))
     JOIN public.empresa e ON ((e.idempresa = tee.idempresa)));
     DROP VIEW public.envio_empresa;
       public          hihletamnmkwuq    false    278    215    244    244    244    278    278    278            �            1259    18638156    estado_delivery    TABLE     �   CREATE TABLE public.estado_delivery (
    idestado_delivery integer NOT NULL,
    nombre character varying,
    unique_code character varying
);
 #   DROP TABLE public.estado_delivery;
       public         heap    hihletamnmkwuq    false            �            1259    18638154 %   estado_delivery_idestado_delivery_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_delivery_idestado_delivery_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.estado_delivery_idestado_delivery_seq;
       public          hihletamnmkwuq    false    247            I           0    0 %   estado_delivery_idestado_delivery_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.estado_delivery_idestado_delivery_seq OWNED BY public.estado_delivery.idestado_delivery;
          public          hihletamnmkwuq    false    246            �            1259    18311758    estado_empresa    TABLE     �   CREATE TABLE public.estado_empresa (
    idestado_empresa integer NOT NULL,
    tipo_estado character varying,
    detalle_estado character varying
);
 "   DROP TABLE public.estado_empresa;
       public         heap    hihletamnmkwuq    false            
           1259    19881465    estado_general    TABLE     �   CREATE TABLE public.estado_general (
    idestadogeneral integer NOT NULL,
    nombre_estado_general character varying,
    detalle character varying
);
 "   DROP TABLE public.estado_general;
       public         heap    hihletamnmkwuq    false            �            1259    18342214    estado_pago_idestago_pago_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_pago_idestago_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.estado_pago_idestago_pago_seq;
       public          hihletamnmkwuq    false    242            J           0    0    estado_pago_idestago_pago_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.estado_pago_idestago_pago_seq OWNED BY public.estado_pago.idestado_pago;
          public          hihletamnmkwuq    false    241            �            1259    18311756    estado_venta_idestado_venta_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_venta_idestado_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.estado_venta_idestado_venta_seq;
       public          hihletamnmkwuq    false    240            K           0    0    estado_venta_idestado_venta_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.estado_venta_idestado_venta_seq OWNED BY public.estado_empresa.idestado_empresa;
          public          hihletamnmkwuq    false    239            �            1259    13858340    horario_idhorario_seq    SEQUENCE     �   CREATE SEQUENCE public.horario_idhorario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.horario_idhorario_seq;
       public          hihletamnmkwuq    false    227            L           0    0    horario_idhorario_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.horario_idhorario_seq OWNED BY public.horario.idhorario;
          public          hihletamnmkwuq    false    226            �            1259    13858228    nombresubcategoria    TABLE     G  CREATE TABLE public.nombresubcategoria (
    idnombresubcategoria integer NOT NULL,
    productospopulares character varying(200) NOT NULL,
    ofertas character varying(200) NOT NULL,
    categoria1 character varying(200),
    categoria2 character varying(200),
    categoria3 character varying(200),
    idempresa integer
);
 &   DROP TABLE public.nombresubcategoria;
       public         heap    hihletamnmkwuq    false            �            1259    13858226 +   nombresubcategoria_idnombresubcategoria_seq    SEQUENCE     �   CREATE SEQUENCE public.nombresubcategoria_idnombresubcategoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.nombresubcategoria_idnombresubcategoria_seq;
       public          hihletamnmkwuq    false    211            M           0    0 +   nombresubcategoria_idnombresubcategoria_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.nombresubcategoria_idnombresubcategoria_seq OWNED BY public.nombresubcategoria.idnombresubcategoria;
          public          hihletamnmkwuq    false    210                       1259    20182052    orden    VIEW     m  CREATE VIEW public.orden AS
 SELECT DISTINCT ON (v.idventa) v.idventa,
    v.venta_fecha AS ventafecha,
    v.venta_fechaentrega,
    v.venta_costodelivery,
    v.venta_costototal,
    v.comentario,
    v.orden_disponible AS ordendisponible,
    v.tiempo_espera,
    v.cancelar,
    v.idrepartidor,
    v.idestado_general,
    emp.idempresa,
    emp.nombre_empresa,
    emp.celular_empresa,
    emp.urlfoto_empresa,
    emp.tiempo_aproximado_entrega,
    emp.maps_coordenada_x AS emp_maps_coordenada_x,
    emp.maps_coordenada_y AS emp_maps_coordenada_y,
    emp.detalle_ubicacion,
    tp.idtipopago,
    tp.tipopago_nombre,
    h.idhorario,
    h.horario_nombre,
    h.horario_inicio,
    h.horario_fin,
    u.idubicacion,
    u.ubicacion_nombre,
    u.ubicacion_comentarios,
    u.maps_coordenada_x,
    u.maps_coordenada_y,
    te.idtipo_envio,
    te.nombre_tipo_envio,
    p.idpedido,
    p.idusuario,
    ev.idestado_empresa,
    ev.tipo_estado,
    ep.idestado_pago,
    ep.nombre_estado
   FROM (((((((((public.venta v
     JOIN public.tipopago tp ON ((v.idtipopago = tp.idtipopago)))
     JOIN public.horario h ON ((v.idhorario = h.idhorario)))
     JOIN public.ubicacion u ON ((v.idubicacion = u.idubicacion)))
     JOIN public.estado_empresa ev ON ((v.idestado_empresa = ev.idestado_empresa)))
     JOIN public.estado_pago ep ON ((v.idestado_pago = ep.idestado_pago)))
     JOIN public.pedido p ON ((v.idpedido = p.idpedido)))
     JOIN public.registropedido rp ON ((p.idpedido = rp.idpedido)))
     JOIN public.empresa emp ON ((rp.idempresa = emp.idempresa)))
     JOIN public.tipo_envio te ON ((te.idtipo_envio = v.idtipo_envio)));
    DROP VIEW public.orden;
       public          hihletamnmkwuq    false    230    230    230    230    230    230    230    215    215    215    215    230    215    215    215    215    221    221    223    223    223    223    223    225    225    227    227    227    227    228    228    230    230    230    230    240    240    242    244    244    242    230    230    230    230    230    230            �            1259    18638165    orden_estado_delivery    TABLE     �   CREATE TABLE public.orden_estado_delivery (
    idventa integer,
    idestado_delivery integer,
    idrepartidor integer,
    detalle character varying,
    fecha timestamp without time zone
);
 )   DROP TABLE public.orden_estado_delivery;
       public         heap    hihletamnmkwuq    false                       1259    19881538    orden_estado_general    TABLE     �   CREATE TABLE public.orden_estado_general (
    idoeg integer NOT NULL,
    idventa integer,
    idestadogeneral integer,
    fecha timestamp without time zone,
    tiempo_aproximado character varying,
    idusuario integer
);
 (   DROP TABLE public.orden_estado_general;
       public         heap    hihletamnmkwuq    false                       1259    19881536    orden_estado_general_idoeg_seq    SEQUENCE     �   CREATE SEQUENCE public.orden_estado_general_idoeg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.orden_estado_general_idoeg_seq;
       public          hihletamnmkwuq    false    268            N           0    0    orden_estado_general_idoeg_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.orden_estado_general_idoeg_seq OWNED BY public.orden_estado_general.idoeg;
          public          hihletamnmkwuq    false    267                       1259    19903970    orden_estado_restaurante    TABLE     �   CREATE TABLE public.orden_estado_restaurante (
    idestado_venta integer NOT NULL,
    idventa integer NOT NULL,
    detalle character varying(255),
    fecha timestamp without time zone,
    idempresa integer NOT NULL
);
 ,   DROP TABLE public.orden_estado_restaurante;
       public         heap    hihletamnmkwuq    false            �            1259    13858308    pedido_idpedido_seq    SEQUENCE     �   CREATE SEQUENCE public.pedido_idpedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pedido_idpedido_seq;
       public          hihletamnmkwuq    false    221            O           0    0    pedido_idpedido_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pedido_idpedido_seq OWNED BY public.pedido.idpedido;
          public          hihletamnmkwuq    false    220            �            1259    13858287    producto_idproducto_seq    SEQUENCE     �   CREATE SEQUENCE public.producto_idproducto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.producto_idproducto_seq;
       public          hihletamnmkwuq    false    219            P           0    0    producto_idproducto_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.producto_idproducto_seq OWNED BY public.producto.idproducto;
          public          hihletamnmkwuq    false    218            �            1259    17336964 	   provincia    TABLE     �   CREATE TABLE public.provincia (
    idprovincia integer NOT NULL,
    nombre_provincia character varying(200),
    iddepartamento integer
);
    DROP TABLE public.provincia;
       public         heap    hihletamnmkwuq    false            �            1259    17336962    provincia_idprovincia_seq    SEQUENCE     �   CREATE SEQUENCE public.provincia_idprovincia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.provincia_idprovincia_seq;
       public          hihletamnmkwuq    false    236            Q           0    0    provincia_idprovincia_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.provincia_idprovincia_seq OWNED BY public.provincia.idprovincia;
          public          hihletamnmkwuq    false    235            �            1259    16689606 
   publicidad    TABLE     �   CREATE TABLE public.publicidad (
    idpublicidad integer NOT NULL,
    detalle_publicidad character varying(500),
    url_imagen_publicidad character varying(500)
);
    DROP TABLE public.publicidad;
       public         heap    hihletamnmkwuq    false            �            1259    16689604    publicidad_idpublicidad_seq    SEQUENCE     �   CREATE SEQUENCE public.publicidad_idpublicidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.publicidad_idpublicidad_seq;
       public          hihletamnmkwuq    false    232            R           0    0    publicidad_idpublicidad_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.publicidad_idpublicidad_seq OWNED BY public.publicidad.idpublicidad;
          public          hihletamnmkwuq    false    231            �            1259    18638205 
   repartidor    TABLE     $  CREATE TABLE public.repartidor (
    idrepartidor integer NOT NULL,
    placa_vehiculo character varying,
    imagen_vehiculo character varying,
    tipo_brevete character varying,
    detalles character varying,
    disponible boolean,
    idusuariogeneral integer,
    idempresa integer
);
    DROP TABLE public.repartidor;
       public         heap    hihletamnmkwuq    false                       1259    19436748    tarifa_repartidor    TABLE     �   CREATE TABLE public.tarifa_repartidor (
    idtarifa integer NOT NULL,
    nombre character varying,
    monto double precision,
    descripcion character varying
);
 %   DROP TABLE public.tarifa_repartidor;
       public         heap    hihletamnmkwuq    false                       1259    19436756    tipo_cuenta_repartidor    TABLE     �   CREATE TABLE public.tipo_cuenta_repartidor (
    idtipocuenta integer NOT NULL,
    nombre character varying,
    detalle character varying
);
 *   DROP TABLE public.tipo_cuenta_repartidor;
       public         heap    hihletamnmkwuq    false            !           1259    21118473    repartidor_bi    VIEW       CREATE VIEW public.repartidor_bi AS
 SELECT ug.idusuariogeneral,
    ug.nombre AS nombre_usuario,
    ug.apellido,
    ug.correo,
    ug.celular,
    ug.foto,
    cr.idcuentarepartidor,
    cr.activa,
    tr.idtarifa,
    tr.nombre AS nombre_tarifa,
    tr.monto,
    tcr.idtipocuenta,
    tcr.nombre AS nombre_cuenta,
    re.idrepartidor,
    re.placa_vehiculo,
    re.imagen_vehiculo,
    re.disponible,
    re.idempresa
   FROM ((((public.repartidor re
     JOIN public.cuenta_repartidor cr ON ((re.idrepartidor = cr.idrepartidor)))
     JOIN public.usuario_general ug ON ((ug.idusuariogeneral = re.idusuariogeneral)))
     JOIN public.tarifa_repartidor tr ON ((tr.idtarifa = cr.idtarifa)))
     JOIN public.tipo_cuenta_repartidor tcr ON ((tcr.idtipocuenta = cr.idtipocuenta)));
     DROP VIEW public.repartidor_bi;
       public          hihletamnmkwuq    false    260    281    281    281    281    281    281    250    250    250    250    250    250    257    257    257    258    258    260    260    260    260                        1259    20787192    repartidor_historial    VIEW     �  CREATE VIEW public.repartidor_historial AS
 SELECT v.idventa,
    v.idtipopago,
    tp.tipopago_nombre,
    v.idubicacion,
    u.ubicacion_nombre,
    v.idpedido,
    p.idempresa,
    p.pedido_cantidadtotal,
    p.idusuario,
    ug.idusuariogeneral,
    v.venta_costodelivery,
    v.venta_costototal,
    v.comentario,
    v.idestado_pago,
    ep.nombre_estado AS nombre_estadopago,
    v.orden_disponible AS ordendisponible,
    v.distancia_delivery,
    v.tiempo_espera,
    v.idrepartidor,
    v.cancelar,
    v.comentario_cancelar,
    v.tiempo_aprox_delivery,
    v.venta_distancia_delivery_total,
    v.ganancia_delivery,
    oed.fecha AS fechahistorial,
    oed.idestado_delivery AS idestadodelivery
   FROM (((((((public.venta v
     JOIN public.tipopago tp ON ((v.idtipopago = tp.idtipopago)))
     JOIN public.estado_pago ep ON ((v.idestado_pago = ep.idestado_pago)))
     JOIN public.pedido p ON ((v.idpedido = p.idpedido)))
     JOIN public.usuario usu ON ((p.idusuario = usu.idusuario)))
     JOIN public.usuario_general ug ON ((ug.idusuariogeneral = usu.idusuariogeneral)))
     JOIN public.ubicacion u ON ((u.idubicacion = v.idubicacion)))
     JOIN public.orden_estado_delivery oed ON ((v.idventa = oed.idventa)));
 '   DROP VIEW public.repartidor_historial;
       public          hihletamnmkwuq    false    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    225    225    213    213    221    221    221    221    223    223    281    248    248    248    242    242            �            1259    18638203    repartidor_idrepartidor_seq    SEQUENCE     �   CREATE SEQUENCE public.repartidor_idrepartidor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.repartidor_idrepartidor_seq;
       public          hihletamnmkwuq    false    250            S           0    0    repartidor_idrepartidor_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.repartidor_idrepartidor_seq OWNED BY public.repartidor.idrepartidor;
          public          hihletamnmkwuq    false    249            "           1259    21153021    restaurante_pedido    VIEW     �  CREATE VIEW public.restaurante_pedido AS
 SELECT v.idventa,
    v.idtipopago,
    tp.tipopago_nombre,
    v.idhorario,
    h.horario_nombre,
    v.idubicacion,
    u.ubicacion_nombre,
    u.maps_coordenada_x,
    u.maps_coordenada_y,
    u.ubicacion_comentarios,
    v.idpedido,
    p.idempresa,
    p.pedido_cantidadtotal,
    p.idusuario,
    ug.idusuariogeneral,
    ug.nombre,
    ug.apellido,
    ug.celular,
    v.venta_fecha AS ventafecha,
    v.venta_fechaentrega AS ventafechaentrega,
    v.venta_costodelivery,
    v.venta_costototal,
    v.comentario,
    v.idestado_empresa AS idestadoempresa,
    v.idestado_pago,
    ep.nombre_estado AS nombre_estadopago,
    v.idtipo_envio,
    tp_e.nombre_tipo_envio,
    v.orden_disponible AS ordendisponible,
    v.distancia_delivery,
    v.tiempo_espera,
    v.idrepartidor,
    v.cancelar,
    v.comentario_cancelar,
    v.tiempo_aprox_delivery,
    v.idestado_delivery AS idestadodelivery,
    v.idestado_general AS idestadogeneral,
    v.numeromesa,
    v.descuento_mesa,
    v.mesa,
    v.tiempototal_espera,
    v.celular_adicional
   FROM ((((((((public.venta v
     JOIN public.tipopago tp ON ((v.idtipopago = tp.idtipopago)))
     JOIN public.horario h ON ((v.idhorario = h.idhorario)))
     JOIN public.estado_pago ep ON ((v.idestado_pago = ep.idestado_pago)))
     JOIN public.pedido p ON ((v.idpedido = p.idpedido)))
     JOIN public.tipo_envio tp_e ON ((v.idtipo_envio = tp_e.idtipo_envio)))
     JOIN public.usuario usu ON ((p.idusuario = usu.idusuario)))
     JOIN public.usuario_general ug ON ((ug.idusuariogeneral = usu.idusuariogeneral)))
     JOIN public.ubicacion u ON ((u.idubicacion = v.idubicacion)));
 %   DROP VIEW public.restaurante_pedido;
       public          hihletamnmkwuq    false    230    230    227    227    225    221    213    213    225    223    223    223    223    223    221    221    221    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    230    242    242    244    244    281    281    281    281            �            1259    19402742    roles    TABLE     ]   CREATE TABLE public.roles (
    idrole integer NOT NULL,
    nombre character varying(50)
);
    DROP TABLE public.roles;
       public         heap    hihletamnmkwuq    false            �            1259    19402740    roles_idrole_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_idrole_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.roles_idrole_seq;
       public          hihletamnmkwuq    false    252            T           0    0    roles_idrole_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.roles_idrole_seq OWNED BY public.roles.idrole;
          public          hihletamnmkwuq    false    251            �            1259    13858192 -   subcategoriaempresa_idsubcategoriaempresa_seq    SEQUENCE     �   CREATE SEQUENCE public.subcategoriaempresa_idsubcategoriaempresa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.subcategoriaempresa_idsubcategoriaempresa_seq;
       public          hihletamnmkwuq    false    205            U           0    0 -   subcategoriaempresa_idsubcategoriaempresa_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.subcategoriaempresa_idsubcategoriaempresa_seq OWNED BY public.subcategoriaempresa.idsubcategoriaempresa;
          public          hihletamnmkwuq    false    204                       1259    19437431    tarifa_empresa    TABLE     �   CREATE TABLE public.tarifa_empresa (
    idtarifa integer NOT NULL,
    nombre character varying,
    monto double precision,
    descripcion character varying
);
 "   DROP TABLE public.tarifa_empresa;
       public         heap    hihletamnmkwuq    false            �            1259    13858207    tipo_cuenta_empresa    TABLE     �   CREATE TABLE public.tipo_cuenta_empresa (
    idtipocuenta integer NOT NULL,
    nombrecuenta character varying(200) NOT NULL
);
 '   DROP TABLE public.tipo_cuenta_empresa;
       public         heap    hihletamnmkwuq    false                       1259    20097353    tipo_envio_empresa_idtee_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_envio_empresa_idtee_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tipo_envio_empresa_idtee_seq;
       public          hihletamnmkwuq    false    278            V           0    0    tipo_envio_empresa_idtee_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tipo_envio_empresa_idtee_seq OWNED BY public.tipo_envio_empresa.idtee;
          public          hihletamnmkwuq    false    277            �            1259    18551357    tipo_envio_idtipo_envio_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_envio_idtipo_envio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tipo_envio_idtipo_envio_seq;
       public          hihletamnmkwuq    false    244            W           0    0    tipo_envio_idtipo_envio_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tipo_envio_idtipo_envio_seq OWNED BY public.tipo_envio.idtipo_envio;
          public          hihletamnmkwuq    false    243            	           1259    19438317 
   tipocuenta    TABLE     o   CREATE TABLE public.tipocuenta (
    idtipocuenta integer NOT NULL,
    nombrecuenta character varying(255)
);
    DROP TABLE public.tipocuenta;
       public         heap    hihletamnmkwuq    false            �            1259    13858205    tipocuenta_idtipocuenta_seq    SEQUENCE     �   CREATE SEQUENCE public.tipocuenta_idtipocuenta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tipocuenta_idtipocuenta_seq;
       public          hihletamnmkwuq    false    207            X           0    0    tipocuenta_idtipocuenta_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public.tipocuenta_idtipocuenta_seq OWNED BY public.tipo_cuenta_empresa.idtipocuenta;
          public          hihletamnmkwuq    false    206                       1259    19438315    tipocuenta_idtipocuenta_seq1    SEQUENCE     �   CREATE SEQUENCE public.tipocuenta_idtipocuenta_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tipocuenta_idtipocuenta_seq1;
       public          hihletamnmkwuq    false    265            Y           0    0    tipocuenta_idtipocuenta_seq1    SEQUENCE OWNED BY     \   ALTER SEQUENCE public.tipocuenta_idtipocuenta_seq1 OWNED BY public.tipocuenta.idtipocuenta;
          public          hihletamnmkwuq    false    264            �            1259    13858332    tipopago_idtipopago_seq    SEQUENCE     �   CREATE SEQUENCE public.tipopago_idtipopago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tipopago_idtipopago_seq;
       public          hihletamnmkwuq    false    225            Z           0    0    tipopago_idtipopago_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tipopago_idtipopago_seq OWNED BY public.tipopago.idtipopago;
          public          hihletamnmkwuq    false    224            �            1259    13858316    ubicacion_idubicacion_seq    SEQUENCE     �   CREATE SEQUENCE public.ubicacion_idubicacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ubicacion_idubicacion_seq;
       public          hihletamnmkwuq    false    223            [           0    0    ubicacion_idubicacion_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ubicacion_idubicacion_seq OWNED BY public.ubicacion.idubicacion;
          public          hihletamnmkwuq    false    222                       1259    20141382 $   usuario_general_idusuariogeneral_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_general_idusuariogeneral_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.usuario_general_idusuariogeneral_seq;
       public          hihletamnmkwuq    false    281            \           0    0 $   usuario_general_idusuariogeneral_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.usuario_general_idusuariogeneral_seq OWNED BY public.usuario_general.idusuariogeneral;
          public          hihletamnmkwuq    false    280            �            1259    13858237    usuario_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_idusuario_seq;
       public          hihletamnmkwuq    false    213            ]           0    0    usuario_idusuario_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.usuario_idusuario_seq OWNED BY public.usuario.idusuario;
          public          hihletamnmkwuq    false    212                       1259    20141811    usuariogeneral_roles    TABLE     q   CREATE TABLE public.usuariogeneral_roles (
    idusuariogeneral integer NOT NULL,
    idrole integer NOT NULL
);
 (   DROP TABLE public.usuariogeneral_roles;
       public         heap    hihletamnmkwuq    false            �            1259    13858361    venta_idventa_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_idventa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.venta_idventa_seq;
       public          hihletamnmkwuq    false    230            ^           0    0    venta_idventa_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.venta_idventa_seq OWNED BY public.venta.idventa;
          public          hihletamnmkwuq    false    229            �           2604    19402948 -   calificacion_servicio idcalificacion_servicio    DEFAULT     �   ALTER TABLE ONLY public.calificacion_servicio ALTER COLUMN idcalificacion_servicio SET DEFAULT nextval('public.calificacion_servicio_idcalificacion_servicio_seq'::regclass);
 \   ALTER TABLE public.calificacion_servicio ALTER COLUMN idcalificacion_servicio DROP DEFAULT;
       public          hihletamnmkwuq    false    253    254    254            �           2604    19402956 +   calificacion_usuario idcalificacion_usuario    DEFAULT     �   ALTER TABLE ONLY public.calificacion_usuario ALTER COLUMN idcalificacion_usuario SET DEFAULT nextval('public.calificacion_usuario_idcalificacion_usuario_seq'::regclass);
 Z   ALTER TABLE public.calificacion_usuario ALTER COLUMN idcalificacion_usuario DROP DEFAULT;
       public          hihletamnmkwuq    false    256    255    256            �           2604    19921312 5   categoria_producto_empresa idcategoriaproductoempresa    DEFAULT     �   ALTER TABLE ONLY public.categoria_producto_empresa ALTER COLUMN idcategoriaproductoempresa SET DEFAULT nextval('public.categoria_producto_empresa_idcategoriaproductoempresa_seq'::regclass);
 d   ALTER TABLE public.categoria_producto_empresa ALTER COLUMN idcategoriaproductoempresa DROP DEFAULT;
       public          hihletamnmkwuq    false    270    271    271            �           2604    13858189 #   categoriaempresa idcategoriaempresa    DEFAULT     �   ALTER TABLE ONLY public.categoriaempresa ALTER COLUMN idcategoriaempresa SET DEFAULT nextval('public.categoriaempresa_idcategoriaempresa_seq'::regclass);
 R   ALTER TABLE public.categoriaempresa ALTER COLUMN idcategoriaempresa DROP DEFAULT;
       public          hihletamnmkwuq    false    203    202    203            �           2604    13858284 %   categoriaproducto idcategoriaproducto    DEFAULT     �   ALTER TABLE ONLY public.categoriaproducto ALTER COLUMN idcategoriaproducto SET DEFAULT nextval('public.categoriaproducto_idcategoriaproducto_seq'::regclass);
 T   ALTER TABLE public.categoriaproducto ALTER COLUMN idcategoriaproducto DROP DEFAULT;
       public          hihletamnmkwuq    false    216    217    217            �           2604    20080065    cliente idcliente    DEFAULT     v   ALTER TABLE ONLY public.cliente ALTER COLUMN idcliente SET DEFAULT nextval('public.cliente_idcliente_seq'::regclass);
 @   ALTER TABLE public.cliente ALTER COLUMN idcliente DROP DEFAULT;
       public          hihletamnmkwuq    false    274    275    275            �           2604    13858218    cuenta_empresa idcuentaempresa    DEFAULT     �   ALTER TABLE ONLY public.cuenta_empresa ALTER COLUMN idcuentaempresa SET DEFAULT nextval('public.cuentaempresa_idcuentaempresa_seq'::regclass);
 M   ALTER TABLE public.cuenta_empresa ALTER COLUMN idcuentaempresa DROP DEFAULT;
       public          hihletamnmkwuq    false    209    208    209            �           2604    19437370 $   cuenta_repartidor idcuentarepartidor    DEFAULT     �   ALTER TABLE ONLY public.cuenta_repartidor ALTER COLUMN idcuentarepartidor SET DEFAULT nextval('public.cuenta_repartidor_idcuentamotorizado_seq'::regclass);
 S   ALTER TABLE public.cuenta_repartidor ALTER COLUMN idcuentarepartidor DROP DEFAULT;
       public          hihletamnmkwuq    false    259    260    260            �           2604    19437486    cuenta_usuario idcuentausuario    DEFAULT     �   ALTER TABLE ONLY public.cuenta_usuario ALTER COLUMN idcuentausuario SET DEFAULT nextval('public.cuenta_usuario_idcuentausuario_seq'::regclass);
 M   ALTER TABLE public.cuenta_usuario ALTER COLUMN idcuentausuario DROP DEFAULT;
       public          hihletamnmkwuq    false    262    263    263            �           2604    17336959    departamento iddepartamento    DEFAULT     �   ALTER TABLE ONLY public.departamento ALTER COLUMN iddepartamento SET DEFAULT nextval('public.departamento_iddepartamento_seq'::regclass);
 J   ALTER TABLE public.departamento ALTER COLUMN iddepartamento DROP DEFAULT;
       public          hihletamnmkwuq    false    233    234    234            �           2604    17336980    distrito iddistrito    DEFAULT     z   ALTER TABLE ONLY public.distrito ALTER COLUMN iddistrito SET DEFAULT nextval('public.distrito_iddistrito_seq'::regclass);
 B   ALTER TABLE public.distrito ALTER COLUMN iddistrito DROP DEFAULT;
       public          hihletamnmkwuq    false    237    238    238            �           2604    13858253    empresa idempresa    DEFAULT     v   ALTER TABLE ONLY public.empresa ALTER COLUMN idempresa SET DEFAULT nextval('public.empresa_idempresa_seq'::regclass);
 @   ALTER TABLE public.empresa ALTER COLUMN idempresa DROP DEFAULT;
       public          hihletamnmkwuq    false    215    214    215            �           2604    20080047    empresa_favorito_usuario idefu    DEFAULT     �   ALTER TABLE ONLY public.empresa_favorito_usuario ALTER COLUMN idefu SET DEFAULT nextval('public.empresa_favorito_usuario_idefu_seq'::regclass);
 M   ALTER TABLE public.empresa_favorito_usuario ALTER COLUMN idefu DROP DEFAULT;
       public          hihletamnmkwuq    false    272    273    273            �           2604    18638159 !   estado_delivery idestado_delivery    DEFAULT     �   ALTER TABLE ONLY public.estado_delivery ALTER COLUMN idestado_delivery SET DEFAULT nextval('public.estado_delivery_idestado_delivery_seq'::regclass);
 P   ALTER TABLE public.estado_delivery ALTER COLUMN idestado_delivery DROP DEFAULT;
       public          hihletamnmkwuq    false    247    246    247            �           2604    18311761    estado_empresa idestado_empresa    DEFAULT     �   ALTER TABLE ONLY public.estado_empresa ALTER COLUMN idestado_empresa SET DEFAULT nextval('public.estado_venta_idestado_venta_seq'::regclass);
 N   ALTER TABLE public.estado_empresa ALTER COLUMN idestado_empresa DROP DEFAULT;
       public          hihletamnmkwuq    false    240    239    240            �           2604    18342219    estado_pago idestado_pago    DEFAULT     �   ALTER TABLE ONLY public.estado_pago ALTER COLUMN idestado_pago SET DEFAULT nextval('public.estado_pago_idestago_pago_seq'::regclass);
 H   ALTER TABLE public.estado_pago ALTER COLUMN idestado_pago DROP DEFAULT;
       public          hihletamnmkwuq    false    242    241    242            �           2604    13858345    horario idhorario    DEFAULT     v   ALTER TABLE ONLY public.horario ALTER COLUMN idhorario SET DEFAULT nextval('public.horario_idhorario_seq'::regclass);
 @   ALTER TABLE public.horario ALTER COLUMN idhorario DROP DEFAULT;
       public          hihletamnmkwuq    false    226    227    227            �           2604    13858231 '   nombresubcategoria idnombresubcategoria    DEFAULT     �   ALTER TABLE ONLY public.nombresubcategoria ALTER COLUMN idnombresubcategoria SET DEFAULT nextval('public.nombresubcategoria_idnombresubcategoria_seq'::regclass);
 V   ALTER TABLE public.nombresubcategoria ALTER COLUMN idnombresubcategoria DROP DEFAULT;
       public          hihletamnmkwuq    false    210    211    211            �           2604    19881541    orden_estado_general idoeg    DEFAULT     �   ALTER TABLE ONLY public.orden_estado_general ALTER COLUMN idoeg SET DEFAULT nextval('public.orden_estado_general_idoeg_seq'::regclass);
 I   ALTER TABLE public.orden_estado_general ALTER COLUMN idoeg DROP DEFAULT;
       public          hihletamnmkwuq    false    268    267    268            �           2604    13858313    pedido idpedido    DEFAULT     r   ALTER TABLE ONLY public.pedido ALTER COLUMN idpedido SET DEFAULT nextval('public.pedido_idpedido_seq'::regclass);
 >   ALTER TABLE public.pedido ALTER COLUMN idpedido DROP DEFAULT;
       public          hihletamnmkwuq    false    221    220    221            �           2604    13858292    producto idproducto    DEFAULT     z   ALTER TABLE ONLY public.producto ALTER COLUMN idproducto SET DEFAULT nextval('public.producto_idproducto_seq'::regclass);
 B   ALTER TABLE public.producto ALTER COLUMN idproducto DROP DEFAULT;
       public          hihletamnmkwuq    false    219    218    219            �           2604    17336967    provincia idprovincia    DEFAULT     ~   ALTER TABLE ONLY public.provincia ALTER COLUMN idprovincia SET DEFAULT nextval('public.provincia_idprovincia_seq'::regclass);
 D   ALTER TABLE public.provincia ALTER COLUMN idprovincia DROP DEFAULT;
       public          hihletamnmkwuq    false    235    236    236            �           2604    16689609    publicidad idpublicidad    DEFAULT     �   ALTER TABLE ONLY public.publicidad ALTER COLUMN idpublicidad SET DEFAULT nextval('public.publicidad_idpublicidad_seq'::regclass);
 F   ALTER TABLE public.publicidad ALTER COLUMN idpublicidad DROP DEFAULT;
       public          hihletamnmkwuq    false    232    231    232            �           2604    18638208    repartidor idrepartidor    DEFAULT     �   ALTER TABLE ONLY public.repartidor ALTER COLUMN idrepartidor SET DEFAULT nextval('public.repartidor_idrepartidor_seq'::regclass);
 F   ALTER TABLE public.repartidor ALTER COLUMN idrepartidor DROP DEFAULT;
       public          hihletamnmkwuq    false    249    250    250            �           2604    19402745    roles idrole    DEFAULT     l   ALTER TABLE ONLY public.roles ALTER COLUMN idrole SET DEFAULT nextval('public.roles_idrole_seq'::regclass);
 ;   ALTER TABLE public.roles ALTER COLUMN idrole DROP DEFAULT;
       public          hihletamnmkwuq    false    252    251    252            �           2604    13858197 )   subcategoriaempresa idsubcategoriaempresa    DEFAULT     �   ALTER TABLE ONLY public.subcategoriaempresa ALTER COLUMN idsubcategoriaempresa SET DEFAULT nextval('public.subcategoriaempresa_idsubcategoriaempresa_seq'::regclass);
 X   ALTER TABLE public.subcategoriaempresa ALTER COLUMN idsubcategoriaempresa DROP DEFAULT;
       public          hihletamnmkwuq    false    204    205    205            �           2604    13858210     tipo_cuenta_empresa idtipocuenta    DEFAULT     �   ALTER TABLE ONLY public.tipo_cuenta_empresa ALTER COLUMN idtipocuenta SET DEFAULT nextval('public.tipocuenta_idtipocuenta_seq'::regclass);
 O   ALTER TABLE public.tipo_cuenta_empresa ALTER COLUMN idtipocuenta DROP DEFAULT;
       public          hihletamnmkwuq    false    207    206    207            �           2604    18551362    tipo_envio idtipo_envio    DEFAULT     �   ALTER TABLE ONLY public.tipo_envio ALTER COLUMN idtipo_envio SET DEFAULT nextval('public.tipo_envio_idtipo_envio_seq'::regclass);
 F   ALTER TABLE public.tipo_envio ALTER COLUMN idtipo_envio DROP DEFAULT;
       public          hihletamnmkwuq    false    244    243    244            �           2604    20097358    tipo_envio_empresa idtee    DEFAULT     �   ALTER TABLE ONLY public.tipo_envio_empresa ALTER COLUMN idtee SET DEFAULT nextval('public.tipo_envio_empresa_idtee_seq'::regclass);
 G   ALTER TABLE public.tipo_envio_empresa ALTER COLUMN idtee DROP DEFAULT;
       public          hihletamnmkwuq    false    277    278    278            �           2604    19438320    tipocuenta idtipocuenta    DEFAULT     �   ALTER TABLE ONLY public.tipocuenta ALTER COLUMN idtipocuenta SET DEFAULT nextval('public.tipocuenta_idtipocuenta_seq1'::regclass);
 F   ALTER TABLE public.tipocuenta ALTER COLUMN idtipocuenta DROP DEFAULT;
       public          hihletamnmkwuq    false    265    264    265            �           2604    13858337    tipopago idtipopago    DEFAULT     z   ALTER TABLE ONLY public.tipopago ALTER COLUMN idtipopago SET DEFAULT nextval('public.tipopago_idtipopago_seq'::regclass);
 B   ALTER TABLE public.tipopago ALTER COLUMN idtipopago DROP DEFAULT;
       public          hihletamnmkwuq    false    225    224    225            �           2604    13858321    ubicacion idubicacion    DEFAULT     ~   ALTER TABLE ONLY public.ubicacion ALTER COLUMN idubicacion SET DEFAULT nextval('public.ubicacion_idubicacion_seq'::regclass);
 D   ALTER TABLE public.ubicacion ALTER COLUMN idubicacion DROP DEFAULT;
       public          hihletamnmkwuq    false    222    223    223            �           2604    13858242    usuario idusuario    DEFAULT     v   ALTER TABLE ONLY public.usuario ALTER COLUMN idusuario SET DEFAULT nextval('public.usuario_idusuario_seq'::regclass);
 @   ALTER TABLE public.usuario ALTER COLUMN idusuario DROP DEFAULT;
       public          hihletamnmkwuq    false    212    213    213            �           2604    20141387     usuario_general idusuariogeneral    DEFAULT     �   ALTER TABLE ONLY public.usuario_general ALTER COLUMN idusuariogeneral SET DEFAULT nextval('public.usuario_general_idusuariogeneral_seq'::regclass);
 O   ALTER TABLE public.usuario_general ALTER COLUMN idusuariogeneral DROP DEFAULT;
       public          hihletamnmkwuq    false    281    280    281            �           2604    13858366    venta idventa    DEFAULT     n   ALTER TABLE ONLY public.venta ALTER COLUMN idventa SET DEFAULT nextval('public.venta_idventa_seq'::regclass);
 <   ALTER TABLE public.venta ALTER COLUMN idventa DROP DEFAULT;
       public          hihletamnmkwuq    false    230    229    230                      0    19402945    calificacion_servicio 
   TABLE DATA           j   COPY public.calificacion_servicio (idcalificacion_servicio, calificacion, idusuario, idventa) FROM stdin;
    public          hihletamnmkwuq    false    254   �                0    19402953    calificacion_usuario 
   TABLE DATA           h   COPY public.calificacion_usuario (idcalificacion_usuario, calificacion, idusuario, idventa) FROM stdin;
    public          hihletamnmkwuq    false    256   �      )          0    19921309    categoria_producto_empresa 
   TABLE DATA           p   COPY public.categoria_producto_empresa (idcategoriaproductoempresa, idempresa, nombre, descripcion) FROM stdin;
    public          hihletamnmkwuq    false    271   �      �          0    13858186    categoriaempresa 
   TABLE DATA           �   COPY public.categoriaempresa (idcategoriaempresa, nombre_categoria, descripcion_categoria, porcentajebusqueda, url_imagen_categoria) FROM stdin;
    public          hihletamnmkwuq    false    203   ,      �          0    13858281    categoriaproducto 
   TABLE DATA           c   COPY public.categoriaproducto (idcategoriaproducto, nombrecategoria, detallecategoria) FROM stdin;
    public          hihletamnmkwuq    false    217   �      -          0    20080062    cliente 
   TABLE DATA           7   COPY public.cliente (idcliente, idusuario) FROM stdin;
    public          hihletamnmkwuq    false    275   �      �          0    13858215    cuenta_empresa 
   TABLE DATA           �   COPY public.cuenta_empresa (idcuentaempresa, idtipocuenta, cuentaactiva, fecha_registrocuenta, fecha_vencimiento, montoabonado, detallecuenta, idempresa, idtarifa, marketplace, socio) FROM stdin;
    public          hihletamnmkwuq    false    209   
                0    19437367    cuenta_repartidor 
   TABLE DATA           �   COPY public.cuenta_repartidor (idcuentarepartidor, activa, fecharegistro, fechavencimiento, idtarifa, idtipocuenta, idrepartidor, montoabonado) FROM stdin;
    public          hihletamnmkwuq    false    260   �      !          0    19437483    cuenta_usuario 
   TABLE DATA           i   COPY public.cuenta_usuario (idcuentausuario, activa, fecharegistro, idtipocuenta, idusuario) FROM stdin;
    public          hihletamnmkwuq    false    263   a                0    17336956    departamento 
   TABLE DATA           K   COPY public.departamento (iddepartamento, nombre_departamento) FROM stdin;
    public          hihletamnmkwuq    false    234                   0    17336977    distrito 
   TABLE DATA           L   COPY public.distrito (iddistrito, nombre_distrito, idprovincia) FROM stdin;
    public          hihletamnmkwuq    false    238   3      �          0    13858250    empresa 
   TABLE DATA           '  COPY public.empresa (idempresa, idsubcategoriaempresa, nombre_empresa, direccion_empresa, ruc_empresa, telefono_empresa, celular_empresa, descripcion_empresa, urlfoto_empresa, nombredueno_empresa, porcentaje_popularidad, cuenta_delivery, costo_delivery, detalle_delivery, tiempo_aproximado_entrega, iddistrito, horario_atencion, icono_empresa, horario_inicio, horario_fin, tarjeta, detalle_tarjeta, estrella_empresa, maps_coordenada_x, maps_coordenada_y, detalle_ubicacion, disponible, precio_menu, monto_descuento_menu, idusuariogeneral) FROM stdin;
    public          hihletamnmkwuq    false    215   ]      +          0    20080044    empresa_favorito_usuario 
   TABLE DATA           V   COPY public.empresa_favorito_usuario (idefu, idempresa, idusuario, fecha) FROM stdin;
    public          hihletamnmkwuq    false    273   m$                0    18638156    estado_delivery 
   TABLE DATA           Q   COPY public.estado_delivery (idestado_delivery, nombre, unique_code) FROM stdin;
    public          hihletamnmkwuq    false    247   �$      
          0    18311758    estado_empresa 
   TABLE DATA           W   COPY public.estado_empresa (idestado_empresa, tipo_estado, detalle_estado) FROM stdin;
    public          hihletamnmkwuq    false    240   8%      $          0    19881465    estado_general 
   TABLE DATA           Y   COPY public.estado_general (idestadogeneral, nombre_estado_general, detalle) FROM stdin;
    public          hihletamnmkwuq    false    266   �%                0    18342216    estado_pago 
   TABLE DATA           S   COPY public.estado_pago (idestado_pago, nombre_estado, detalle_estado) FROM stdin;
    public          hihletamnmkwuq    false    242   V&      �          0    13858342    horario 
   TABLE DATA           e   COPY public.horario (idhorario, horario_nombre, comentario, horario_inicio, horario_fin) FROM stdin;
    public          hihletamnmkwuq    false    227   �&      �          0    13858228    nombresubcategoria 
   TABLE DATA           �   COPY public.nombresubcategoria (idnombresubcategoria, productospopulares, ofertas, categoria1, categoria2, categoria3, idempresa) FROM stdin;
    public          hihletamnmkwuq    false    211   �'                0    18638165    orden_estado_delivery 
   TABLE DATA           i   COPY public.orden_estado_delivery (idventa, idestado_delivery, idrepartidor, detalle, fecha) FROM stdin;
    public          hihletamnmkwuq    false    248   �(                0    18638109    orden_estado_empresa 
   TABLE DATA           d   COPY public.orden_estado_empresa (idventa, idestado_empresa, detalle, fecha, idempresa) FROM stdin;
    public          hihletamnmkwuq    false    245   )      &          0    19881538    orden_estado_general 
   TABLE DATA           t   COPY public.orden_estado_general (idoeg, idventa, idestadogeneral, fecha, tiempo_aproximado, idusuario) FROM stdin;
    public          hihletamnmkwuq    false    268   b)      '          0    19903970    orden_estado_restaurante 
   TABLE DATA           f   COPY public.orden_estado_restaurante (idestado_venta, idventa, detalle, fecha, idempresa) FROM stdin;
    public          hihletamnmkwuq    false    269   �)      �          0    13858310    pedido 
   TABLE DATA           �   COPY public.pedido (idpedido, pedido_montototal, pedido_cantidadtotal, pedido_fecha_registro, pedido_estado, idusuario, idempresa) FROM stdin;
    public          hihletamnmkwuq    false    221   �)      �          0    13858289    producto 
   TABLE DATA           1  COPY public.producto (idproducto, idcategoriaproducto, idempresa, producto_nombre, producto_precio, producto_stock, productofechacreacion, producto_uriimagen, producto_calificacion, producto_detalle, producto_descuento, producto_precio_descuento, disponible, tipomenu, producto_fechacreacion) FROM stdin;
    public          hihletamnmkwuq    false    219   3*                0    17336964 	   provincia 
   TABLE DATA           R   COPY public.provincia (idprovincia, nombre_provincia, iddepartamento) FROM stdin;
    public          hihletamnmkwuq    false    236   zE                0    16689606 
   publicidad 
   TABLE DATA           ]   COPY public.publicidad (idpublicidad, detalle_publicidad, url_imagen_publicidad) FROM stdin;
    public          hihletamnmkwuq    false    232   �E      �          0    13858348    registropedido 
   TABLE DATA           �   COPY public.registropedido (idpedido, idproducto, registropedido_cantidadtotal, registropedido_preciototal, registro_fecha, idempresa, comentario) FROM stdin;
    public          hihletamnmkwuq    false    228   �E                0    18638205 
   repartidor 
   TABLE DATA           �   COPY public.repartidor (idrepartidor, placa_vehiculo, imagen_vehiculo, tipo_brevete, detalles, disponible, idusuariogeneral, idempresa) FROM stdin;
    public          hihletamnmkwuq    false    250   }F                0    19402742    roles 
   TABLE DATA           /   COPY public.roles (idrole, nombre) FROM stdin;
    public          hihletamnmkwuq    false    252   �G      �          0    13858194    subcategoriaempresa 
   TABLE DATA           �   COPY public.subcategoriaempresa (idsubcategoriaempresa, idcategoriaempresa, nombre_subcategoria, descripcion_subcategoria, porcentajebusqueda, url_imagen_subcategoria) FROM stdin;
    public          hihletamnmkwuq    false    205   H                0    19437431    tarifa_empresa 
   TABLE DATA           N   COPY public.tarifa_empresa (idtarifa, nombre, monto, descripcion) FROM stdin;
    public          hihletamnmkwuq    false    261   �K                0    19436748    tarifa_repartidor 
   TABLE DATA           Q   COPY public.tarifa_repartidor (idtarifa, nombre, monto, descripcion) FROM stdin;
    public          hihletamnmkwuq    false    257   8L      �          0    13858207    tipo_cuenta_empresa 
   TABLE DATA           I   COPY public.tipo_cuenta_empresa (idtipocuenta, nombrecuenta) FROM stdin;
    public          hihletamnmkwuq    false    207   �L                0    19436756    tipo_cuenta_repartidor 
   TABLE DATA           O   COPY public.tipo_cuenta_repartidor (idtipocuenta, nombre, detalle) FROM stdin;
    public          hihletamnmkwuq    false    258   �L                0    18551359 
   tipo_envio 
   TABLE DATA           O   COPY public.tipo_envio (idtipo_envio, nombre_tipo_envio, url_foto) FROM stdin;
    public          hihletamnmkwuq    false    244   aM      /          0    20097355    tipo_envio_empresa 
   TABLE DATA           S   COPY public.tipo_envio_empresa (idtee, idempresa, idtipoenvio, precio) FROM stdin;
    public          hihletamnmkwuq    false    278   [N      #          0    19438317 
   tipocuenta 
   TABLE DATA           @   COPY public.tipocuenta (idtipocuenta, nombrecuenta) FROM stdin;
    public          hihletamnmkwuq    false    265   QO      �          0    13858334    tipopago 
   TABLE DATA           ^   COPY public.tipopago (idtipopago, tipopago_nombre, tipopago_estado, tipopago_url) FROM stdin;
    public          hihletamnmkwuq    false    225   nO      �          0    13858318 	   ubicacion 
   TABLE DATA           �   COPY public.ubicacion (idubicacion, idusuario, ubicacion_nombre, ubicacion_comentarios, eliminado, maps_distrito, maps_detalle, ubicacion_estado, maps_coordenada_x, maps_coordenada_y) FROM stdin;
    public          hihletamnmkwuq    false    223   3Q      �          0    13858239    usuario 
   TABLE DATA           >   COPY public.usuario (idusuario, idusuariogeneral) FROM stdin;
    public          hihletamnmkwuq    false    213   S      1          0    20141384    usuario_general 
   TABLE DATA              COPY public.usuario_general (idusuariogeneral, nombre, correo, contrasena, apellido, celular, foto, numero_sesion) FROM stdin;
    public          hihletamnmkwuq    false    281   [S      2          0    20141811    usuariogeneral_roles 
   TABLE DATA           H   COPY public.usuariogeneral_roles (idusuariogeneral, idrole) FROM stdin;
    public          hihletamnmkwuq    false    282   �]                 0    13858363    venta 
   TABLE DATA           i  COPY public.venta (idventa, idtipopago, idhorario, idubicacion, idpedido, venta_fecha, venta_fechaentrega, venta_costodelivery, venta_costototal, comentario, idestado_empresa, idestado_pago, idtipo_envio, comentario_entrega, distancia_delivery, costo_delivery, orden_disponible, tiempo_espera, idrepartidor, cancelar, comentario_cancelar, tiempo_aprox_delivery, idestado_delivery, idestado_general, numeromesa, descuento_mesa, mesa, venta_costopedido, venta_distancia_delivery_total, ganancia_yegoo, ganancia_delivery, venta_ganancia_delivery, tiempototal_espera, comentario_ubicacion, celular_adicional) FROM stdin;
    public          hihletamnmkwuq    false    230   ^      _           0    0 1   calificacion_servicio_idcalificacion_servicio_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.calificacion_servicio_idcalificacion_servicio_seq', 100, true);
          public          hihletamnmkwuq    false    253            `           0    0 /   calificacion_usuario_idcalificacion_usuario_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.calificacion_usuario_idcalificacion_usuario_seq', 100, true);
          public          hihletamnmkwuq    false    255            a           0    0 9   categoria_producto_empresa_idcategoriaproductoempresa_seq    SEQUENCE SET     i   SELECT pg_catalog.setval('public.categoria_producto_empresa_idcategoriaproductoempresa_seq', 115, true);
          public          hihletamnmkwuq    false    270            b           0    0 '   categoriaempresa_idcategoriaempresa_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.categoriaempresa_idcategoriaempresa_seq', 8, true);
          public          hihletamnmkwuq    false    202            c           0    0 )   categoriaproducto_idcategoriaproducto_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.categoriaproducto_idcategoriaproducto_seq', 5, true);
          public          hihletamnmkwuq    false    216            d           0    0    cliente_idcliente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_idcliente_seq', 1, false);
          public          hihletamnmkwuq    false    274            e           0    0 (   cuenta_repartidor_idcuentamotorizado_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.cuenta_repartidor_idcuentamotorizado_seq', 35, true);
          public          hihletamnmkwuq    false    259            f           0    0 "   cuenta_usuario_idcuentausuario_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.cuenta_usuario_idcuentausuario_seq', 119, true);
          public          hihletamnmkwuq    false    262            g           0    0 !   cuentaempresa_idcuentaempresa_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.cuentaempresa_idcuentaempresa_seq', 80, true);
          public          hihletamnmkwuq    false    208            h           0    0    departamento_iddepartamento_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.departamento_iddepartamento_seq', 1, true);
          public          hihletamnmkwuq    false    233            i           0    0    distrito_iddistrito_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.distrito_iddistrito_seq', 1, true);
          public          hihletamnmkwuq    false    237            j           0    0 "   empresa_favorito_usuario_idefu_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.empresa_favorito_usuario_idefu_seq', 43, true);
          public          hihletamnmkwuq    false    272            k           0    0    empresa_idempresa_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.empresa_idempresa_seq', 84, true);
          public          hihletamnmkwuq    false    214            l           0    0 %   estado_delivery_idestado_delivery_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.estado_delivery_idestado_delivery_seq', 7, true);
          public          hihletamnmkwuq    false    246            m           0    0    estado_pago_idestago_pago_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.estado_pago_idestago_pago_seq', 2, true);
          public          hihletamnmkwuq    false    241            n           0    0    estado_venta_idestado_venta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.estado_venta_idestado_venta_seq', 10, true);
          public          hihletamnmkwuq    false    239            o           0    0    horario_idhorario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.horario_idhorario_seq', 22, true);
          public          hihletamnmkwuq    false    226            p           0    0 +   nombresubcategoria_idnombresubcategoria_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.nombresubcategoria_idnombresubcategoria_seq', 25, true);
          public          hihletamnmkwuq    false    210            q           0    0    orden_estado_general_idoeg_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.orden_estado_general_idoeg_seq', 997, true);
          public          hihletamnmkwuq    false    267            r           0    0    pedido_idpedido_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pedido_idpedido_seq', 1120, true);
          public          hihletamnmkwuq    false    220            s           0    0    producto_idproducto_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.producto_idproducto_seq', 1061, true);
          public          hihletamnmkwuq    false    218            t           0    0    provincia_idprovincia_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.provincia_idprovincia_seq', 1, true);
          public          hihletamnmkwuq    false    235            u           0    0    publicidad_idpublicidad_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.publicidad_idpublicidad_seq', 4, true);
          public          hihletamnmkwuq    false    231            v           0    0    repartidor_idrepartidor_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.repartidor_idrepartidor_seq', 35, true);
          public          hihletamnmkwuq    false    249            w           0    0    roles_idrole_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.roles_idrole_seq', 6, true);
          public          hihletamnmkwuq    false    251            x           0    0 -   subcategoriaempresa_idsubcategoriaempresa_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.subcategoriaempresa_idsubcategoriaempresa_seq', 33, true);
          public          hihletamnmkwuq    false    204            y           0    0    tipo_envio_empresa_idtee_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tipo_envio_empresa_idtee_seq', 60, true);
          public          hihletamnmkwuq    false    277            z           0    0    tipo_envio_idtipo_envio_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tipo_envio_idtipo_envio_seq', 3, true);
          public          hihletamnmkwuq    false    243            {           0    0    tipocuenta_idtipocuenta_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tipocuenta_idtipocuenta_seq', 3, true);
          public          hihletamnmkwuq    false    206            |           0    0    tipocuenta_idtipocuenta_seq1    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tipocuenta_idtipocuenta_seq1', 1, false);
          public          hihletamnmkwuq    false    264            }           0    0    tipopago_idtipopago_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tipopago_idtipopago_seq', 2, true);
          public          hihletamnmkwuq    false    224            ~           0    0    ubicacion_idubicacion_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ubicacion_idubicacion_seq', 181, true);
          public          hihletamnmkwuq    false    222                       0    0 $   usuario_general_idusuariogeneral_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.usuario_general_idusuariogeneral_seq', 146, true);
          public          hihletamnmkwuq    false    280            �           0    0    usuario_idusuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuario_idusuario_seq', 145, true);
          public          hihletamnmkwuq    false    212            �           0    0    venta_idventa_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.venta_idventa_seq', 951, true);
          public          hihletamnmkwuq    false    229                       2606    19402950 0   calificacion_servicio calificacion_servicio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.calificacion_servicio
    ADD CONSTRAINT calificacion_servicio_pkey PRIMARY KEY (idcalificacion_servicio);
 Z   ALTER TABLE ONLY public.calificacion_servicio DROP CONSTRAINT calificacion_servicio_pkey;
       public            hihletamnmkwuq    false    254                       2606    19402958 .   calificacion_usuario calificacion_usuario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.calificacion_usuario
    ADD CONSTRAINT calificacion_usuario_pkey PRIMARY KEY (idcalificacion_usuario);
 X   ALTER TABLE ONLY public.calificacion_usuario DROP CONSTRAINT calificacion_usuario_pkey;
       public            hihletamnmkwuq    false    256                       2606    19921317 :   categoria_producto_empresa categoria_producto_empresa_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.categoria_producto_empresa
    ADD CONSTRAINT categoria_producto_empresa_pkey PRIMARY KEY (idcategoriaproductoempresa);
 d   ALTER TABLE ONLY public.categoria_producto_empresa DROP CONSTRAINT categoria_producto_empresa_pkey;
       public            hihletamnmkwuq    false    271                       2606    20080067    cliente cliente_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            hihletamnmkwuq    false    275            �           2606    17347801 0   nombresubcategoria constraint_nombresubcategoria 
   CONSTRAINT     p   ALTER TABLE ONLY public.nombresubcategoria
    ADD CONSTRAINT constraint_nombresubcategoria UNIQUE (idempresa);
 Z   ALTER TABLE ONLY public.nombresubcategoria DROP CONSTRAINT constraint_nombresubcategoria;
       public            hihletamnmkwuq    false    211                       2606    19437372 (   cuenta_repartidor cuenta_repartidor_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.cuenta_repartidor
    ADD CONSTRAINT cuenta_repartidor_pkey PRIMARY KEY (idcuentarepartidor);
 R   ALTER TABLE ONLY public.cuenta_repartidor DROP CONSTRAINT cuenta_repartidor_pkey;
       public            hihletamnmkwuq    false    260                       2606    19437488 "   cuenta_usuario cuenta_usuario_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.cuenta_usuario
    ADD CONSTRAINT cuenta_usuario_pkey PRIMARY KEY (idcuentausuario);
 L   ALTER TABLE ONLY public.cuenta_usuario DROP CONSTRAINT cuenta_usuario_pkey;
       public            hihletamnmkwuq    false    263            �           2606    17336961    departamento departamento_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (iddepartamento);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public            hihletamnmkwuq    false    234            �           2606    17336982    distrito distrito_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.distrito
    ADD CONSTRAINT distrito_pkey PRIMARY KEY (iddistrito);
 @   ALTER TABLE ONLY public.distrito DROP CONSTRAINT distrito_pkey;
       public            hihletamnmkwuq    false    238                       2606    20080049 6   empresa_favorito_usuario empresa_favorito_usuario_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.empresa_favorito_usuario
    ADD CONSTRAINT empresa_favorito_usuario_pkey PRIMARY KEY (idefu);
 `   ALTER TABLE ONLY public.empresa_favorito_usuario DROP CONSTRAINT empresa_favorito_usuario_pkey;
       public            hihletamnmkwuq    false    273            �           2606    18638164 $   estado_delivery estado_delivery_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.estado_delivery
    ADD CONSTRAINT estado_delivery_pkey PRIMARY KEY (idestado_delivery);
 N   ALTER TABLE ONLY public.estado_delivery DROP CONSTRAINT estado_delivery_pkey;
       public            hihletamnmkwuq    false    247                       2606    19881472 "   estado_general estado_general_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.estado_general
    ADD CONSTRAINT estado_general_pkey PRIMARY KEY (idestadogeneral);
 L   ALTER TABLE ONLY public.estado_general DROP CONSTRAINT estado_general_pkey;
       public            hihletamnmkwuq    false    266            �           2606    18342224    estado_pago estado_pago_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.estado_pago
    ADD CONSTRAINT estado_pago_pkey PRIMARY KEY (idestado_pago);
 F   ALTER TABLE ONLY public.estado_pago DROP CONSTRAINT estado_pago_pkey;
       public            hihletamnmkwuq    false    242            �           2606    18311766     estado_empresa estado_venta_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.estado_empresa
    ADD CONSTRAINT estado_venta_pkey PRIMARY KEY (idestado_empresa);
 J   ALTER TABLE ONLY public.estado_empresa DROP CONSTRAINT estado_venta_pkey;
       public            hihletamnmkwuq    false    240                       2606    19881543 .   orden_estado_general orden_estado_general_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.orden_estado_general
    ADD CONSTRAINT orden_estado_general_pkey PRIMARY KEY (idoeg);
 X   ALTER TABLE ONLY public.orden_estado_general DROP CONSTRAINT orden_estado_general_pkey;
       public            hihletamnmkwuq    false    268                       2606    19903974 6   orden_estado_restaurante orden_estado_restaurante_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.orden_estado_restaurante
    ADD CONSTRAINT orden_estado_restaurante_pkey PRIMARY KEY (idestado_venta, idventa);
 `   ALTER TABLE ONLY public.orden_estado_restaurante DROP CONSTRAINT orden_estado_restaurante_pkey;
       public            hihletamnmkwuq    false    269    269            �           2606    13858191 $   categoriaempresa pk_categoriaempresa 
   CONSTRAINT     r   ALTER TABLE ONLY public.categoriaempresa
    ADD CONSTRAINT pk_categoriaempresa PRIMARY KEY (idcategoriaempresa);
 N   ALTER TABLE ONLY public.categoriaempresa DROP CONSTRAINT pk_categoriaempresa;
       public            hihletamnmkwuq    false    203            �           2606    13858286 &   categoriaproducto pk_categoriaproducto 
   CONSTRAINT     u   ALTER TABLE ONLY public.categoriaproducto
    ADD CONSTRAINT pk_categoriaproducto PRIMARY KEY (idcategoriaproducto);
 P   ALTER TABLE ONLY public.categoriaproducto DROP CONSTRAINT pk_categoriaproducto;
       public            hihletamnmkwuq    false    217            �           2606    13858220    cuenta_empresa pk_cuentaempresa 
   CONSTRAINT     j   ALTER TABLE ONLY public.cuenta_empresa
    ADD CONSTRAINT pk_cuentaempresa PRIMARY KEY (idcuentaempresa);
 I   ALTER TABLE ONLY public.cuenta_empresa DROP CONSTRAINT pk_cuentaempresa;
       public            hihletamnmkwuq    false    209            �           2606    13858258    empresa pk_empresa 
   CONSTRAINT     W   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT pk_empresa PRIMARY KEY (idempresa);
 <   ALTER TABLE ONLY public.empresa DROP CONSTRAINT pk_empresa;
       public            hihletamnmkwuq    false    215            �           2606    13858347    horario pk_horario 
   CONSTRAINT     W   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT pk_horario PRIMARY KEY (idhorario);
 <   ALTER TABLE ONLY public.horario DROP CONSTRAINT pk_horario;
       public            hihletamnmkwuq    false    227            �           2606    13858236 (   nombresubcategoria pk_nombresubcategoria 
   CONSTRAINT     x   ALTER TABLE ONLY public.nombresubcategoria
    ADD CONSTRAINT pk_nombresubcategoria PRIMARY KEY (idnombresubcategoria);
 R   ALTER TABLE ONLY public.nombresubcategoria DROP CONSTRAINT pk_nombresubcategoria;
       public            hihletamnmkwuq    false    211            �           2606    13858315    pedido pk_pedido 
   CONSTRAINT     T   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pk_pedido PRIMARY KEY (idpedido);
 :   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pk_pedido;
       public            hihletamnmkwuq    false    221            �           2606    13858297    producto pk_producto 
   CONSTRAINT     Z   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT pk_producto PRIMARY KEY (idproducto);
 >   ALTER TABLE ONLY public.producto DROP CONSTRAINT pk_producto;
       public            hihletamnmkwuq    false    219            �           2606    13858199 *   subcategoriaempresa pk_subcategoriaempresa 
   CONSTRAINT     {   ALTER TABLE ONLY public.subcategoriaempresa
    ADD CONSTRAINT pk_subcategoriaempresa PRIMARY KEY (idsubcategoriaempresa);
 T   ALTER TABLE ONLY public.subcategoriaempresa DROP CONSTRAINT pk_subcategoriaempresa;
       public            hihletamnmkwuq    false    205            �           2606    13858212 !   tipo_cuenta_empresa pk_tipocuenta 
   CONSTRAINT     i   ALTER TABLE ONLY public.tipo_cuenta_empresa
    ADD CONSTRAINT pk_tipocuenta PRIMARY KEY (idtipocuenta);
 K   ALTER TABLE ONLY public.tipo_cuenta_empresa DROP CONSTRAINT pk_tipocuenta;
       public            hihletamnmkwuq    false    207            �           2606    13858339    tipopago pk_tipopago 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tipopago
    ADD CONSTRAINT pk_tipopago PRIMARY KEY (idtipopago);
 >   ALTER TABLE ONLY public.tipopago DROP CONSTRAINT pk_tipopago;
       public            hihletamnmkwuq    false    225            �           2606    13858326    ubicacion pk_ubicacion 
   CONSTRAINT     ]   ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT pk_ubicacion PRIMARY KEY (idubicacion);
 @   ALTER TABLE ONLY public.ubicacion DROP CONSTRAINT pk_ubicacion;
       public            hihletamnmkwuq    false    223            �           2606    13858247    usuario pk_usuario 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (idusuario);
 <   ALTER TABLE ONLY public.usuario DROP CONSTRAINT pk_usuario;
       public            hihletamnmkwuq    false    213            �           2606    13858368    venta pk_venta 
   CONSTRAINT     Q   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT pk_venta PRIMARY KEY (idventa);
 8   ALTER TABLE ONLY public.venta DROP CONSTRAINT pk_venta;
       public            hihletamnmkwuq    false    230            �           2606    17336969    provincia provincia_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT provincia_pkey PRIMARY KEY (idprovincia);
 B   ALTER TABLE ONLY public.provincia DROP CONSTRAINT provincia_pkey;
       public            hihletamnmkwuq    false    236            �           2606    16689614    publicidad publicidad_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.publicidad
    ADD CONSTRAINT publicidad_pkey PRIMARY KEY (idpublicidad);
 D   ALTER TABLE ONLY public.publicidad DROP CONSTRAINT publicidad_pkey;
       public            hihletamnmkwuq    false    232                        2606    18638213    repartidor repartidor_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.repartidor
    ADD CONSTRAINT repartidor_pkey PRIMARY KEY (idrepartidor);
 D   ALTER TABLE ONLY public.repartidor DROP CONSTRAINT repartidor_pkey;
       public            hihletamnmkwuq    false    250                       2606    19402747    roles roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (idrole);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            hihletamnmkwuq    false    252                       2606    19437438 "   tarifa_empresa tarifa_empresa_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tarifa_empresa
    ADD CONSTRAINT tarifa_empresa_pkey PRIMARY KEY (idtarifa);
 L   ALTER TABLE ONLY public.tarifa_empresa DROP CONSTRAINT tarifa_empresa_pkey;
       public            hihletamnmkwuq    false    261                       2606    19436755 (   tarifa_repartidor tarifa_repartidor_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarifa_repartidor
    ADD CONSTRAINT tarifa_repartidor_pkey PRIMARY KEY (idtarifa);
 R   ALTER TABLE ONLY public.tarifa_repartidor DROP CONSTRAINT tarifa_repartidor_pkey;
       public            hihletamnmkwuq    false    257            
           2606    19436763 2   tipo_cuenta_repartidor tipo_cuenta_repartidor_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.tipo_cuenta_repartidor
    ADD CONSTRAINT tipo_cuenta_repartidor_pkey PRIMARY KEY (idtipocuenta);
 \   ALTER TABLE ONLY public.tipo_cuenta_repartidor DROP CONSTRAINT tipo_cuenta_repartidor_pkey;
       public            hihletamnmkwuq    false    258                        2606    20097360 *   tipo_envio_empresa tipo_envio_empresa_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.tipo_envio_empresa
    ADD CONSTRAINT tipo_envio_empresa_pkey PRIMARY KEY (idtee);
 T   ALTER TABLE ONLY public.tipo_envio_empresa DROP CONSTRAINT tipo_envio_empresa_pkey;
       public            hihletamnmkwuq    false    278            �           2606    18551367    tipo_envio tipo_envio_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tipo_envio
    ADD CONSTRAINT tipo_envio_pkey PRIMARY KEY (idtipo_envio);
 D   ALTER TABLE ONLY public.tipo_envio DROP CONSTRAINT tipo_envio_pkey;
       public            hihletamnmkwuq    false    244                       2606    19438322    tipocuenta tipocuenta_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tipocuenta
    ADD CONSTRAINT tipocuenta_pkey PRIMARY KEY (idtipocuenta);
 D   ALTER TABLE ONLY public.tipocuenta DROP CONSTRAINT tipocuenta_pkey;
       public            hihletamnmkwuq    false    265            "           2606    20141817 +   usuario_general uka5ocye92hcaa7xvcvu5apc0tl 
   CONSTRAINT     h   ALTER TABLE ONLY public.usuario_general
    ADD CONSTRAINT uka5ocye92hcaa7xvcvu5apc0tl UNIQUE (correo);
 U   ALTER TABLE ONLY public.usuario_general DROP CONSTRAINT uka5ocye92hcaa7xvcvu5apc0tl;
       public            hihletamnmkwuq    false    281            $           2606    20141392 $   usuario_general usuario_general_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.usuario_general
    ADD CONSTRAINT usuario_general_pkey PRIMARY KEY (idusuariogeneral);
 N   ALTER TABLE ONLY public.usuario_general DROP CONSTRAINT usuario_general_pkey;
       public            hihletamnmkwuq    false    281            &           2606    20141815 .   usuariogeneral_roles usuariogeneral_roles_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuariogeneral_roles
    ADD CONSTRAINT usuariogeneral_roles_pkey PRIMARY KEY (idusuariogeneral, idrole);
 X   ALTER TABLE ONLY public.usuariogeneral_roles DROP CONSTRAINT usuariogeneral_roles_pkey;
       public            hihletamnmkwuq    false    282    282            K           2606    20199674 :   calificacion_servicio calificacion_servicio_idusuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.calificacion_servicio
    ADD CONSTRAINT calificacion_servicio_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES public.usuario_general(idusuariogeneral);
 d   ALTER TABLE ONLY public.calificacion_servicio DROP CONSTRAINT calificacion_servicio_idusuario_fkey;
       public          hihletamnmkwuq    false    4132    254    281            L           2606    19449364 8   calificacion_servicio calificacion_servicio_idventa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.calificacion_servicio
    ADD CONSTRAINT calificacion_servicio_idventa_fkey FOREIGN KEY (idventa) REFERENCES public.venta(idventa);
 b   ALTER TABLE ONLY public.calificacion_servicio DROP CONSTRAINT calificacion_servicio_idventa_fkey;
       public          hihletamnmkwuq    false    254    4078    230            M           2606    20199679 8   calificacion_usuario calificacion_usuario_idusuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.calificacion_usuario
    ADD CONSTRAINT calificacion_usuario_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES public.usuario_general(idusuariogeneral);
 b   ALTER TABLE ONLY public.calificacion_usuario DROP CONSTRAINT calificacion_usuario_idusuario_fkey;
       public          hihletamnmkwuq    false    281    256    4132            N           2606    19449384 6   calificacion_usuario calificacion_usuario_idventa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.calificacion_usuario
    ADD CONSTRAINT calificacion_usuario_idventa_fkey FOREIGN KEY (idventa) REFERENCES public.venta(idventa);
 `   ALTER TABLE ONLY public.calificacion_usuario DROP CONSTRAINT calificacion_usuario_idventa_fkey;
       public          hihletamnmkwuq    false    230    256    4078            7           2606    18342284    venta constraintestadopago_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT constraintestadopago_fk FOREIGN KEY (idestado_pago) REFERENCES public.estado_pago(idestado_pago) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.venta DROP CONSTRAINT constraintestadopago_fk;
       public          hihletamnmkwuq    false    4090    230    242            2           2606    18502808    pedido constraintidempresa_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT constraintidempresa_fk FOREIGN KEY (idempresa) REFERENCES public.empresa(idempresa);
 G   ALTER TABLE ONLY public.pedido DROP CONSTRAINT constraintidempresa_fk;
       public          hihletamnmkwuq    false    215    221    4064            9           2606    18312367    venta constraintidventa_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT constraintidventa_fk FOREIGN KEY (idestado_empresa) REFERENCES public.estado_empresa(idestado_empresa) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.venta DROP CONSTRAINT constraintidventa_fk;
       public          hihletamnmkwuq    false    4088    230    240            (           2606    20079920 ,   cuenta_empresa cuenta_empresa_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuenta_empresa
    ADD CONSTRAINT cuenta_empresa_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(idempresa);
 V   ALTER TABLE ONLY public.cuenta_empresa DROP CONSTRAINT cuenta_empresa_idempresa_fkey;
       public          hihletamnmkwuq    false    4064    209    215            O           2606    20079994 5   cuenta_repartidor cuenta_repartidor_idrepartidor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuenta_repartidor
    ADD CONSTRAINT cuenta_repartidor_idrepartidor_fkey FOREIGN KEY (idrepartidor) REFERENCES public.repartidor(idrepartidor);
 _   ALTER TABLE ONLY public.cuenta_repartidor DROP CONSTRAINT cuenta_repartidor_idrepartidor_fkey;
       public          hihletamnmkwuq    false    260    4096    250            P           2606    19437373 1   cuenta_repartidor cuenta_repartidor_idtarifa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuenta_repartidor
    ADD CONSTRAINT cuenta_repartidor_idtarifa_fkey FOREIGN KEY (idtarifa) REFERENCES public.tarifa_repartidor(idtarifa);
 [   ALTER TABLE ONLY public.cuenta_repartidor DROP CONSTRAINT cuenta_repartidor_idtarifa_fkey;
       public          hihletamnmkwuq    false    4104    257    260            Q           2606    19437378 5   cuenta_repartidor cuenta_repartidor_idtipocuenta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuenta_repartidor
    ADD CONSTRAINT cuenta_repartidor_idtipocuenta_fkey FOREIGN KEY (idtipocuenta) REFERENCES public.tipo_cuenta_repartidor(idtipocuenta);
 _   ALTER TABLE ONLY public.cuenta_repartidor DROP CONSTRAINT cuenta_repartidor_idtipocuenta_fkey;
       public          hihletamnmkwuq    false    260    258    4106            R           2606    20079999 ,   cuenta_usuario cuenta_usuario_idusuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuenta_usuario
    ADD CONSTRAINT cuenta_usuario_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);
 V   ALTER TABLE ONLY public.cuenta_usuario DROP CONSTRAINT cuenta_usuario_idusuario_fkey;
       public          hihletamnmkwuq    false    4062    263    213            *           2606    19437441 *   cuenta_empresa cuentaempresa_idtarifa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuenta_empresa
    ADD CONSTRAINT cuentaempresa_idtarifa_fkey FOREIGN KEY (idtarifa) REFERENCES public.tarifa_empresa(idtarifa);
 T   ALTER TABLE ONLY public.cuenta_empresa DROP CONSTRAINT cuentaempresa_idtarifa_fkey;
       public          hihletamnmkwuq    false    4110    261    209            B           2606    17336983 "   distrito distrito_idprovincia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.distrito
    ADD CONSTRAINT distrito_idprovincia_fkey FOREIGN KEY (idprovincia) REFERENCES public.provincia(idprovincia);
 L   ALTER TABLE ONLY public.distrito DROP CONSTRAINT distrito_idprovincia_fkey;
       public          hihletamnmkwuq    false    236    4084    238            U           2606    20080050 @   empresa_favorito_usuario empresa_favorito_usuario_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_favorito_usuario
    ADD CONSTRAINT empresa_favorito_usuario_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(idempresa);
 j   ALTER TABLE ONLY public.empresa_favorito_usuario DROP CONSTRAINT empresa_favorito_usuario_idempresa_fkey;
       public          hihletamnmkwuq    false    4064    273    215            V           2606    20080055 @   empresa_favorito_usuario empresa_favorito_usuario_idusuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_favorito_usuario
    ADD CONSTRAINT empresa_favorito_usuario_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);
 j   ALTER TABLE ONLY public.empresa_favorito_usuario DROP CONSTRAINT empresa_favorito_usuario_idusuario_fkey;
       public          hihletamnmkwuq    false    273    213    4062            -           2606    17345171    empresa empresa_iddistrito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresa_iddistrito_fkey FOREIGN KEY (iddistrito) REFERENCES public.distrito(iddistrito);
 I   ALTER TABLE ONLY public.empresa DROP CONSTRAINT empresa_iddistrito_fkey;
       public          hihletamnmkwuq    false    4086    215    238            .           2606    20142615 %   empresa empresa_idusuariogeneral_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresa_idusuariogeneral_fkey FOREIGN KEY (idusuariogeneral) REFERENCES public.usuario_general(idusuariogeneral);
 O   ALTER TABLE ONLY public.empresa DROP CONSTRAINT empresa_idusuariogeneral_fkey;
       public          hihletamnmkwuq    false    281    215    4132            Y           2606    20141818 0   usuariogeneral_roles fk1l8q4rq4mlkl8xkgrjxe56h9r    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuariogeneral_roles
    ADD CONSTRAINT fk1l8q4rq4mlkl8xkgrjxe56h9r FOREIGN KEY (idrole) REFERENCES public.roles(idrole);
 Z   ALTER TABLE ONLY public.usuariogeneral_roles DROP CONSTRAINT fk1l8q4rq4mlkl8xkgrjxe56h9r;
       public          hihletamnmkwuq    false    282    252    4098            )           2606    13858221 -   cuenta_empresa fk_cuentaem_reference_tipocuen    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuenta_empresa
    ADD CONSTRAINT fk_cuentaem_reference_tipocuen FOREIGN KEY (idtipocuenta) REFERENCES public.tipo_cuenta_empresa(idtipocuenta) ON UPDATE RESTRICT ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public.cuenta_empresa DROP CONSTRAINT fk_cuentaem_reference_tipocuen;
       public          hihletamnmkwuq    false    209    4054    207            /           2606    13858259 %   empresa fk_empresa_reference_subcateg    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT fk_empresa_reference_subcateg FOREIGN KEY (idsubcategoriaempresa) REFERENCES public.subcategoriaempresa(idsubcategoriaempresa) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.empresa DROP CONSTRAINT fk_empresa_reference_subcateg;
       public          hihletamnmkwuq    false    205    4052    215            1           2606    13858303 &   producto fk_producto_reference_empresa    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_producto_reference_empresa FOREIGN KEY (idempresa) REFERENCES public.empresa(idempresa) ON UPDATE RESTRICT ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.producto DROP CONSTRAINT fk_producto_reference_empresa;
       public          hihletamnmkwuq    false    219    215    4064            5           2606    13858351 +   registropedido fk_registro_reference_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY public.registropedido
    ADD CONSTRAINT fk_registro_reference_pedido FOREIGN KEY (idpedido) REFERENCES public.pedido(idpedido) ON UPDATE RESTRICT ON DELETE RESTRICT;
 U   ALTER TABLE ONLY public.registropedido DROP CONSTRAINT fk_registro_reference_pedido;
       public          hihletamnmkwuq    false    4070    221    228            '           2606    13858200 2   subcategoriaempresa fk_subcateg_reference_categori    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategoriaempresa
    ADD CONSTRAINT fk_subcateg_reference_categori FOREIGN KEY (idcategoriaempresa) REFERENCES public.categoriaempresa(idcategoriaempresa) ON UPDATE RESTRICT ON DELETE RESTRICT;
 \   ALTER TABLE ONLY public.subcategoriaempresa DROP CONSTRAINT fk_subcateg_reference_categori;
       public          hihletamnmkwuq    false    205    203    4050            3           2606    13858327 '   ubicacion fk_ubicacio_reference_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT fk_ubicacio_reference_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.ubicacion DROP CONSTRAINT fk_ubicacio_reference_usuario;
       public          hihletamnmkwuq    false    4062    223    213            ;           2606    13858369     venta fk_venta_reference_horario    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT fk_venta_reference_horario FOREIGN KEY (idhorario) REFERENCES public.horario(idhorario) ON UPDATE RESTRICT ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.venta DROP CONSTRAINT fk_venta_reference_horario;
       public          hihletamnmkwuq    false    230    227    4076            =           2606    13858379    venta fk_venta_reference_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT fk_venta_reference_pedido FOREIGN KEY (idpedido) REFERENCES public.pedido(idpedido) ON UPDATE RESTRICT ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.venta DROP CONSTRAINT fk_venta_reference_pedido;
       public          hihletamnmkwuq    false    230    221    4070            >           2606    13858384 !   venta fk_venta_reference_tipopago    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT fk_venta_reference_tipopago FOREIGN KEY (idtipopago) REFERENCES public.tipopago(idtipopago) ON UPDATE RESTRICT ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.venta DROP CONSTRAINT fk_venta_reference_tipopago;
       public          hihletamnmkwuq    false    230    4074    225            <           2606    13858374 !   venta fk_venta_reference_ubicacio    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT fk_venta_reference_ubicacio FOREIGN KEY (idubicacion) REFERENCES public.ubicacion(idubicacion) ON UPDATE RESTRICT ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.venta DROP CONSTRAINT fk_venta_reference_ubicacio;
       public          hihletamnmkwuq    false    230    223    4072            Z           2606    20141823 0   usuariogeneral_roles fko2pvhhm6xubajcdk029w6y393    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuariogeneral_roles
    ADD CONSTRAINT fko2pvhhm6xubajcdk029w6y393 FOREIGN KEY (idusuariogeneral) REFERENCES public.usuario_general(idusuariogeneral);
 Z   ALTER TABLE ONLY public.usuariogeneral_roles DROP CONSTRAINT fko2pvhhm6xubajcdk029w6y393;
       public          hihletamnmkwuq    false    4132    282    281            +           2606    16658331 4   nombresubcategoria nombresubcategoria_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nombresubcategoria
    ADD CONSTRAINT nombresubcategoria_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(idempresa);
 ^   ALTER TABLE ONLY public.nombresubcategoria DROP CONSTRAINT nombresubcategoria_idempresa_fkey;
       public          hihletamnmkwuq    false    215    211    4064            G           2606    18638186 B   orden_estado_delivery orden_estado_delivery_idestado_delivery_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden_estado_delivery
    ADD CONSTRAINT orden_estado_delivery_idestado_delivery_fkey FOREIGN KEY (idestado_delivery) REFERENCES public.estado_delivery(idestado_delivery);
 l   ALTER TABLE ONLY public.orden_estado_delivery DROP CONSTRAINT orden_estado_delivery_idestado_delivery_fkey;
       public          hihletamnmkwuq    false    4094    248    247            H           2606    18638214 =   orden_estado_delivery orden_estado_delivery_idrepartidor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden_estado_delivery
    ADD CONSTRAINT orden_estado_delivery_idrepartidor_fkey FOREIGN KEY (idrepartidor) REFERENCES public.repartidor(idrepartidor);
 g   ALTER TABLE ONLY public.orden_estado_delivery DROP CONSTRAINT orden_estado_delivery_idrepartidor_fkey;
       public          hihletamnmkwuq    false    250    4096    248            F           2606    18638181 8   orden_estado_delivery orden_estado_delivery_idventa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden_estado_delivery
    ADD CONSTRAINT orden_estado_delivery_idventa_fkey FOREIGN KEY (idventa) REFERENCES public.venta(idventa);
 b   ALTER TABLE ONLY public.orden_estado_delivery DROP CONSTRAINT orden_estado_delivery_idventa_fkey;
       public          hihletamnmkwuq    false    230    4078    248            E           2606    19881699 ?   orden_estado_empresa orden_estado_empresa_idestado_empresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden_estado_empresa
    ADD CONSTRAINT orden_estado_empresa_idestado_empresa_fkey FOREIGN KEY (idestado_empresa) REFERENCES public.estado_empresa(idestado_empresa);
 i   ALTER TABLE ONLY public.orden_estado_empresa DROP CONSTRAINT orden_estado_empresa_idestado_empresa_fkey;
       public          hihletamnmkwuq    false    4088    245    240            S           2606    19881544 >   orden_estado_general orden_estado_general_idestadogeneral_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden_estado_general
    ADD CONSTRAINT orden_estado_general_idestadogeneral_fkey FOREIGN KEY (idestadogeneral) REFERENCES public.estado_general(idestadogeneral);
 h   ALTER TABLE ONLY public.orden_estado_general DROP CONSTRAINT orden_estado_general_idestadogeneral_fkey;
       public          hihletamnmkwuq    false    4116    266    268            T           2606    19881549 6   orden_estado_general orden_estado_general_idventa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden_estado_general
    ADD CONSTRAINT orden_estado_general_idventa_fkey FOREIGN KEY (idventa) REFERENCES public.venta(idventa);
 `   ALTER TABLE ONLY public.orden_estado_general DROP CONSTRAINT orden_estado_general_idventa_fkey;
       public          hihletamnmkwuq    false    4078    230    268            D           2606    19881460 <   orden_estado_empresa orden_estado_restaurante_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden_estado_empresa
    ADD CONSTRAINT orden_estado_restaurante_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(idempresa);
 f   ALTER TABLE ONLY public.orden_estado_empresa DROP CONSTRAINT orden_estado_restaurante_idempresa_fkey;
       public          hihletamnmkwuq    false    245    4064    215            C           2606    18638127 :   orden_estado_empresa orden_estado_restaurante_idventa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden_estado_empresa
    ADD CONSTRAINT orden_estado_restaurante_idventa_fkey FOREIGN KEY (idventa) REFERENCES public.venta(idventa);
 d   ALTER TABLE ONLY public.orden_estado_empresa DROP CONSTRAINT orden_estado_restaurante_idventa_fkey;
       public          hihletamnmkwuq    false    4078    230    245            0           2606    19921803 *   producto producto_idcategoriaproducto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_idcategoriaproducto_fkey FOREIGN KEY (idcategoriaproducto) REFERENCES public.categoria_producto_empresa(idcategoriaproductoempresa);
 T   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_idcategoriaproducto_fkey;
       public          hihletamnmkwuq    false    4122    271    219            A           2606    17336970 '   provincia provincia_iddepartamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT provincia_iddepartamento_fkey FOREIGN KEY (iddepartamento) REFERENCES public.departamento(iddepartamento);
 Q   ALTER TABLE ONLY public.provincia DROP CONSTRAINT provincia_iddepartamento_fkey;
       public          hihletamnmkwuq    false    236    4082    234            4           2606    20680744 -   registropedido registropedido_idproducto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registropedido
    ADD CONSTRAINT registropedido_idproducto_fkey FOREIGN KEY (idproducto) REFERENCES public.producto(idproducto) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.registropedido DROP CONSTRAINT registropedido_idproducto_fkey;
       public          hihletamnmkwuq    false    219    4068    228            I           2606    20945697 $   repartidor repartidor_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.repartidor
    ADD CONSTRAINT repartidor_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(idempresa);
 N   ALTER TABLE ONLY public.repartidor DROP CONSTRAINT repartidor_idempresa_fkey;
       public          hihletamnmkwuq    false    4064    215    250            J           2606    20143026 +   repartidor repartidor_idusuariogeneral_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.repartidor
    ADD CONSTRAINT repartidor_idusuariogeneral_fkey FOREIGN KEY (idusuariogeneral) REFERENCES public.usuario_general(idusuariogeneral);
 U   ALTER TABLE ONLY public.repartidor DROP CONSTRAINT repartidor_idusuariogeneral_fkey;
       public          hihletamnmkwuq    false    281    250    4132            W           2606    20097361 4   tipo_envio_empresa tipo_envio_empresa_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipo_envio_empresa
    ADD CONSTRAINT tipo_envio_empresa_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(idempresa);
 ^   ALTER TABLE ONLY public.tipo_envio_empresa DROP CONSTRAINT tipo_envio_empresa_idempresa_fkey;
       public          hihletamnmkwuq    false    4064    278    215            X           2606    20097366 6   tipo_envio_empresa tipo_envio_empresa_idtipoenvio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipo_envio_empresa
    ADD CONSTRAINT tipo_envio_empresa_idtipoenvio_fkey FOREIGN KEY (idtipoenvio) REFERENCES public.tipo_envio(idtipo_envio);
 `   ALTER TABLE ONLY public.tipo_envio_empresa DROP CONSTRAINT tipo_envio_empresa_idtipoenvio_fkey;
       public          hihletamnmkwuq    false    4092    278    244            ,           2606    20141763 %   usuario usuario_idusuariogeneral_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_idusuariogeneral_fkey FOREIGN KEY (idusuariogeneral) REFERENCES public.usuario_general(idusuariogeneral);
 O   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_idusuariogeneral_fkey;
       public          hihletamnmkwuq    false    4132    213    281            6           2606    19263377 "   venta venta_idestado_delivery_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_idestado_delivery_fkey FOREIGN KEY (idestado_delivery) REFERENCES public.estado_delivery(idestado_delivery);
 L   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_idestado_delivery_fkey;
       public          hihletamnmkwuq    false    4094    247    230            ?           2606    19904037 !   venta venta_idestado_empresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_idestado_empresa_fkey FOREIGN KEY (idestado_empresa) REFERENCES public.estado_empresa(idestado_empresa);
 K   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_idestado_empresa_fkey;
       public          hihletamnmkwuq    false    240    230    4088            @           2606    19881706 !   venta venta_idestado_general_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_idestado_general_fkey FOREIGN KEY (idestado_general) REFERENCES public.estado_general(idestadogeneral);
 K   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_idestado_general_fkey;
       public          hihletamnmkwuq    false    266    4116    230            :           2606    18551368    venta venta_idtipo_envio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_idtipo_envio_fkey FOREIGN KEY (idtipo_envio) REFERENCES public.tipo_envio(idtipo_envio);
 G   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_idtipo_envio_fkey;
       public          hihletamnmkwuq    false    244    230    4092            8           2606    18655284    venta venta_idtipo_envio_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_idtipo_envio_fkey1 FOREIGN KEY (idtipo_envio) REFERENCES public.tipo_envio(idtipo_envio);
 H   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_idtipo_envio_fkey1;
       public          hihletamnmkwuq    false    244    4092    230                  x�340�4��45����� yk            x�340�4�441�45����� ��      )   $  x�u�;n[A��)|cw� C�d�	m�� ?����8]�2�"хy��I��������v�~I�������x0��1Ϙ�Ǽ`^�y}�[��܎���=wb�)xpJ�l��xt� ��
��W 	o���;�� 	� n�í�����m x�M ���s
c�@޴�� Hx���>�H� ��	��%xxIa����b$_2���
�T1ha��[�N"�D&���#�Ե�}�T#q��Iܠ1�$b�v�o��I�`���$q�I�����ӌ�Z&q�VHĠ������~Z'�A"��z$q��v���o$n�3��B"�D��-�;�1�$n0"����}#��L����A%���}�N"�D&��H�3�w�47��Dn�B"�DZ�}'�N"�D&��!�H�����o��H����$��H5*�j�U�1�N��H5&�h�({v��m<��V�ۓ�l��=��Vړ�lՓ�;r=�����_�����.��v9�������E?����x=��岦o���r��ϯ���46|-      �   Y  x��T���0���p�T+�%ٲ� �!)�	�Ti(��g[��=�>+ߐ��^Ŧ�F�I���ū���o����ؤ�Xn\\���}v0����6:�����Ēb�x���-�類�B��1��C���Mn�v������	a�¶�-��\�g�ׯq���(�n��3��fA�c����gF�d�$�G:�K�����W]-�;L7��]i��c��syg����f���+��%�a�t��Du�9ؙn(7L/�Uך+�n���8)f�X��HC7��
�=���ײ����˯���b��M���W oσ/�︙�i��4�LO#gz��v����[H����if2 	A��+��s�e�k�Y�C�z5jf�UL�� �0��U���xP��Ձ��pFG��iL.�Env��d��!uB��i�~0LnN�tFř�\H��dzU��]���d�����R\�d�5�����kA.�pr��%Gu�hz`�Z��V�@;��uu����U��hJ��I���!����f#����3ə\���vmj���ٍ��ʈ�I�<�9*�#�=�N�Iu�P�j���� B      �   H   x�3�(�O)M.�/V(�/(�I,J-��2��OK-*I2�9�KR��29�L��F�\�H\cN�=... s,�      -      x������ � �      �   �   x���1��0��z|�\�����!�iVJ������bFI��_Ac�O ���삨u�� ��4�����:�e���u$9��Mn�#}ob�=�.�|Ɉ�~�шLو�&&#f���(4Q��4Q��H�VC��R3ZI�e{�v]���\1��z(��<G���oO��ut�_�#|�:9�ǯ�#|�Z������ዅ�Xx�����1¿��Bx�R\�         T   x�u��� D�s��t��H-)#�O��āӇ��}:+F%��P�o�5�-ET�e��6*���y��W{������ڗ���<�� ?      !   �   x�U��!E���
��?�������HQ��H����TTn��X��i��D^�d���(l�%2����Y!�޷Hr�
,Z���%�P��b%LJ�-���q�^]��8�y�ѐ�s�`�C��_IoXS)e����<�b�D/������>��8�            x�3����M����� op            x�3�tJ,*J�K��4����� /�O      �      x���o�6ǟ���/�S%���Ő��aŊ��^g���P�FRN��~G9��6Y����FdGE���Kމ4�A<�V -y&��߃	��@N'|ky"tJaɽ�m�� �@���R@zq�'��_h�"#Hl��}Je|�d���ӭ��g��s}��ˆ��{mE�r����J��$������z��j�	�K=�������MyBz9LNۀ,��$z��߱m���y�6B��u�Z�(j��^�@;��̺���F��d+̉�a-�8��lh$�؊!��C4�9�Fa:Ѹ�Ӻ=If�X�]y!�����{�t��(<�S��i1�"/
De�9O�< x�E���_Mf=	�w��J��!�u҈X��.�k��J�(�bBW�B�u��*�cG;j7_�t4Zw~������7�񨍃|@�������gbx�Wm��E��U��.�V,�����/�=Yp�E�wK�Ne^�|'��,�����#�C�e�9�E�L8b���� G4�h��Q�%��H$?�",ς��U��U��f�ʋ*8��������qV��ʠ��ފS0���X�����F6�6�i=x4�;����4at%��-��4�����{�Q�pY�_UR�"gi��]�H?�7��������η��Ќ�v�1�#�I���|���td=Ħ���v�*�:h6W#|f�]H��h��1��Y�Rl�T^^
#����z�� �ċ�j��H����d=���G����Atrm:O�U����F�i��L��V��i>�<���J��9���%u���H�������P�����d7����8y�;N���-=�Fc�F���~��)��"J�����D���7 h1�k����$D�g�E��1h1�feY��<��,/�ͱ�Is<ׯ2l��-٫�|�	ґ-6���9�\�-)Zl�Wb�g���x7��(c��l�QޢM���<��n�NoS[�!�~�����>r��`5d�/Jn%F��S�9R�%�W��E�X`�Q4�}h}���N1��J��U�E��fm��J�' ���[��ae������^�܂��q|�YɈK�|]�(�f��$L�$r�����	� ;��2�-��Al#'�/�WӃ�NH�&)=F����9^?`�7@~�V,*��g�"�0}<�Ev?Dr��+�0��Y�1�e��ZhUX"�c����c;ZO�v9�C��0�]�g'<z=��/�)�%�hB16椪���Lި�Ӆ�M�TV�/���pz��i)���2��{��4d�x~���^���,[V��ʐ��+��c��RB��:!T!+��-���[��U��w��)8����5[;,duP�eU+��'�\`�@���q�Hi�����=�k�٬��-h�'ͯ�frv3�������.?i|�i��r��}`�Y����xj��js�'㗙�06��rr��EF飮?�P�P�Ђ��K|l�Z�����������?����,�?�0���t      +   (   x�34�42�4����f�FF
��V�VF�\1z\\\ d��         �   x�m�K1C��)r���5��)�T�p���@���d{W��B�7�$5���U���L�NL�*%3�a̻)d>Sm�_)|<>9=<z��M�	��g�(��IM����#?3[��/Ӭ���mq��M      
   e   x�M��	� D�nV��.R@.˺	��������q޼�U]l�	�)��MP���c�x85�
�,��M��Ǽ���hv5G�\�(8�H�]� ��E-t      $   �   x�M��
�0Eg�+��ｐ��d��E�j08N��B��rJJ'	�չ�BWWM�b}�7������w#r|y��F�<��`�+̬��%�E��w�����GG�&�(��!p?"t�\'�g?����R����~ΥX��5�ׂyl�1w�C�         u   x�3�tv�sv�qt��L�Q(HM�L�W�LTH+MU(HLO���s�K�J2�RRr�����|�B��Ԋ�� �������e��������dp"А�|�b��
\1z\\\ �)v      �   �   x�M��M1�]�6 �'��FH@�u��[�O>���J�>>��K/�@�	B�"5!P�P-����zBC�@7�����a�	�Ӱ&7�a',l�`?K҆
%�_}�?�:<�n���'TE~�t7�P�d{�'Ҩ�'Wm'ѩ�jk�j�ٺm@�Z�a�Т6�m��ӶlQ²����s��t/�s���/�zk *�A�6�i�T4~���*Rq      �   �   x����j�0�k�S�	�g��6WH�F9+�`"#��?"�"�T�;�6K�����4{�[ȱ��������{*�5�u|���R����g�Yb�m[]���O�t������t��t	G�LyO��z�:�2�� 3�2c�$3&�2c[��N!h:�@�S<��ԕe��r um9����@]]�0�]ka��F���Ǫ�k��kޞ |�j2         G   x�m��� �7T�d�<�HV`�u���}�Ȑ.�5o������cKo��cy��.�e��IE�         M   x�eʱ� �����_L�Y�����W_D��6�"˳<,��\����p��Џ04>�C!�O�^S�Q:S      &   `   x�]���0�7���� jI�u$�?�{3M2 N����,x���&�����x�]��I��֙�l+�޴:ّ�ESG��_z:���|�o��G�_� �      '      x������ � �      �   4   x��A  �w����@2�$��-,�f�i���j�
ZwF�ù�      �      x����r$�q/���S̍|W`eVVV%"C�G���þq�n�����3� ��΅�A/�l`�Z��NĒ��KJ�l���#뫛�t�;�~������tx8�ߟ:��������o���y||��~��|w��v�.��s{7ݼ;���O���r3�����U���w���g�i�����;}�p>��p���s;>N��_�ϧKO���=���v������������o�J�P�5�5	}�l��&��M�u�&w����v��ލm<����v����.ް����.v����`��|��]�E u����x��w�K;�?ܵC�7lϿ2'R��-���C��-�-�I���������K`u�#��|��CW?���@�?�6�Q�2��{��x|��8��P����$yJ�NuR!}����T-(���)���]��g%�6]�'�ۢ�L�����p<��c����%��[��H7�?�ec�⤱ch�h�I�`j1�󘽐5�Կ��8��a��h�Z_s�Gl�o�X?7٨[�!�o���i�y_�G��%J7�G��K=����x�_S��
��ؓ�)��S�䥥����i�6�4���[6�#'4�&�Q�����x�G�xd�#K�#��p����.�E�+N.H�G.�U�y���ȄGf<r�#�Ր'a�Dl>a������M��=�l������;�g��৏�7��0���j,b���)�X	ҘCSK�Ԫ��z�����/��j��,Kl>|��"��X��]9z�sY��R>P����F�|�����^<�o���έ#z�[�Լp�ދ�h��$!'��6����"s��Dy��{�r��u,��o��aY�z�HlU��ꅏR�X� �-��yf"�0�~����7PC;�C�x{�Qz�h��o�K������*��P�B�5�<�d�h��׆#��㛻ᛥJ�[��2��,��i`.��F9Is�#�P��,5m
��(��O�]YL{��N�,�ۆ�nz�Vc�He,m
�s�kV���L-YSL��kc�Wc���G"��㗿���zu)�T"���y���9�Ô�\�A�z��H�j$~�ޟ�˜L��8��r������d�xi�K�;|�R�O�i��M}�s��3�2N�H�j���C������k��=��?��������O��i�k��7�*z�~����t~?=����9.����|�8r��������v���T�PKS�T�ǼC�2.��lCӨ�����E�O��/���m ޢ��6�����XS5��ՏKh�xr4�A{���戙_B��i���/o2��V�U�}�0��'�>�K�m���ͥ}�I�Ƨ�?<5�������C�Z��G ��^f��S�0�y8��4M���E����r��~xK��� �i��À<��`�9�y��zɅ�h�5���~)�o0��r�R>�X��v�����:���ݦ|��&�~���=)�O�X[�m�z���_����R�J�4����Ѽ%�r	���!N�����\>�x�K��������������{~���[��l��0�}����'�����,����q�hq^Z�^$-�[譍a��)�l(��{��1��g��W,��y���Ͷ}<#�a���4��^5�|������Z�m���7y:^�!Xs֬-�I�����Ő$ys=�m���Rh�Ŀʱ�������r����xߎC��U�sʗ>�d�\x��'[�GZ0���#MRW��Ҡj�1$��Abʡ�\y��A�������-sOY�%�I�GŔjNqY�}�r�^?�K�M��}z]2��[��f��i�H�M���p�MZ$���>��)L1&-I��gd�����q����QoIn$}�t�Mƞ��8ǥK��)^WJ)2��5�d�>��$^چ>�FF�>�q�p�>}�>����_���t�6эz>�e�4kjS�!���������:I������C<���3}�14J���
c��&W��/�����������;�-�����H}9�7z��W9�5�7����ߚz
F�H<���:�p��:�|?�ܟޟ�e��xz�2z�(�l7�u���I�1F�d�K��E猅S��D���AF�<W�Q}2�6�z�{5j�	���6+!0,�2Y�%,/� �V�
�>�&�{�6ӂ��g�j�v��D#��u�ӗ%�J�9ފ�}�� �"ie���dI�^Z�Y4�`���K��}�����`m���L�4���׌�>Y-��]x����끠[�����L���[J�BKL�S^�QfY��-�%�^(�㐣_�R�<$&���8���0�⃪�1U��G�����qX�����q9���~DL��Ȝ@~󃌜�Y�C��<�4Mqe��C�e?��L����7��F�e��q��+"a#�5��?��^ڂ���=z�^6�[\&m���Nϱ�1���%/�gנӼl�d/��y)����풾���4��e��� T�����uf!f����6.�`���g���w����)O0o�*���y+�װ������`�7��_��
V���`�#)��H��G�]Z��󹃜����`^�0o��7E,���_��
VX�-��M��u���kXޢ`^��\*�����%0/�y�W��B]^��}z̛����`^�0o��V��[��o������"�l|d`�#�v���V���kXޅ&40��SW�����NQ���h���h`SD������Q��4pF+�`�lŁ�b�`"sDSg��}�$f4pB8��\��l`഼~q]���C"81É�X��N�p�'�pb�h9#���G"����'Npb�g8���s.^�t_��P,��Z?01��N���'�pb�{Ε��;�𲼊Llhb�pb�3�8��N��Ğsɺx�;_���+����%	L��v��58q��X�K��[ q���xy�+�j�����w:{k'�pb�8q���)pb������9{�1��N���
'.p�
'641E8��\�.��<É�X��N�p�'�hbN�Y��T=���3�X��N\�����~��ih���=�?���0����#�����ig�p{:�O��_O�����8�n~���U L�������aƚB��^m*3�rm �%>��������迵O�Mz�<���z�VsK9���1[6��~`��T�Xڕ1���ߴ�O
C;�w�vY�}�8���j�8��w<�<xr�3�<$�T�)�pm�%�>�����?�.��t?�oڥ�^$��Պ�t��Q�2�����1H�i��0�Yd�\��Z ��v����Xjƛ��G��j� Ә�!x�Eb�s�uNa��[�Q�+à.��H�Ώm)w��iiޠax8]���?�ͯ���b�#-���8�4d��&vm �C ��c�a�+h�\�[���x�y8�T�4��[pK2U@i)�&�{��|m = 	= �������[�%ÉN\��Nlh���'f8��e]�ӽ�U��N�p�'�pbC[���s��.���JKpb�g8���L���О�N���'�h��Ekq]�Ͻ��N�p�'8q�+����+�غD��C��y�'&81É�X��N�p�'������\1OlhbO���'f8q��8ÉN�H�❮��
'64�D81��N���'�pb{+U�NLpb�'8����w�����
'.p�
'64�F81��N��Ğsig@{4ÉN\��Nlh���'f8��\e]��=E��N�p�'�pbC�'&8��\u]��=5��N���
'.p�
'64�E8��\�.���c8q��8ÉN\��Nl`b�K��.����&^�;�ɪ��E(��y3�7y����g��̛����`^�V0�T��z���>��ͳ��%"��+��h�A�X��N���}�tPQ8q�W8���k�����	N왕vh$Q3�X��N\�Ć&�'&0��ؕ��&�Bpd��s��)��%Ñk�L[���y`O�SF#{�G&< 2  2�Y����xdOE�y�{2��\����5[��G�aEՈF.��
v��GNxd�#g4rU�k�=ǖ�����|%<r�#�7_y���Պ�X8r�#W<���e9�dY8ٗ,��d���N����,�Lxd�#'<���=���}&�U�3ޘ���bk-�LxdF#�(Z�%R���lp��ȄGf<r�#�HJ;"��e���x�G�xd�#k�#��Ȟ}��NgET����x�G�xd�#��G&<�g_u��ӭn%����ȊG.x�G68r�xdϾl��ӭn���	�,x�GV<r�#W<���-v9n�w�=���x�G4r�N��V_��%�3Y���\���}�I�hhd[�H#�l�h�9{Gf<r�#9�=�J�}.Je�xd�#s�#���	�,x�GN�b�y��R9���	�,pdV4��{�iIxd�#g<�������Lh��-��\��GN��y���N*'�#<r�#Y"��ȌF��p9�$���E��%����ȊG.x�G68r�xd�#3ٳ��A��~�,x�GV<r�#W<�����r� �t��<r�#�D<���l������x�G<r�#+���+���E�������Z���	��ݫq�.�Lpd��[0��xd�#<r��k^'�t���~�pd�#39����ȊG��+m���&����L�Lxd�#'<����_��>h�*����ȄGf<r�#9w�7��\y��z�g��Z�L6�{-؊V������"��ȌGNxdϱu㙺�̾T���l�w��(�G�xd�#<r�#9G<2�=���.��G<r�#+���+���ꩈm�w�&��GNxd�#g<���[Wt�Y���.)�	��x�ԕ�A��DPI�G�xd�#<r�#Y"��Ȟ}��>羊$<���39z'%/=��E<2�����Gf��y���-�E*\�,G�����m�w�|e�#'<���3Y���\��Gֈ�ފ��G�xd�#<r�#[W��
�	�D<2����ȂG�xd�#<�g_�A��&���W� �t��"��ȌGNxd�#g<�g_�A��<�<r�#������/������sR�"�������t��0S�^��y�	�q�#9��\��jN�Y���	�,x�GV<r�#W<���-Yg��}퓬5u�6�y�s�VA#��i�d�t&H2�Y�Ϭ�T&w�@Ӝ� �h΀f4/�v�0�s�Ӗw9���\"�� �hN�f4g@�Ɇy�3��<V�\͆g^��Ù	�̀�h8�֌�\U8�={�*wF[��z�	�.o����5�xd�#W4��ez$o�_�l��"�� �hNp��e�d#����"-S��3��茈VDtADW@4/��m���z3#�����G��4��F��PZҝc���Wϒ�Lxd�#'42��`o�׻�����/����,A��=�DJ���AF+�
�aYK�\������Mj�wltY�B;fFpf���Z閣)�{k�:�"�N��ҙn����wQU�6V�xd�#<��ڼA�g:b1����\���lpdO��ȄF�H���e�,	����%�uP��|/(�_�5�B����D���y�#:I�I� 燐����G���e{�|�xF��6���|/Yaz~��w��i1`^8��}|f�3�Xsǹ��W�ڱ�mA?_F��������4���=��J�_�O���%�����޽��4h� ����>M��k�VȦ֮�+4_�ҫi�O���N�ޝ�K�<6����v��0���*?&�6I�l������C�ש�T��Z~}�������������Լ�<W" �0MS���L���O}��5��Q����K�>
�K�8KX� 5yNJr��S}�SHcmͿ/���dod)���������i���x8]����G�s�0:2�f6�#�2��m�6�%_߷��p:�K$���O�ө�o������1��5���#�-�ZS��Z��k�P_���.�-o�|��VG <�DC��3��Q��-�ԋ��Z�����t~|�߷s���:z�v���r7=N��)Gc��R��Ph-��j��6
�}��=�=5�>�u�����wgl
ڌ��l]�%u�i�<Q�#���	�L�e� �sU4W�V@�1rMxd�#g<���⑭[��
P*b�\SF�)�I-��Y}��>���tˋoV�{-��\������2����ȂGΝ��N�簢�����,�;��&�	N\��w21
�M�pb�4�7ZhM���	�,x�GV4r��U>�[l8r�#K���x5��k]�xd�#<r�#�	��xdOE�y���*9Ñ%�m޴���Ֆ{f/�h���G&<2�Y����x���_�xd�#��G&4r���q�w�-vV�#s��y�;�����J��~&�d��l���y��ãV���g�����hNx�e�ؒ�j�Ԗ�&�4۪�lhd�|��F����y�G�xdE#��u�7N��,x�GV<r�,m��95RK�#�F<2����ȂG�xd�{v_-hd[ެicVw���ly���	�,��hV@s4/�xü�I0cO����>�m�G68r�xd��6�;R%�#'<���3Y�ȕ#��d<�^L~�Ww���>;Z�]��Fm#�Q�#��g4r6�I0�>� ���>�[8:#�"�"�:��b���,A��=�DJ�IP��|��mP��|/(5RWe�����xT��	�,x��.��x�G�pdV��ts�#W<���S�#���2PS�#+���+��ȿ���/~�?�p�U            x�3����M�4����� ��         N   x�3���())(�����+��M�ON��K���/�LI��775��0�4��74�0�072��*H�2"O�1y�L������ �B�      �   o   x�u�1�0D�z}
_���,�a�\#E���r%(T���O� M�O�;"�a5�Z�R�>��5m�5#Gqg~f�6�2�Y��Zب6��T�����-J�^.>�RzϹ/�         &  x�U�kk�0�?�c�oi��^a�Ms�*�����ijW�:�sy9��7��a����������Q{TK�����ጤ�ڒO3�FB�ֵ�D���m	*�K�G!a��?N.Y�Ue0+��x.�dv���5.��qV�w+ޣ`%�`(�;.CQP^��޼����P\5����$N���� ��cG��7�<"�nQ�>�/i��d�B�C' %�Sb;SCF�Vz?�Aw���(�s��7�D���Ԁl'i�<g�g���F��� �>n=�q� ��qY         U   x�%�9
�0�:�0)���V!�� �M���H��<f[L�T�[0��\oc�A�I(��UCMʊsJ�N&:BpM�\������]|_3�      �   t  x�Ŗˎ�F���S�Iv��~�t�E�(�l��4�K5xbh�6(���3��Rf�F�k	®������\�0@�}���8M���}��G�R���R�K?�c9u7څ��p����e����_��Xο�|��c�k��i�5k��P�����Ï~��� �����	�/_A�@R��H�%�L�s`��x����w��q�wŗ�����	 .#A�G�Ԇf���e��T˸�]h�q����h���)�DXjt)3�k�k}����Z�k��'�Ezg��A'��"s$܋.\NJJ0K��)'�����f�|H.��r��"vH�x�ل��ʖ�G�Қ����En�Hj�Y�y`���QB��=�op��c�Z�'��,���P#�>i|$T"�Y���x��G	v�ߍ=�5����r`�eI�P�,�$��l���'�=�5�$ �m�f�E� �d*Z�-�8���'\� E�,�����/��5�?$�yV�G{
|n��I�LFY���LlՃ�����|H.� bd��	WgD�22��@�R�9��'�=�������!
)q�H���p{*�_�9p��4���F�����[��-Rg)3�:���G��oɚ�ܖ��2���5a�O���a��	��$��� b
��c���\������\{Hd�S },g}�
~��� d�ҟ�/h8x�r&o�Bf�`;
�����:mx
�B\@����mxI���V �"�7Oͫ�FlL��1�ht���+��	w޺�D��`�b��������WWȴ���4���ǽ����0O,�r
6C�O(���6<!�(��T��G��8����!�l4ە�#��,Dc�%�c߶���Û         �   x�M�]
�0��7��HQ���6B��q�
B/噼�AZ��7�|s����G�(��yi�^*�e��mȕ�Ϛ,*��'Q핹R���_7�!�(�@��)��%Ϙ5�	�f$�O�6�ls�R�(s������u0�� ��3g         T   x�3�t�t�t�qq�4�3�����W�R��sEC��<�]���L��C]��������9CC@ҦHf���b����  ��      �   -   x�3�t/J,)�,��2�t-.I�KI,�2�(J��,������ ۪
�         x   x�5��	C1�����𻁓���o�8)��u��'�G���,;�f]��ʓ*a�Ĳj�N���M#Ln���p�)B�
��~jT��O��;ʦ�?�
^$�c+r<=�*G�)��}K)} f~%�         �   x��αN�0��9y�.�]|��8F�X �H��9�il�V��=0v��-��ׯ.^d�/���)瘞���&LIRMRM!L�P�S��Y]P��e
�4�يbL1��/��Gy�u|h^�k�OWq��i�ǳ�3=��-뱱��{��V_�Z�ap����˦x&���|��a���\m�����К� ��@��C�� ������,�6��Z�e����S����N��=#��UY�?n��U      /   �   x�-��� ��a*0v�t�9z�*|��1��Xxj$�ľ#u.�<7֍��J�Ė�F�|�t^�µ�嬌���R )���8�@�������\q}����"Ik��1��������ȓĎ�r��I��Qw��5I�����b��K�V�Ď�g�$����"Ik�:�2�C��"'�Kү�$v4�:y'I.�8yIZ�ԁk��}Hr1�_�?=��3�x&i���1��K�      #      x������ � �      �   �  x���=��@�k�W�9���c��(���$$���Y�!�W���R溑Fz�����
�m:��ֽl[]�C��������y<0�iݧ�8����3(M�S�k��߻y�.�+]�'~%�����#��m�>="��@�@�HR��R42۫�㑗)�i���.������J��}��d�1Z%�����#f/����gZ7^-����웆�-P�n�Z�U6i|��B��7+�6�5ʿ�����Q0G�5���k�ƂYXԞ�QN���^*�B�ʽ��)I:�J���-�h�(;�A����O�w���˝��`+��a o�I����谴�eB{R��i�7�kԛVE�lK�0H@jS�d@*[�Q9�Pz�}�����4��?3*E$Ag۬b`�Z��D)%�Ǆ���������e      �   �  x���;��@��ѯ����yh^�1!���W�f"�̀�1#i��O�ҥ�˕-y���s�;�+ˈRd�\���s|	���<0N����t�v��������ջL���ɧ�o�rM��X��+7��&;2}~�J<����i&r�ȃV+�a\��/�|�X��gCq�lTh}F�V�2��	�)�<��%�Z��B�ʧ�mc/�*�[]��o�st�A�.��WR*���3aT���UH��ߟpׯ0{��S3jf�l|�9|q5|���w�Cr;�oz�<���B8���p(c{�	�;(.1Y��,)�5GK-�}D'��*p5��ۇ��)Dc�+j�:+�Ԇ�\\����:t'�����Ue��J(��A���+'o�h1lU�=�1�~`�R�UVij�u�2Ϙa��5>���q�P|\re��6�c3����$������?��Wu�/��6�,�� y�      �   7   x�ȱ 0���e���:�_�)��b��`�b+*N�hP��WZ�; >d�
L      1   F
  x��XɎ�Z]S_���-�bƖZz`0����Z*a3�����_�?�άJg�M�ԝ_�JE�8��@I�jj'w^�s�{���i�0�j���}{���9Q
�E��9���b���i�g�*ع���׍`�6AR{���C�I�lN�X}u��(P�B��Z��@�4$�sQ�S����-�__�"��,���~� ��o��EX�n7��X )sqf�My7�[<e�wFj���"eX\8.���$;Q�����3��aT����;/r�_��0��g*ݻ`���9#��h#A�qp�Ɠ�� ��:C�N$�E�W/S���`�����M��8��ĺ���0�L��g��� �zF�?�	n4Nŷ�*��h���-\����)ND#��}��G1�����])�<A[!&�e��
-8��_~
���!!++�v �?�`���4�
�L:g9�d��.��y��r�� �jՠˎ��ֶ:1p����l�e
0�a�� C�`�$��R�A-nJ|��W��2�_���L�V�ݎ6�#Q��}����# ��4$�g%������leq���eL`��,\�Vݕ(��P�j�僃G�xF &��<�a74Q�4��_%��z6kC��\?�(�׮��X���uG�=#�&����چ��H��n�IGݏ$N֧н�h"��}��7X�<�@�}E@C��Z@���6~;��
|w��̑�"�@��6�"'%#]vi��6�R��h{���gw�A��=<�t~F2��w8`c�:}����AG�ā������1ft���}���#������ �D ��l|��K��⪪5�� ��Yf۞\�ruB�y�H6&�'�����;�1�A�)B���fJ v;I�u+X��rU�Y�M��֤����ϣH����Ǟ�N|%fHhV2��i�Wj��6�ǲ��U����ܟ�\.��=$>IA��Fu���M��N崑�~	�^¿.��G N(>�2R���t��Oi?8�C���!/�����1u��hJwf���;��!��peq��5���X�5�u�f�m�YxIE����7���I�wi��~�V�D�	]M�7��|H��S�]qL�s;�pw�_�o힌��'�x�4�(\m·���
����X��K�-��<A'Z��>Jf]��!Q����hA��<#�Ҍ���eE��[��d�TG6��%���l+Z���6`"Xջp�5>*���d �!Y�W/�js;�/��z�b�kv�d�8,�<��ɳ:�}����E:�x���Kh�D�5	��v�'�΢RPH����gLy(���/�����p�l�i"���s6�}*�V�E���V���)����s;��f>�Xs)��L�B(���a���C� -7{��H�Y�1��V0w�_:�IH�1�����1��_���Ue��R���<�}�v��,�78ځաd��ǹN�p7K/4���P��a"�k���=����4H�d\�����?e{��m�h��|7gW�v���np�ڜ�oS��/l�:�?B������Fiz��������N�S���qޏ�����ueoע3-`�ͨ+;Mݽb35	�����]�tw#�<�1��p�E����lurzZat��@�&�{OD�)�iY���N�������3ߵ� �v{q�1��>Mh,�+��|���5�ء�S�E�o<:���Wg����IX��)��%����w3�t��V@-S��d7�N�Z^j[w ��ɯ�)H,��I��󄫨}]�b2j�FX��8Źceca�Ň�9���Q�t
�k��}���C�F��P���͇��ĝ��n�6=;·1�ƙ�Q�E�R@L0�2fa��1�T�k�\�&p�[�I|����3N@�%���|�z�|��|q$U/8,I:RZX�n�N$�I�y�t���@կ�{�YpQE����ە��JW��t�C��?���Ψ��E1�� �zi$�5GMU;��<<q��.�)��B��FAO�|nV~�1�Ӕ��������<s�_�X�m��?���7����7{*z�Y ��P��k9V��"_m���ٷ#�/=���@���0&�}p��]�����im�#���q��rKO7��N�����(h�o� �Ո��&�>-o�N��x�7`��T��;����C�r����������"3�&k��{̨�Ĝn�O+�C�!gw�3zAo|�Ey��kJ���8v;��v���PP֫ן' 	����I�_0��䍟B��{M����;�JG�Go�'Fݦ1r��%#2���6����g;�enk�JcЛ=�a��1��[TW����{�v�M�o5��At�����^����C��4�VEY���[o��+\�o�q�i���cr���%�]8|nm�@������M3Ñ�N3�mYβ�����`�<���������B0�'��ha�v�r@͋�����~�v��Z��쐸*�}l�`�{�~^�w@��䴐����8H�6�u;Y������x^��
*0�T���[w�+ ~_ğ���5\�:o0-o�'�?�l�K����u�-K&٧W�iHpH��,H	�?��a���۷�Wȝ      2   ^   x����@���a�8�t�.����0!X���.����w�]��&��($:Q���n� ���0F0��`#�Ȟo�}�Ї�:�������          d   x�]���0Ckg
 ���E$C0Aj�/�o9�hp�l��=�`a&BW�*[��>���?^1�5�����/p�� ��Ku �l>����֘���ˬ�����     