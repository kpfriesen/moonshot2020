GDPC                                                                                @   res://.import/Grapple.png-b13c22c8c03db54d5f353f3539a7e0cf.stex 4      �       b�b3yk�ּ����H   res://.import/Target_Select.png-09f4f7d2df2d90d19a672c69d5df1dc0.stex   �7      �      ���P��ӓ-���<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex0O      U      -��`�0��x�5�[    res://Scenes/Actors/Enemy.tscn         �      ��|�~U<CM�"=�`�$   res://Scenes/Actors/Enemy_rb.tscn   �	      c      ���7�<|r; ��h    res://Scenes/Actors/Player.tscn `      8      ���0��ssa�|�0   res://Scenes/GUI/Target.tscn�      `      �l�b�7W��]�G+b$   res://Scenes/Projectiles/Bullet.tscn       �      I��_�y�%ܮ�ʻ�    res://Scenes/Sample_Scene.tscn  �      x      �]�'��i\��R�vt$   res://Scenes/Scenery/Asteroid.tscn  `      �      �T-�k1�ÀUv�2(   res://Scenes/Scenery/Asteroid_rb.tscn          j      �)�]N��%^QU/4�S    res://Scripts/Bullet.gd.remap   _      )       0L��K���#�ѐ�3�   res://Scripts/Bullet.gdc�!      �      �>[HA�>�a�;{��   res://Scripts/Enemy.gd.remap@_      (       �w7P�1��ɇ�8��   res://Scripts/Enemy.gdc P$      �       �?��c�"�=�؋��    res://Scripts/Player.gd.remap   p_      )       <y;�9Y;�k��S�   res://Scripts/Player.gdc0%      �
      �P��ܐ{��C��-	��(   res://Scripts/procedural_pop.gd.remap   �_      1       �!ûH�c�䑢��    res://Scripts/procedural_pop.gdc0      �      ˿
�P�:���t1@�$   res://Sprites/GUI/Grapple.png.import5      �      Y,�}%�AsSk��,   res://Sprites/GUI/Target_Select.png.import  `9      �      ��5�,�qsd�<c�L�@   res://addons/PoissonDiscSampling/PoissonDiscSampling.gd.remap   �_      I       ����q*�Y6]�Xh�A28   res://addons/PoissonDiscSampling/PoissonDiscSampling.gdc<      k      ����c�(��A�ӳ   res://default_env.tres  �N      �       um�`�N��<*ỳ�8   res://icon.png  0`      �      G1?��z�c��vN��   res://icon.png.import   �\      �      �����%��(#AB�   res://project.binary m      h      �OXc�G�S�u&�[gd_scene load_steps=3 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]

[sub_resource type="CircleShape2D" id=1]
radius = 35.1702

[node name="Enemy" type="RigidBody2D"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="EnemyController" type="Node2D" parent="."]

[node name="Sprite" type="Sprite" parent="EnemyController"]
texture = ExtResource( 1 )

[node name="Gun" type="Node2D" parent="EnemyController"]
            [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/Enemy.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="CircleShape2D" id=1]
radius = 35.1702

[node name="Enemy_rb" type="RigidBody2D"]
position = Vector2( 0.396851, 0 )
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="EnemyController" type="Node2D" parent="."]

[node name="Sprite" type="Sprite" parent="EnemyController"]
texture = ExtResource( 2 )

[node name="Gun" type="Node2D" parent="EnemyController"]
             [gd_scene load_steps=5 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Player.gd" type="Script" id=2]
[ext_resource path="res://Scenes/GUI/Target.tscn" type="PackedScene" id=3]

[sub_resource type="CircleShape2D" id=1]
radius = 36.6866

[node name="Player" type="RigidBody2D"]
position = Vector2( 554.17, 269.95 )
linear_velocity = Vector2( 10, 0 )
script = ExtResource( 2 )

[node name="Camera2D" type="Camera2D" parent="."]
current = true

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="PlayerControl" type="Node2D" parent="."]

[node name="Rays" type="Node2D" parent="PlayerControl"]

[node name="Ray1" type="RayCast2D" parent="PlayerControl/Rays"]
position = Vector2( 37, 0 )
enabled = true
cast_to = Vector2( 350, 0 )

[node name="Ray2" type="RayCast2D" parent="PlayerControl/Rays"]
position = Vector2( 37, 0 )
rotation = 0.0698132
enabled = true
cast_to = Vector2( 350, 0 )

[node name="Ray3" type="RayCast2D" parent="PlayerControl/Rays"]
position = Vector2( 37, 0 )
rotation = -0.0698132
enabled = true
cast_to = Vector2( 350, 0 )

[node name="Ray4" type="RayCast2D" parent="PlayerControl/Rays"]
position = Vector2( 37, 0 )
rotation = 0.139626
enabled = true
cast_to = Vector2( 350, 0 )

[node name="Ray5" type="RayCast2D" parent="PlayerControl/Rays"]
position = Vector2( 37, 0 )
rotation = -0.139626
enabled = true
cast_to = Vector2( 350, 0 )

[node name="Gun" type="Node2D" parent="PlayerControl"]
position = Vector2( 44.4974, 22.5136 )

[node name="FireRate" type="Timer" parent="PlayerControl/Gun"]

[node name="ReloadTimer" type="Timer" parent="PlayerControl/Gun"]

[node name="Sprite" type="Sprite" parent="PlayerControl"]
texture = ExtResource( 1 )

[node name="Target" parent="." instance=ExtResource( 3 )]
visible = true
        [gd_scene load_steps=5 format=2]

[ext_resource path="res://Sprites/GUI/Target_Select.png" type="Texture" id=1]

[sub_resource type="AtlasTexture" id=1]
atlas = ExtResource( 1 )
region = Rect2( 0, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=2]
atlas = ExtResource( 1 )
region = Rect2( 32, 0, 32, 32 )

[sub_resource type="SpriteFrames" id=3]
animations = [ {
"frames": [ SubResource( 1 ), SubResource( 2 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[node name="Target" type="AnimatedSprite"]
visible = false
scale = Vector2( 2, 2 )
frames = SubResource( 3 )
speed_scale = 0.4
playing = true
[gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Bullet.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]

[node name="Bullet" type="Area2D"]
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 0.3, 0.3 )
texture = ExtResource( 1 )

[node name="Lifetime" type="Timer" parent="."]
wait_time = 3.0
one_shot = true
autostart = true
[connection signal="body_entered" from="." to="." method="_on_Bullet_body_entered"]
[connection signal="timeout" from="Lifetime" to="." method="_on_Lifetime_timeout"]
               [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scenes/Actors/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scenes/GUI/Target.tscn" type="PackedScene" id=2]
[ext_resource path="res://Scripts/procedural_pop.gd" type="Script" id=4]

[node name="Sample_Scene" type="Node2D"]
script = ExtResource( 4 )

[node name="Rigid Tether" type="PinJoint2D" parent="."]
node_a = NodePath("../Player")
disable_collision = false
softness = 16.0

[node name="Tether" type="DampedSpringJoint2D" parent="."]
node_a = NodePath("../Player")
disable_collision = false
length = 10.0
rest_length = 10.0
stiffness = 10.0

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( -2.13321, 2.77069 )
z_index = 1
can_sleep = false
linear_velocity = Vector2( 0, 0 )
thrust = 200
tether = NodePath("../Rigid Tether")

[node name="LevelBounds" type="Polygon2D" parent="."]
visible = false
polygon = PoolVector2Array( -10562.6, -6599.37, -471.506, -8321.4, 5865.55, -9251.29, 17162, -1502.18, 14028, 8829.98, -2813.46, 10586.4, -6670.8, 5971.42, -13524.5, 185.408 )

[node name="Target" parent="." instance=ExtResource( 2 )]
        [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]

[sub_resource type="CircleShape2D" id=1]
radius = 34.7023

[sub_resource type="OccluderPolygon2D" id=2]
polygon = PoolVector2Array( -31.2513, -26.9949, -26.0072, -31.8644, 27.1827, -31.6771, 31.6776, -26.6204, 31.4903, 25.8204, 27.1827, 31.2518, -26.3818, 31.439, -31.6259, 27.6933 )

[node name="Asteroid" type="StaticBody2D"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="LightOccluder2D" type="LightOccluder2D" parent="Sprite"]
occluder = SubResource( 2 )
    [gd_scene load_steps=3 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]

[sub_resource type="CircleShape2D" id=1]
radius = 36.7106

[node name="Asteroid_rb" type="RigidBody2D"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
      GDSC            l      ���ׄ�   ����Ҷ��   �����Ķ�   �����������Ҷ���   �����϶�   �������ض���   ����Ӷ��   ���������������Ŷ���   ����׶��   �������ض���   ����������������������Ҷ   ���϶���   ���������Ӷ�   �������������������¶���   �                                                           !      "   	   (   
   0      2      3      4      5      <      J      K      L      M      N      U      Z      ^      _      `      f      j      3YYY8;�  V�  Y;�  �  P�  R�  QY;�  V�  �  PQYYY0�  PQV�  �  �  T�  PQ�  -YYYY0�  P�  QV�  �	  PP�  �  Q�  Q�  YYYYY0�
  P�  QV�  �?  P�  Q�  �  PQYYY0�  PQV�  �  PQY`         GDSC                   ��������τ�   �����϶�                                                 	   	   
   
                                             3YYYYYYYYY0�  PQV�  -YYYYYY`     GDSC   ;   
   U   �     ��������τ�   �����¶�   ������ڶ   ������������ڶ��   �����Ķ�   ���������ض�   ���������������ض���   ���Ӷ���   ������������Ӷ��   �����¶�   ���Ŷ���   ���Ŷ���   �����������ض���   ������Ӷ   �������Ӷ���   ��ض   ��ض   �����϶�   ���������������Ŷ���   ����׶��   ���������Ŷ�   ������������������������ض��   ������¶   ����¶��   ����������������Ҷ��   �������������Ӷ�   �������ض���   �����������ٶ���   ��������������������Ӷ��   ���������������������Ҷ�   ������Ӷ   ���������¶�   �����ٶ�   ���������Զ�   ����������ٶ   ����������������������Ҷ   �����Զ�   �����¶�   �������Ӷ���   �����Ķ�   ���������������۶���   �����������Ҷ���   ��������������϶   �������Ӷ���   ������������Ӷ��   ��������Ҷ��   �������Ŷ���   �����¶�   ��������������ض   ��������������ض   ������Ӷ   ������¶   ���������Ŷ�   ����������Ŷ   ���������������¶���   ���������������Ӷ���   ��϶   �����������Ѷ���   �����������Ķ���   2             $   res://Scenes/Projectiles/Bullet.tscn      ui_up         grapple           shoot                                                
                  "      #   	   (   
   )      0      =      F      O      P      Q      W      Y      Z      [      b      i      j      q      r      s      |      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -     .     /     0     1     2     3     4     5     6   "  7   (  8   0  9   6  :   7  ;   =  <   @  =   F  >   G  ?   H  @   I  A   J  B   K  C   L  D   U  E   \  F   c  G   j  H   q  I   r  J   x  K   ~  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   3YYY8;�  Y5;�  W�  Y8;�  V�  �  Y;�  V?P�  QYY;�  V�  YY5;�  W�	  Y5;�
  W�  �  T�  PQY5;�  �  P�  QY5;�  W�  �  YYY0�  PQV�  -YYY0�  P�  QV�  ;�  �  PQY�  �  T�  P�  Q�  �  �  &�  T�  P�  QV�  ;�  �  �  T�  T�  P�  Q�  T�  P�  Q�  �  &�  T�  P�  QV�  ;�  �  PQ�  &�  �  V�  �   P�  R�  Q�  �  T�!  P�"  P�  QQ�  &�  T�#  P�  QV�  &�  T�$  V�  �  T�!  P�  P�  QQ�  �  �  &�  T�  P�  QV�  ;�%  V�  T�&  PQ�  �%  T�'  �  T�  P�  Q�  �%  T�(  �  T�(  �  �%  T�)  �*  �  �+  PQT�,  T�-  P�%  Q�  YY0�.  P�  QVY�  -�  �  �  ;�/  �  PQ�  &�/  �  V�  �  T�0  �/  T�0  �  �  T�1  �  Y�  �  T�2  �  �  (V�  �  T�2  �	  YYY�  �  YY0�   P�/  R�3  QV�  ;�4  �/  T�0  �  ;�5  �3  T�0  �  ;�6  �4  �5  �  �3  T�7  P�6  Q�  Y0�  PQV�  )�8  �
  V�  &�8  T�9  PQV�  .�8  T�:  PQY�  �  �  �  �  �  Y`             GDSC            �      ���ӄ�   ������϶   ��Ѷ   ��������������������Ķ��   ����   �����������ض���   ��������������ض   �����������Ŷ���   ����������Ŷ   ������ض   ��Ŷ   ������������������Ѷ   ��������Ҷ��   �����϶�   �����Ŷ�   ��������������Ŷ   ����¶��   �������Ҷ���   �������Ӷ���   �������ض���   �������Ӷ���   ������������Ӷ��   ��������Ҷ��   �     "   res://Scenes/Scenery/Asteroid.tscn     %   res://Scenes/Scenery/Asteroid_rb.tscn                                          	                  '      0      :   	   A   
   B      C      D      E      K      U      j      p      y            �      �      �      �      �      �      3YY8;�  Y5;�  �  T�  PQY5;�  V?P�  QY5;�  V?P�  QY5;�  W�  T�	  Y5;�
  �  T�  PQY;�  V�  �  YYYYY0�  PQV�  �  T�)  �  T�R  PQ�  ;�  �
  T�  P�  R�  R�  R�  P�  R�  QQ�  )�  �  V�  ;�  �  T�  PQ�  �  T�  �  �  �  PQT�  T�  P�  Q�  -YYYYY`            GDST               �   PNG �PNG

   IHDR         ��a   sRGB ���   �IDAT8����� E]B��%�ûC���.a��zQ���H
�� ��!�~��5��E!��-��uU �u-T�ؤ�p�����A��4�<�2x�S�A.�`�Edҿ��J�,_fDtM?���Я���%r�g�hn�=,�;/�    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Grapple.png-b13c22c8c03db54d5f353f3539a7e0cf.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/GUI/Grapple.png"
dest_files=[ "res://.import/Grapple.png-b13c22c8c03db54d5f353f3539a7e0cf.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST@                �  PNG �PNG

   IHDR   @       ��~�   sRGB ���  <IDATh��A� ES���V����W�[��nl�2�4� ��oW��0��`C��/������w��X[¸0/GDt��<_�d�������L[kf@�7�4�R���J@�djq�N5,m�	�$r�gҀ?9Id'�1�&pD��-��ܱ茶p��8�-zj��THMbN�,P:P�E��~�~�H��D�	8�;G�n������vU��^�G���]���%���ώ���+���w>��|Qfmq�󜱈�|�9�`�D@=<�{"2j ��j�� r��h�bf���!�7�1W���-P�F
�����Q��@qv�#�    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Target_Select.png-09f4f7d2df2d90d19a672c69d5df1dc0.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/GUI/Target_Select.png"
dest_files=[ "res://.import/Target_Select.png-09f4f7d2df2d90d19a672c69d5df1dc0.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDSC   6      �   `     ������������������Ѷ   ������Ŷ   �������������������Ӷ���   �������Ŷ���   ���������Ŷ�   ������������������¶   ���������Ӷ�   ����Ŷ��   ����Ŷ��   ����������������Ҷ��   ����Ҷ��   ������Ŷ   ������������Ŷ��   ���������Ӷ�   ��������������Ŷ   �����Ŷ�   ������������������Ӷ   ������Ŷ   ��������Ŷ��   ���������Ŷ�   ���Ӷ���   ����������ζ   �����������Ӷ���   ��������������Ҷ   ߶��   ����Ӷ��   �����Ӷ�   ���������������Ӷ���   ζ��   ϶��   �����Ҷ�   �����Ӷ�   �������������������������ض�   ���ڶ���   ���������¶�   �������Ҷ���   ܶ��   �����������ζ���   ���¶���   ����������ٶ   ��������¶��   ��������ℶ�   ����������������ﶶ   ���������ﶶ   �������϶���   ������������������ض   ����������䅶���   �����������������Ӷ�   ̶��   �������ض���   ����¶��   ��Ҷ   ض��   Ķ��                                   0   Unrecognized shape!!! Please input a valid shape                                                    	   $   
   )      .      6      >      F      K      L      M      N      O      P      Q      R      S      T      U      p      t      x      |      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )     *     +   !  ,   %  -   '  .   ,  /   3  0   6  1   7  2   8  3   C  4   J  5   s  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?      @     A     B     C     D     E     F   #  G   &  H   )  I   .  J   9  K   <  L   ?  M   W  N   Z  O   ]  P   `  Q   c  R   d  S   l  T   m  U   n  V   o  W   v  X   y  Y   }  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d     e     f   )  g   1  h   <  i   G  j   d  k   e  l   h  m   o  n   v  o   }  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z     {     |     }     ~         '  �   (  �   -  �   3  �   ;  �   A  �   L  �   M  �   R  �   W  �   ^  �   2YY;�  V�  Y;�  Y;�  V�  Y;�  V�  Y;�  V�  Y;�  V�  Y;�  V�  Y;�  V�  Y;�	  V�  Y;�
  V�  LMY;�  V�  LMY;�  V�  LMY;�  V�  YYYYYYYYYYY0�  P�  V�  R�  R�  V�  R�  V�  P]R]QQX�  V�  �  �  �  �  �  �  �  �  �  �  �  �  �  PQ�  �  *�  T�  PQV�  ;�  V�  �&  PQ�  T�  PQ�  ;�  V�  �  L�  M�  ;�  V�  �  �  )�  �  V�  ;�  V�  �  Z�'  PQ�  ;�  V�  �  �  P�  P�  QRP�  QQP�  �  �'  PQQ�  &�  P�  QV�  �
  L�  PP�  T�  �  T�  Q�	  T�  QML�  PP�  T�  �  T�  Q�	  T�  QM�  T�  PQ�  �  T�  P�  Q�  �  T�  P�  Q�  �  �  �  +�  &�  V�  �  T�  P�  Q�  .�  YYY0�  P�  V�  QX�  V�  &�   P�  QV�  ;�!  V�  P�  PP�  T�  �  T�  Q�	  T�  QR�  PP�  T�  �  T�  Q�	  T�  QQ�  ;�"  V�  P�3  PR�!  T�  �  QR�3  PR�!  T�  �  QQ�  ;�#  V�  P�4  P�!  T�  �  R�  �  QR�4  P�!  T�  �  R�  �  QQ�  �  )�  �K  P�"  T�  R�#  T�  �  QV�  )�$  �K  P�"  T�  R�#  T�  �  QV�  ;�%  V�  �
  L�  ML�$  M�  &�%  �  V�  ;�&  V�  �  L�%  MT�'  P�  Q�  &�&  	�  V�  .�  �  .�  �  .�  YYY0�   P�  V�  QX�  V�  &�  T�(  P�  QV�  /�:  P�  QV�  �)  V�  .�  �  �*  R�+  V�  &�,  T�-  P�  R�  QV�  .�  �  �.  V�  &�,  T�/  P�  R�  P�  T�  R�  T�  QR�  T�0  QV�  .�  �  \V�  .�  �  .�  YY0�  PQX=V�  �  �  �  /�:  P�  QV�  �)  V�  �  �  �  &�  T�  ]V�  �  T�  �  T�1  T�  �  T�  T�  �'  PQ�  �  T�  �  T�1  T�  �  T�  T�  �'  PQ�  �  �*  R�+  V�  ;�2  V�  �  LM�  ;�3  V�  �  LM�  )�  �K  P�  R�  T�  PQQV�  �2  T�  �4  P�2  T�  R�  L�  MT�  Q�  �2  T�  �4  P�2  T�  R�  L�  MT�  Q�  �3  T�  �3  P�3  T�  R�  L�  MT�  Q�  �3  T�  �3  P�3  T�  R�  L�  MT�  Q�  �  �  P�2  R�3  �2  Q�  &�  T�  ]V�  ;�4  V�  �  T�  PQ�  ;�  V�  �&  PQ�4  �  �  �  L�  MP�  LP�  �  Q�4  M�  L�  MQ�'  PQ�  �  �.  V�  ;�  �  T�  �  ;�  �  T�  �  ;�5  �  T�0  �  �  �  P�  �5  R�  �5  R�5  �  R�5  �  Q�  &�  T�  ]V�  ;�  V�  �  Z�'  PQ�  �  �  P�  R�  Q�  P�  P�  QRP�  QQ�5  �'  PQ�  \V�  �  �  PRRRQ�  �E  P�  Q�  �  �  �  �
  P�  Q�  �  �3  P�  P�  T�  T�  �  QR�  Q�  �  �3  P�  P�  T�  T�  �  QR�  Q�  �  �	  T�  �  T�  T�  �  �  �	  T�  �  T�  T�  �  �  �  �  �  T�1  �  �  �
  LM�  )�  �  V�  �
  T�  PLMQ�  )�$  �  V�  �
  L�  MT�  P�  Q�  �  �  LM�  �  LM�  �  T�  P�  QY`     [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Scripts/Bullet.gdc"
       [remap]

path="res://Scripts/Enemy.gdc"
        [remap]

path="res://Scripts/Player.gdc"
       [remap]

path="res://Scripts/procedural_pop.gdc"
               [remap]

path="res://addons/PoissonDiscSampling/PoissonDiscSampling.gdc"
       �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                     class         PoissonDiscSampling       language      GDScript      path   7   res://addons/PoissonDiscSampling/PoissonDiscSampling.gd       base   	   Reference      _global_script_class_icons,               PoissonDiscSampling           application/config/name         Moonshot 2020      application/config/icon         res://icon.png     input/ui_leftP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script         input/ui_rightP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script         input/ui_upP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script         input/ui_downP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script         input/grapple�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/shoot�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         physics/2d/default_gravity          )   rendering/environment/default_environment          res://default_env.tres          