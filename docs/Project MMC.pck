GDPC                                                                              %   D   res://.import/Drill_Down.png-591b7e880a94701968cc8413861e0508.stex  �H      �       k�U�j�9*��-�CɎ�D   res://.import/Drill_Left.png-82b002395ddc026fe5d7534ad664f9c9.stex  �K      �       �TE��?)����ͮD   res://.import/Drill_Right.png-1d7038bb21c5c0dd8f88aa1906aa4c25.stex 0O             i��
3��(���]�G@   res://.import/Drill_Up.png-4f4adb6b3e7913b29bc9f84f7e864675.stex�R      �       ��6Ws哕0��x�L   res://.import/MMC Dirt Background.png-2cbe8d1803b01238a217161ff59488a6.stex �U      �       �� h,���$��%/�H   res://.import/MMC Grass & Dirt.png-accf55d7daa90d209a45578a07a935bd.stex�X            ]��ӱ���FWP�H   res://.import/New Piskel (1).png-6c45fe6c0d3052962339c2c87f2d1cd5.stex  �l      �       "뚳�=���<�Yw<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex@�      �      �Q!����|M�   res://Scenes/Level.tscn �      /      %V��v
�+� �R�9$   res://Scenes/Subscenes/Player.tscn  �      0	      G[�F���'(��820   res://Scenes/Subscenes/Singletons/Random.tscn         �       �)��F�<t��x�G�(   res://Scenes/Subscenes/Temp_Player.tscn �      �      �kt�*�E����T�h�4   res://Scenes/Tileset Sources/Dirt Background.tscn   P       >      AR�+�#)Q$N�0   res://Scenes/Tileset Sources/Grass & Dirt.tscn  �!      R      ������&H�j�����   res://Scripts/Grid.gd.remap @�      '       �XF��陃�֦���   res://Scripts/Grid.gdc  �&      �      E�L��[��߶�/Z���,   res://Scripts/LazyKeyboardMovement.gd.remap p�      7       M�ÎJ�=No��|�\I(   res://Scripts/LazyKeyboardMovement.gdc  �6      �      >cc0Mŀo�4mG���P$   res://Scripts/LevelCamera.gd.remap  ��      .       iA #,4�+�9��\�    res://Scripts/LevelCamera.gdc   �9      )       0s�~Ǯy CTc�    res://Scripts/Player.gd.remap   ��      )       <y;�9Y;�k��S�   res://Scripts/Player.gdc�<      V      ���\�}+����V�    res://Scripts/Singleton.gd.remap�      ,       Hܭ���G18�!�   res://Scripts/Singleton.gdc H      �       �P2��?8W��eܤ,   res://Sprites/Drill/Drill_Down.png.import   �I      P      [� Y}��{U��:�i�,   res://Sprites/Drill/Drill_Left.png.import   �L      P      p�����9c��!�I,   res://Sprites/Drill/Drill_Right.png.import  0P      S      ��&dҦ�����V5(   res://Sprites/Drill/Drill_Up.png.import `S      J      Z.�\omE�_iAxEp,   res://Sprites/MMC Dirt Background.png.import@V      c      㝻(B"�s�[8Q�,   res://Sprites/MMC Grass & Dirt.png.import   0j      \      �;�3�R��]a���(   res://Sprites/New Piskel (1).png.import pm      V      TN*��|_z<��Q�    res://Tilesets/Dirt & Grass.tres�o      �      4:۽�q!����&<�($   res://Tilesets/Dirt Background.tres �v      �      ����eb�ӯ�wt?   res://default_env.tres   x      
      �?�թ+Ev�/h�!b�   res://icon.png  @�      �      �~dg`!����I�҃   res://icon.png.import   �      .      y/�f�\�>w�ۨJ	   res://project.binary�            �� �)A�]��դ�W    [gd_scene load_steps=5 format=2]

[ext_resource path="res://Tilesets/Dirt & Grass.tres" type="TileSet" id=1]
[ext_resource path="res://Scripts/Grid.gd" type="Script" id=2]
[ext_resource path="res://Scenes/Subscenes/Player.tscn" type="PackedScene" id=3]
[ext_resource path="res://Tilesets/Dirt Background.tres" type="TileSet" id=4]

[node name="Base" type="Node2D" index="0"]

[node name="Grid" type="TileMap" parent="." index="0"]

mode = 0
tile_set = ExtResource( 1 )
cell_size = Vector2( 32, 32 )
cell_quadrant_size = 16
cell_custom_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
cell_half_offset = 2
cell_tile_origin = 0
cell_y_sort = false
cell_clip_uv = false
collision_use_kinematic = false
collision_friction = 1.0
collision_bounce = 0.0
collision_layer = 1
collision_mask = 1
occluder_light_mask = 1
format = 1
tile_data = PoolIntArray(  )
script = ExtResource( 2 )
WorldSize = Vector2( 20, 35 )

[node name="Player" parent="Grid" index="0" instance=ExtResource( 3 )]

position = Vector2( 0, 0 )

[node name="BackGround" type="TileMap" parent="." index="1"]

z_index = -10
mode = 0
tile_set = ExtResource( 4 )
cell_size = Vector2( 32, 32 )
cell_quadrant_size = 1
cell_custom_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
cell_half_offset = 2
cell_tile_origin = 0
cell_y_sort = false
cell_clip_uv = false
collision_use_kinematic = false
collision_friction = 1.0
collision_bounce = 0.0
collision_layer = 1
collision_mask = 1
occluder_light_mask = 1
format = 1
tile_data = PoolIntArray(  )
_sections_unfolded = [ "Cell", "Transform", "Z Index" ]
__meta__ = {
"_edit_lock_": true
}


 [gd_scene load_steps=5 format=2]

[ext_resource path="res://Scripts/Player.gd" type="Script" id=1]
[ext_resource path="res://Sprites/Drill/Drill_Down.png" type="Texture" id=2]
[ext_resource path="res://Scripts/LevelCamera.gd" type="Script" id=3]

[sub_resource type="Animation" id=1]

resource_name = "bump"
length = 0.3
loop = false
step = 0.02
tracks/0/type = "value"
tracks/0/path = NodePath("Point/Sprite:position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.04, 0.08, 0.12, 0.16, 0.2 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1, 1 ),
"update": 0,
"values": [ Vector2( 0, 0 ), Vector2( 2, 0 ), Vector2( 1, 2 ), Vector2( -1, -1 ), Vector2( -2, 1 ), Vector2( 0, 0 ) ]
}

[node name="Player" type="Node2D"]

position = Vector2( 176, 112 )
z_index = 10
script = ExtResource( 1 )
_sections_unfolded = [ "Transform", "Z Index" ]
__meta__ = {
"_edit_group_": true
}
speedMult = 1.0

[node name="AnimationPlayer" type="AnimationPlayer" parent="." index="0"]

root_node = NodePath("..")
autoplay = ""
playback_process_mode = 1
playback_default_blend_time = 0.0
playback_speed = 1.0
anims/bump = SubResource( 1 )
blend_times = [  ]
_sections_unfolded = [ "Playback Options" ]

[node name="Tween" type="Tween" parent="." index="1"]

repeat = false
playback_process_mode = 1
playback_speed = 1.0
playback/active = false
playback/repeat = false
playback/speed = 1.0

[node name="Point" type="Position2D" parent="." index="2"]

_sections_unfolded = [ "Transform", "Z Index" ]

[node name="Sprite" type="Sprite" parent="Point" index="0"]

texture = ExtResource( 2 )
_sections_unfolded = [ "Offset", "Transform" ]

[node name="Camera" type="Camera2D" parent="Point" index="1"]

anchor_mode = 1
rotating = false
current = true
zoom = Vector2( 0.5, 0.5 )
limit_left = 0
limit_top = 0
limit_right = 10000000
limit_bottom = 10000000
limit_smoothed = true
drag_margin_h_enabled = false
drag_margin_v_enabled = false
smoothing_enabled = true
smoothing_speed = 20.0
offset_v = 0.0
offset_h = 0.0
drag_margin_left = 0.0
drag_margin_top = 0.0
drag_margin_right = 0.0
drag_margin_bottom = 0.0
editor_draw_screen = true
editor_draw_limits = false
editor_draw_drag_margin = false
script = ExtResource( 3 )
_sections_unfolded = [ "Limit", "Transform" ]
CAMERA_WIDTH = 256


[gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/Singleton.gd" type="Script" id=1]

[node name="Random" type="Node"]

script = ExtResource( 1 )


           [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://Scripts/LazyKeyboardMovement.gd" type="Script" id=2]
[ext_resource path="res://Scripts/LevelCamera.gd" type="Script" id=3]

[node name="Temp_Player" type="Sprite"]

visible = false
position = Vector2( 145.168, 119.888 )
z_index = 5
texture = ExtResource( 1 )
script = ExtResource( 2 )
_sections_unfolded = [ "Z Index" ]
__meta__ = {
"_edit_group_": true
}
SPEED = 2

[node name="Camera2" type="Camera2D" parent="." index="0"]

position = Vector2( 30.8319, -7.88791 )
anchor_mode = 1
rotating = false
current = true
zoom = Vector2( 1, 1 )
limit_left = -10000000
limit_top = 0
limit_right = 10000000
limit_bottom = 10000000
limit_smoothed = true
drag_margin_h_enabled = false
drag_margin_v_enabled = false
smoothing_enabled = true
smoothing_speed = 20.0
offset_v = 0.0
offset_h = 0.0
drag_margin_left = 0.0
drag_margin_top = 0.0
drag_margin_right = 0.0
drag_margin_bottom = 0.0
editor_draw_screen = true
editor_draw_limits = false
editor_draw_drag_margin = false
script = ExtResource( 3 )
_sections_unfolded = [ "Limit" ]
CAMERA_WIDTH = 256


          [gd_scene load_steps=2 format=2]

[ext_resource path="res://Sprites/MMC Dirt Background.png" type="Texture" id=1]

[node name="Dirt Background" type="Node2D"]

[node name="BG1" type="Sprite" parent="." index="0"]

position = Vector2( 47.236, 31.1292 )
texture = ExtResource( 1 )
_sections_unfolded = [ "Transform" ]


  [gd_scene load_steps=2 format=2]

[ext_resource path="res://Sprites/MMC Grass & Dirt.png" type="Texture" id=1]

[node name="Grass & Dirt" type="Node2D"]

[node name="Dirt" type="Sprite" parent="." index="0"]

texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 0, 0, 32, 32 )
_sections_unfolded = [ "Region" ]

[node name="Grass" type="Sprite" parent="." index="1"]

position = Vector2( 64, 0 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 64, 0, 32, 32 )
_sections_unfolded = [ "Region" ]

[node name="Stone" type="Sprite" parent="." index="2"]

position = Vector2( 128, 0 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 128, 0, 32, 32 )
_sections_unfolded = [ "Region" ]

[node name="Coal" type="Sprite" parent="." index="3"]

position = Vector2( 0, 64 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 0, 64, 32, 32 )
_sections_unfolded = [ "Region" ]

[node name="Silver" type="Sprite" parent="." index="4"]

position = Vector2( 64, 64 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 64, 64, 32, 32 )
_sections_unfolded = [ "Region" ]

[node name="Gold" type="Sprite" parent="." index="5"]

position = Vector2( 128, 64 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 128, 64, 32, 32 )
_sections_unfolded = [ "Region" ]


              GDSC   B      w   C     ������ƶ   �������󶶶�   ����ﶶ�   ���ⶶ��   ����嶶�   ����󶶶   ��������   �����䶶   ���򶶶�   �������󶶶�   ����   ���ⶶ��   ���涶��   ��������Ӷ��   ��������¶��   ��������Ƕ��   �������ض���   �������ζ���   ϶��   �������Ƕ���   ������ض   ������ζ   ���������Ƕ�   ��������ض��   ��������ζ��   �������Ƕ���   ������ض   ������ζ   �����϶�   ������������Ҷ��   �����Ķ�   �������ض���   �����������Ҷ���   ζ��   ������������ض��   ���ڶ���   ���Ӷ���   ���Ӷ���   �����������ض���   �����������ƶ���   ������������򶶶   �������ض���   ������������   ����������Ӷ   ���ض���   ��������ض��   ���������¶�   ����������¶   ���������Ҷ�   �������������Ҷ�   ��������Ӷ��   ���������Ӷ�   ������Ŷ   ������������   ����޶��   �����¶�   �������޶���   ����   ��ڶ   ������Ӷ   ����޶��   ��������ڶ��   ����������Ӷ   ���������Ӷ�   �����������Ӷ���   ���������Ӷ�                                                         �������?  333333�?                                      -                      @  �������?      ../BackGround                      $      .      /      0      ;      @   	   A   
   F      K      U      V      [      `      e      f      k      p      u      v      {      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,     -     .     /   -  0   .  1   5  2   6  3   >  4   B  5   E  6   Y  7   ^  8   r  9   y  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M     N     O     P     Q     R     S   %  T   &  U   '  V   .  W   4  X   7  Y   :  Z   ?  [   @  \   J  ]   m  ^   r  _   z  `   ~  a     b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p      q   
  r   -  s   2  t   :  u   >  v   ?  w   5TT>�  J�  N�  �  N�  N�  �  N�  �  N�  �  N�  �  KT>�	  J�
  N�  N�  KTTT:=�  �  L�  N�  MT=�  �  TT=�  �  T=�  �  T7=�  �  �  P�  TT=�  �  T=�  �  T=�  �  TT=�  �  T=�  �	  T=�  �
  TT=�  �  T=�  �  T=�  �  TT3�  LMR�  �  �  LM�  �  LM�  �  S�  P�  �   L�  L�  P�!  �  N�  MM�  L�  N�  MTT3�"  L�#  N�$  MR�  )�%  �&  LMR�  &�%  P�$  �$  R�  /�  &�'  L�%  P�  M�#  R�  1L�%  MTT3�(  L�)  MR�  �7  L�*  L�'  L�)  MMMTT3�+  L�,  N�-  MR�  =�.  �'  L�,  P�  M�  =�/  �.  �-  P�0  LM�  �  &L�/  P�  	�  ML�/  P�!  	�  ML�/  P�!  �  P�!  MR�  �  1H�	  P�  I�  �  =�1  �*  L�/  M�  2�1  R�  �  R�  1H�	  P�
  NL�   L�/  M�2  �  MN�  I�  �  N�  R�  1H�	  P�
  NL�   L�/  M�2  �  MN�  I�  �  N�  N�  R�  1H�	  P�
  NL�   L�/  M�2  �  MNI�  �  R�  �  1H�	  P�  ITT3�3  L�4  MR�  �5  L�'  L�4  MN�  MTTT3�  LMR�  =�6  �  P�!  �  =�7  �  P�  �  =�8  �  �  �  �  )�9  �@  L�  N�  �7  MR�  �8  �9  �  �  )�:  �@  L�6  MR�  &�:  �  �:  �6  �8  �7  R�  �5  L�  L�:  N�9  MN�  M�  (R�  �5  L�  L�:  N�9  MN�;  L�8  MM�  �  �  �  S�  P�5  L�  L�:  N�9  MN�  MTTT3�;  L�<  MR�  &�<  �  R�  1�  �  (R�  =�=  �  �  �  &�<  �  �<  
�  R�  =�>  L�  L�<  L�  �  M�  MLL�  �  ML�  �  MM�  M�  �7  L�>  M�  &�   LM
�>  R�  �=  �  �  �  �  &�<  �  �<  
�  R�  =�?  L�  L�<  L�  �  M�  MLL�  �  ML�  �  MM�  M�  �7  L�?  M�  &�   LM
�?  R�  �=  �  �  �  �  &�<  �  �<  
�  R�  =�@  L�  L�<  L�  �  M�  MLL�  �  ML�  �  MM�  M�  �7  L�@  M�  &�   LM
�@  R�  �=  �  �  �  �  &�<  �  �<  
�  R�  =�A  L�  L�<  L�  �  M�  MLL�  �  ML�  �  MM�  M�  �7  L�A  M�  &�   LM
�A  R�  �=  �  T�  1�=  [      GDSC            u      �����Ӷ�   ����򶶶   ��������Ҷ��   �������Ŷ���   ����׶��   ����¶��   �������������Ҷ�   ��������ⶶ�   �����涶   �������ض���   ϶��   ������������   ��������ⶶ�   ζ��   �������ⶶ��                                     	                                  	   &   
   )      -      .      7      ?      H      P      Y      a      j      r      s      5TT:=�  T=�  �  TT3�  L�  MRT�  &�  P�  L�  MR�  �  �  �  �  (R�  �  �  T�  &�  P�  L�  MR�  P�	  P�
  �  �  &�  P�  L�  MR�  P�	  P�
  �  �  &�  P�  L�  MR�  P�	  P�  �  �  &�  P�  L�  MR�  P�	  P�  �  �  T[     GDSC            \      �����ׄ򶶶�   ����������������   �����϶�   ��������޶��   �����������¶���   ���Ӷ���   ζ��   ���۶���   ��������ƶ��   ���������¶�   ����������¶   ��������Ӷ��   �����������۶���   ��������¶��   ϶��                         ../../..             �   
# FOR DEBUGGING: Set camera zoom every frame
func _process(delta):
	# Set Camera zoom
	var zoomWidth = CAMERA_WIDTH / get_viewport().size.x
	self.zoom = Vector2(zoomWidth, zoomWidth)
                   	      
                        )   	   0   
   7      D      X      Y      Z      5TT:=�  TT3�  LMR�  �  =�  �  �  LMP�  P�  �  P�  �  L�  N�  M�  P�  �  O�  P�	  �  O�  P�
  S�  P�  P�  �  �  P�  LS�  P�  S�  P�  P�  M�  TT�  [       GDSC   /      Q   �     ���ӄ�   �������󶶶�   ����   ���ⶶ��   ���涶��   �������󶶶�   ����ﶶ�   ���ⶶ��   ����嶶�   ����󶶶   ��������   �����䶶   ���򶶶�   ��������¶��   ���Ҷ���   ���������¶�   �������Ŷ���   ����׶��   ������Ķ   ����¶��   ����������������Ҷ��   �������ٶ���   ����������Ӷ   �������Ӷ���   ������������������ض   ������Ŷ   ����Ҷ��   ������ٶ   ��������������Ķ   ���϶���   ����������Ŷ   �������������ض�   ��������������Ŷ   �������ض���   ����ض��   �������������������϶���   ����¶��   �����������䶶��   ��������   ����¶��   �����������ƶ���   ���������Ӷ�   ������Ķ   ζ��   ϶��   �����Ӷ�   ������Ӷ                                                            �?          moveDown      moveUp     	   moveRight         moveLeft      bump             animation_finished              position      tween_completed    #   res://Sprites/Drill/Drill_Right.png    "   res://Sprites/Drill/Drill_Left.png     "   res://Sprites/Drill/Drill_Down.png         res://Sprites/Drill/Drill_Up.png                               /      0      6      7   	   ?   
   @      A      B      I      N      W      `      i      s      |      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +     ,     -     .     /     0     1     2   #  3   $  4   %  5   H  6   I  7   P  8   Q  9   U  :   ]  ;   ^  <   _  =   i  >   j  ?   r  @   s  A   |  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   5TT>�  J�  N�  N�  KTT>�  J�  N�  �  N�  N�	  �  N�
  �  N�  �  N�  �  KTT:=�  �  TT7=�  �  LMTTTT3�  L�  MR�  =�  �  �  &�  P�  L�  MR�  �  �  L�  NM�  '�  P�  L�	  MR�  �  �  L�  NM�  '�  P�  L�
  MR�  �  �  LN�  M�  '�  P�  L�  MR�  �  �  LN�  M�  �  &�  �  R�  =�  �  P�  LN�  M�  �  =�  �  H�  I�  �  &�  �  R�  �  L�  M�  �  =�  �  HI�  =�  �  H�  I�  �  L�  N�  M�  '�  �  R�  �  L�  M�  �  S�  P�  L�  M�  �  L�  M�  ALS�  N�  M�  �  L�  M�  '�  �  R�  0TTT3�  L�  N�  �  MR�  �  �  L�  M�  �  =�   L�  �!  M�  �  �  S�"  P�#  LS�$  N�  N�   N�  LMN�  L�  �  MN�"  P�%  N�"  P�&  M�  �  S�"  P�'  LM�  �  �!  �  �  S�$  P�!  �   �  �  �  �7  L�  P�(  L�!  MM�  �  ALS�"  N�  M�  �  �  P�)  LP�!  M�  �  L�  MTTT3�  L�*  MR�  �  &�  L�*  P�+  M�  L�*  P�,  MR�  &�*  P�+  �  RS�$  �-  P�.  �A  L�  M�  (RS�$  �-  P�.  �A  L�  M�  (R�  &�*  P�,  �  RS�$  �-  P�.  �A  L�  M�  (RS�$  �-  P�.  �A  L�  MTTTTT[          GDSC                   ���Ӷ���   �����Ӷ�   ���Ŷ���   ���Ӷ���                   
                  5TT3�  L�  MR�  1�  H�  L�   LM�  P�  LMMITT[  GDST                 �   PNG �PNG

   IHDR           szz�   sIDATX��ױ� Pi���l��1�WY�E��{��V\�*���@'��"�  �  ������i~��hp8d�a!�� �� ����d�w xkQ����5 !g    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Drill_Down.png-591b7e880a94701968cc8413861e0508.stex"

[deps]

source_file="res://Sprites/Drill/Drill_Down.png"
dest_files=[ "res://.import/Drill_Down.png-591b7e880a94701968cc8413861e0508.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
GDST                 �   PNG �PNG

   IHDR           szz�   �IDATX���A� DQ0��ʺ�lKM��.\��*�֊�'�]��g��߂���,V�� ��S � ��� �� �# &� Xz�
V ������������?�"@U��#�+ ����
�N��)���nD�" S�n�j� �B�0R*�NE�����<�@l    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Drill_Left.png-82b002395ddc026fe5d7534ad664f9c9.stex"

[deps]

source_file="res://Sprites/Drill/Drill_Left.png"
dest_files=[ "res://.import/Drill_Left.png-82b002395ddc026fe5d7534ad664f9c9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
GDST                 �   PNG �PNG

   IHDR           szz�   �IDATX���9� D�����B����DK? ��ڋߟn�y��s��cNT�&��N*0
 ���U` U` �U` `UP &З[U�1t���V*�ڙ(
�4��/c�@�+e0��`�*�:J鱨���dt���9��T>/��:7^:h    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/Drill_Right.png-1d7038bb21c5c0dd8f88aa1906aa4c25.stex"

[deps]

source_file="res://Sprites/Drill/Drill_Right.png"
dest_files=[ "res://.import/Drill_Right.png-1d7038bb21c5c0dd8f88aa1906aa4c25.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
             GDST                 �   PNG �PNG

   IHDR           szz�   uIDATX��A
� U��/��$m5ɶ��!jܙ��l^r�tUge�mLH(32|O�\ٞ�)]����C�7��="z&�"�i�
nY�ujQQ�� (@
P���$n]'=g2�;�    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Drill_Up.png-4f4adb6b3e7913b29bc9f84f7e864675.stex"

[deps]

source_file="res://Sprites/Drill/Drill_Up.png"
dest_files=[ "res://.import/Drill_Up.png-4f4adb6b3e7913b29bc9f84f7e864675.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
      GDST                q   PNG �PNG

   IHDR           szz�   4IDATX���1 0���K�T��,��w;�s              �$�k���    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/MMC Dirt Background.png-2cbe8d1803b01238a217161ff59488a6.stex"

[deps]

source_file="res://Sprites/MMC Dirt Background.png"
dest_files=[ "res://.import/MMC Dirt Background.png-2cbe8d1803b01238a217161ff59488a6.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST�   �            c  PNG �PNG

   IHDR   �   �   ��g-  &IDATx��]M�G}�nt��~�t��
��f�����,:��@^#t�X�(������ۂ%u0;|�t�m}���Ę�COT���Ȫy�Bt<�&+3�^eTdddT��ƕ3 p����Î�FN^I�����g�����J'��sR(�ÿ���D/v�/��k�	��͍2��tV��u��t���Q�9�&�
�I�������O��[iVz�|����g�	/vw��uڋ�]��|L�:�����XN�^_k� Sp�����Ðt��zu:��> �N��x��{�y���(���~�����g�6�u��˯ԫ��u��{�f�"|�����s$���V9�̐�>�+8��gW#�z��Y������t�Wϟ5��,H�Wϟ��I�F EH�����p�v���Z�
^��?���餚�!y�PZ�u��k����y�nV�U�r�BnO��G[��u	a��!���n����B�Pr�͗�B-A����?�n�ǐx������4Dغ��V�al$D�YB��|���p�P� �~hY�@�����/1)���#Lful ��Y�ߧ{���A#<���tV��q���o�˿~A���H�Ƴ����u�v��O����Ow���X��ٚC��u�1��x:��9J�|7_��%Д��q�������k���r�ʧ�mkt�bw�U��C�B�h�j2����4�?���o�_��Ɵ�]d�z�
�G�X��Yn�������Z���g'��.�++���N�mǉ�yv�X���r�A��� ��A~�u>N�rC��kXu���������8�˹�`��l����vM�FXu���قg/��v�b&�7��%+�>�b&H����4�n�ʫ�+�fB�n�G������ϳ�"i�U��u�<����}�}�=ȲXSe}}uV���в��ƪ�ʴ-���W�j;��k���׮/_��H�/ƪ��vr^�R�S�.�vţ�Vk?�2���4>���U篵���� +�N�c.30�]E��A�[vN0������]e���P�[v^mT=�@��{����֩�P��n�䏶��z��3�O�z5���@{�W{c�p+�e��_u�z�[�X^��vH[�[���ZW��Wrn�7�o��Xu���(ï�\����AHMxƳ~�kQ�ѱ��kZ��j�W���h�a��,���(�+�:�a�����/@�ϔ[Wt��Wh@/�Ú��?v�Zn��9Q}�:/�Ś��?vb[n��yQ}�V�s�� U���}Q�a�B�Ο�k�:?п����_�y��%�����Ѻ��Xu�V���
���,b�XQ���u��Z+��#V��"������ӟ[yu�&$ߛ>�|V����S����������;u��"$���{Q���f+��ǉ6YV����oͱ���lE����V@*�{H��8�츍��h�:K�yگh-�?rb43!��\������"�E��:k�P���]j����ƕ3�]��}X�ԡ��*|a'�<��rt���o,�6(�	lg��E��M���~�:�s�����I 01(R �D"�H$�D"�H$�D"�H$�D"�H$�D"�H$�D"�H$�D"�H$�D"Q��X�g���<�(���?���z(�>cU��@ ��Y6V�(L�d�T������"�J~+��GZ#/��X�	h�n�������֔�έ���������?�}[��"�ض��;/��+g��O�^���oӉ�����uo[�v��ժ��k�u���H��l@o������w#zk{kC�(�{�"L�.�On](�5�3Am��>���g���>�� ?���Op��ã����ǳ�K�J���O�>x�ww>P>H���0B�/u޿~�%�Q`m����)�훧ۿЀZ��B"H|�WO�Y%�F��Z�ú}.(�_kD��-+?7�l4��i�
��ּ�����2�thI�v� ���s����	\�K#̄��^<(��BQ�On]hkޚ�ӯw�c�n�Z+G�`g�k ���W���ţ�kq����H���k��|�|�U�kR){�|;O��Z�>?��m�ɹ'�.4Z��f�3�6��T�6�t뜵�U�&�RN�	i����Z�f-L]��I=\��n����) g�1͗��k;����#��	�������kmq+���
E�X���	D�X���s���5�n�L �kd{�6,m�5�m�w�?�l0,����ÿ��LZ����WO���S� �Qq�Q������C�f�ǴO�ɭ���G����Q���l�r��ZkgQ��psc�Mzo�݋�� ��:=�~�c9��a4,W�5��花����޵Z۵�x�ʮO-�`�iDl&@4��l�s�a5�r���f�g!����r^a6ҧ�Ԃ�5m%�[�G�绻����LI��Tx�σ�?��R�t�`��2cɤ����j��7 l�5H�z\=������&��ᝧغ�cr�uS!f�k�j�]o�[��zp"��\��>���`nr�uo�������@˹��b��@w��}q���J9�[�d��d���yc�a�n��0�$�� G���B����9M	1��ѯ�F�g���xԙOҸ�5
IA*�n��-zX.�g�/��X`�H~%�@?/o�$�=8�4�g�	���xTh4������2c������mv� �����Zt�4#Q��N��5Sp�=�]?hm���i�j���ڔ[�>pdZ�x��̈́X��圎�-_��"-*�Ebx˵��φϷT����
�d�5B�a{jG�D�~��~ݺ�����'�.�y�!���]���5%t�Sq<�Sq]>=-����qt_�?G˼��]1�$ڿ��7a�ב���<^���؍��ֽ|x�i��x]SrQ�vT���5tEWK}��F0w/�T��!�k��.�?�9B�p����[�-�	[󧵗ְ�B��.������Q5�+���6�"d�-�{�x#��s��plM�Wko�.#�h��}����Ĩ��~��ȫ\ۏ�Mt����-Kw��?G��A���Mا\tx�o����P}]~�����`S�ei����Y\]�,
��P�]��g@�Whi�G�ƿ��b�ɀD+n�{�����?Ƒ����})��'�9P���. 
���Z�����KG��}��X��߅��Rb^�EH~_�~�-[���43�3�����kE�
<��UO���_�E��7���o}�.y-M��,�{ �*�hΎ�A���rm�ڹ�����[(Tu�1G�E#jS%��-�\,��� ������#'F#�Z@��ǐ��f���v�߼�؟en�ۙi���t���_�jY�d�����Sw�7� jG4�p�8�G97�q��q��b�"u��@_�I/Uk,�V��4���?F�.�Vy,ZG$�[�?z�W��1�h��
��A��)��D"�H$�D"�H$�D"�H$�D"�H$�D"�H$�D"�H$�D"�H$�D"��bd,V3NzQFΌU�fe�e=�H����� ��,��?� &V�B�^L�Zdp��%��W�#����K,���H�@V�T+���������m`9q!�ȿ�O��5NAw�Ҽ�k�@f���?��X��PV}��䓽C��!�/�#����@�p�罽E���nvh$�a��۞�{h�D�&je#!�/��O�eH�����.�=vC�����l�c��|Sֹھ`�[d�x��Z���w��f�=b��Òo���N��X�_c�H��e�/6+�����g'��C�`{�%���!���o�u!���q�w3ѐ��Ͽ@���ݤU�߮���~�L��L�wk[v�Ƽ�pH��	 �������V��U�eϞ����p�ǒIO�g�tAm�m�	C#�ǿ�k}���Ci/_��H�/F��.�����Z�yX-s�������(H���?0Ҫ���7�ӭ~>��K#��؁����;c�jS.�-�dt+$��'�H�n����G3��L�>QS�\P�ʻ�=E���!�������5����%�U���,�-7��	��3�늮�f�'���2�Ћh��e���tvbZ�n�	U_�p�ɿ}|��[]0�	j��y��Mw�o�;�\� �/��,��+�n���Ѻ��H���_��Xg���Y�z�����Zy�����??^6�&$ߛ>�|V����O����/B�=Ϸ�*�j�_Ї� H��o�zb�b���`�e�nG#�ÿ�	�Ě=���x�)-"$��t�ʙ�.��>�E���v���^��X2���ei����2��H�    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/MMC Grass & Dirt.png-accf55d7daa90d209a45578a07a935bd.stex"

[deps]

source_file="res://Sprites/MMC Grass & Dirt.png"
dest_files=[ "res://.import/MMC Grass & Dirt.png-accf55d7daa90d209a45578a07a935bd.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
    GDST                 �   PNG �PNG

   IHDR           szz�   �IDATX��Q
�0C�x�i��/��	M�TF���oٚ����Ȟ9�G�P�餀,�f1���B�	<�����H�!��B�XG�]E��8���ޔ��@� N@5�`=���@	�@	���X]����.�
�_�f    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/New Piskel (1).png-6c45fe6c0d3052962339c2c87f2d1cd5.stex"

[deps]

source_file="res://Sprites/New Piskel (1).png"
dest_files=[ "res://.import/New Piskel (1).png-6c45fe6c0d3052962339c2c87f2d1cd5.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
          [gd_resource type="TileSet" load_steps=2 format=2]

[ext_resource path="res://Sprites/MMC Grass & Dirt.png" type="Texture" id=1]

[resource]

0/name = "Dirt"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 32, 32 )
0/is_autotile = false
0/occluder_offset = Vector2( 16, 16 )
0/navigation_offset = Vector2( 16, 16 )
0/shapes = [  ]
1/name = "Grass"
1/texture = ExtResource( 1 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 64, 0, 32, 32 )
1/is_autotile = false
1/occluder_offset = Vector2( 16, 16 )
1/navigation_offset = Vector2( 16, 16 )
1/shapes = [  ]
2/name = "Stone"
2/texture = ExtResource( 1 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 128, 0, 32, 32 )
2/is_autotile = false
2/occluder_offset = Vector2( 16, 16 )
2/navigation_offset = Vector2( 16, 16 )
2/shapes = [  ]
3/name = "Coal"
3/texture = ExtResource( 1 )
3/tex_offset = Vector2( 0, 0 )
3/modulate = Color( 1, 1, 1, 1 )
3/region = Rect2( 0, 64, 32, 32 )
3/is_autotile = false
3/occluder_offset = Vector2( 16, 16 )
3/navigation_offset = Vector2( 16, 16 )
3/shapes = [  ]
4/name = "Silver"
4/texture = ExtResource( 1 )
4/tex_offset = Vector2( 0, 0 )
4/modulate = Color( 1, 1, 1, 1 )
4/region = Rect2( 64, 64, 32, 32 )
4/is_autotile = false
4/occluder_offset = Vector2( 16, 16 )
4/navigation_offset = Vector2( 16, 16 )
4/shapes = [  ]
5/name = "Gold"
5/texture = ExtResource( 1 )
5/tex_offset = Vector2( 0, 0 )
5/modulate = Color( 1, 1, 1, 1 )
5/region = Rect2( 128, 64, 32, 32 )
5/is_autotile = false
5/occluder_offset = Vector2( 16, 16 )
5/navigation_offset = Vector2( 16, 16 )
5/shapes = [  ]

        [gd_resource type="TileSet" load_steps=2 format=2]

[ext_resource path="res://Sprites/MMC Dirt Background.png" type="Texture" id=1]

[resource]

0/name = "BG1"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 32, 32 )
0/is_autotile = false
0/occluder_offset = Vector2( 16, 16 )
0/navigation_offset = Vector2( 16, 16 )
0/shapes = [  ]

             [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

radiance_size = 4
sky_top_color = Color( 0.0470588, 0.454902, 0.976471, 1 )
sky_horizon_color = Color( 0.556863, 0.823529, 0.909804, 1 )
sky_curve = 0.25
sky_energy = 1.0
ground_bottom_color = Color( 0.101961, 0.145098, 0.188235, 1 )
ground_horizon_color = Color( 0.482353, 0.788235, 0.952941, 1 )
ground_curve = 0.01
ground_energy = 1.0
sun_color = Color( 1, 1, 1, 1 )
sun_latitude = 35.0
sun_longitude = 0.0
sun_angle_min = 1.0
sun_angle_max = 100.0
sun_curve = 0.05
sun_energy = 16.0
texture_size = 2

[resource]

background_mode = 2
background_sky = SubResource( 1 )
background_sky_custom_fov = 0.0
background_color = Color( 0, 0, 0, 1 )
background_energy = 1.0
background_canvas_max_layer = 0
ambient_light_color = Color( 0, 0, 0, 1 )
ambient_light_energy = 1.0
ambient_light_sky_contribution = 1.0
fog_enabled = false
fog_color = Color( 0.5, 0.6, 0.7, 1 )
fog_sun_color = Color( 1, 0.9, 0.7, 1 )
fog_sun_amount = 0.0
fog_depth_enabled = true
fog_depth_begin = 10.0
fog_depth_curve = 1.0
fog_transmit_enabled = false
fog_transmit_curve = 1.0
fog_height_enabled = false
fog_height_min = 0.0
fog_height_max = 100.0
fog_height_curve = 1.0
tonemap_mode = 0
tonemap_exposure = 1.0
tonemap_white = 1.0
auto_exposure_enabled = false
auto_exposure_scale = 0.4
auto_exposure_min_luma = 0.05
auto_exposure_max_luma = 8.0
auto_exposure_speed = 0.5
ss_reflections_enabled = false
ss_reflections_max_steps = 64
ss_reflections_fade_in = 0.15
ss_reflections_fade_out = 2.0
ss_reflections_depth_tolerance = 0.2
ss_reflections_roughness = true
ssao_enabled = false
ssao_radius = 1.0
ssao_intensity = 1.0
ssao_radius2 = 0.0
ssao_intensity2 = 1.0
ssao_bias = 0.01
ssao_light_affect = 0.0
ssao_color = Color( 0, 0, 0, 1 )
ssao_quality = 0
ssao_blur = 3
ssao_edge_sharpness = 4.0
dof_blur_far_enabled = false
dof_blur_far_distance = 10.0
dof_blur_far_transition = 5.0
dof_blur_far_amount = 0.1
dof_blur_far_quality = 1
dof_blur_near_enabled = false
dof_blur_near_distance = 2.0
dof_blur_near_transition = 1.0
dof_blur_near_amount = 0.1
dof_blur_near_quality = 1
glow_enabled = false
glow_levels/1 = false
glow_levels/2 = false
glow_levels/3 = true
glow_levels/4 = false
glow_levels/5 = true
glow_levels/6 = false
glow_levels/7 = false
glow_intensity = 0.8
glow_strength = 1.0
glow_bloom = 0.0
glow_blend_mode = 2
glow_hdr_threshold = 1.0
glow_hdr_scale = 2.0
glow_bicubic_upscale = false
adjustment_enabled = false
adjustment_brightness = 1.0
adjustment_contrast = 1.0
adjustment_saturation = 1.0

            GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�  tIDATx��{p�U�����#�t��y�@y@�	��D�8;#ಳ���S3���FJ�*�-�]fQ�qx�K��B��$�y����o�AB:�n���U����{�=�|����ۢ`�<<^? �V����.%!L��(�K���m�e5p,� ZD��y x�~��h�=#@u�48��n����@��1��Z�^��$�} j��V��R!�tK��/�"$��^�>��d�=R�����% �7�J�>!Im�	�Ԛ��x !$Tj:c�DB��������4BSd4h ��IH*���x �Tj��$ ����I:��@�J�3�U߅�R���N%-�B�A �V�u�it���J@�7������I � B��В`b��b�3�}��bg��b,	���U ����,̞2�IwR�3!����}���ưm~��1-�����P~�������49�Dϸ;�pD��L徱�!QV�ƻ{�8\�¸O�N�w��[���-�Ⱥ��<�`�0+w����,���u�$�n��ɳ�q�7�������E�ֲ�������w����͜1Cx����Kouk�O̠�dӑx�2��?P��3�ә~GcF����+hs��s\w:�&�&)���w����n���2�r()�'{���!vJ����Ql8T��/wk�����=U,~�I�f�MO��;\�N��Z��@�:[����]��Z������-G�¶�ym�"�h�24����7����[��{:��h������*�S�7}ċ�:���t��Վ�ew���#^�<�u2S�-�LM�y[�KfW=��^{�1���=�8ߝ6�݇������p����,|��&�MU���Ǝ�鋊������sOSR��ʷ6����L����0i�w ��}�xsC�rŨiO) &������i�p�C����/�S����>�MIQ9Y��e5�%Rn���%�ܒ��?�s����OL��?���ƤS�	�������?�(����)3�����x�Lv��"k�U��T#?�7��fݏ�d��i闁})��_���6���Q���geY����U'բg�ܙ��7���}��s�%���P��������n�݌�'S���y���d��SQ����\������j���4^j۾k�9	.[<I�a�S=��ht�t��[==��
+��BRiX�xn�r":`������+il��il���+W���)%�Ft���t�;�l��!�
����y��Y��Et@C��L��Iy���o3��Rȴih����?�MYEK��a3i��@b3iY2-���>�xwĺ
���o֡�^x0?�J$/<��FR��o�
�_@����K��vwg'SZ�wJ�VSZh���d^[�������F���e�3HO2�ZG��xr\�YV�&-�Ml=Vω����h)�Lb��t�N����xm��5rb5��ç{��u,`�k{M�Z�Z^�;�������M����[�n,�5�$���d# ��Iz������������2��xL�`oy�%�ydX��={�E1g�#�zx67ld��lF�%�m���'51�y�ȴD�O�fㆍ�zx6sf?¢��8{�,V#KJ�bQ�W��3��L����e�ϗQYy �������}{�:���Q����%�^PBqfR����۷�7^��3	RYy��?_���e��d����3��a�&�������ԣ|׮�d��<מ�$	$I�kO�)w��]�z.aMMM���#�`Xr�����+�O�N�\�����6��ËV~���WsG���v@c���]��撗��{)I3g��pU�)��UfΜ�$uW1/?���\�_v�%>�KZ��O�Q���rJKKIM�SXX����m���Tc�2w�j�m��|�/),,$5�N���X��+���C��$EO7�����iy����"�����h�6��m���~����\����ҫ�bԪQ�3;X��WT6��o��e�+������0hT��Z�Z"�v��"�+�Ŏ���	�
k�T�fOV�O@[�F��٠' �i<@PVX�eM�r��y#�����I�#@��%C�Q�N�ˏ�����]��OyC;m�9J���OK�f�b3i����L���'4������kvr�Çդ%+�Ș��nuZ=���z�Q�aaL���r���-����.��ǊI�.(����p�9��ΠY�ރ��i8Py�w�Vu{f���g�ΨtK���?�G�-��mrA
���|P����[x�J.?-����ߓM��!}X�Q;  ˨U=á�+J�9<gZѫ%�aBU�$H��[��owV��㟦�R���J�aW�j	�J����uԨ�`�e5QO�m�.����b���]^j���zW���U5�\W���j.�P�$��E���4W^jb���a5ii�� 5�P^]��9��;��Cq��\`p����AZ��+/�.�BWً�BH2j0i�u����+#�9s��O{���{��d��ߡ0�������'eq�e��ZL:5&��I����D���Nez���.��p�H6ki�hl���q���|A\� ��~v�i۾0�B��Ț#'�5+��Q�V���.����G���o��W��I�A��?�>�0꣱.|� /��DA���g �ƌ�����D^Y��O�%�epǾcd���x�L�*�W�����hQK��^���v^�`;���}�����`�%O�&�n�w;+8Zۿ��2&+�N�%�f⵵[X��O1�P����� ZC���ՔU�0�<Z2���8}.�6:���a6M��'����ʲ�ֲm�����Keԓ`84j5ߛu?���5�Ls���O5r�����mx�Oe�E��(L�P��Ĕ�vR���;Y���������]�`�ЅZ�b�]�̚2����U*�BeSU�\Էxhl������㗑C
mW��YT���Ua1h��Ǟ�'�j`� �'��AY��c����9RFP�q��ע�i(�Ϧ8?���3��"����h������q�������0�G"�;B���8x�O���L�Q��b#-�J�لѠC-IX-��rG�9�����t���BC� �=���VP�aVe�~3���o������@���SP�
� !y��m᪭
���� �o�;@���V�߹]�ZQ9���M���$��(�,	i�w{����ֿj'�� ^g�����U�̑ �j��ɠ�<(J!$��c��A�Og��n��PB�;��)!IV:P���V�g�>�*���d�Ƿ�`�-1u>�ۇ*=o n�O��Rp�9�j�P=B�>�������w���
��"��eY�Q�Ѩ��1>��g�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  [remap]

path="res://Scripts/Grid.gdc"
         [remap]

path="res://Scripts/LazyKeyboardMovement.gdc"
         [remap]

path="res://Scripts/LevelCamera.gdc"
  [remap]

path="res://Scripts/Player.gdc"
       [remap]

path="res://Scripts/Singleton.gdc"
    �PNG

   IHDR   @   @   �iq�  qIDATx��{pTU����~���I�A	$2$�H E, 
(�>��ؙ\vvqtwj�ف�}��H�S�̨�*����0��
��S^�
B!$��t������!��N��t�_U�n�9�;������sסO�'}��QA!~'i�E�Dw2��P��w=�%EY}���c�˕�ɢ�!u�$m�)��qz�ȷD�~F����y��ly���n\s�i�}�����$!�Pi��4:$YF�V��g%H0��u��� *�.����zr�W֥Ô���V-���>��Z�G�d�����B I2*��FK��A� !��_�#1��'��:� �MH��V�ܯ~\mV���-�HZYZ(@Vk���H�
�V�@�ZYZ(Ձd��V����akPxP�������:[�$�����KJ00u|	�Y�^��43u|	I	�7��U ��������=e<��*bX�@�(�¦���C��ŢG�[6!AE���%v)g���X[�EϘ;�hh�L徱E!Q^�ʻ{�9|��qy&�*�����OEu]�r��Y�-�Ⱥ�8x����F�2����,���u��n�ɩs�1�7�H���w�/���/��x=��3���ɜ�y����ov)���������%\� ��6��%-A�̒L�����y<��JZ�Θ��i޴��HN�g�;�x{Ou��� �r���;�L�@3�Ņ�3f�������<����%�"91�iG�R�ض ����8�L��2��cu̽+��/[��}��˖�u!�tȼ��XS�]k�	:5�������3��t��ڝ��W������(�]�7uĊ�:��� �
��֨ew��#VD��j���L�NO��Z��CfG���N}�Q��_>�ߟ6�݇��ݻ��t�
z���/z��&�Mu���F[Ԋ�Fe���&;���S����͍�<^����9L�= ��c+���\1bړ
���6��?������_�������%���wSZ\@^N&�y���*7oiT�`^� ����z�<���'��{�/`Ъ��������x��;��r4[�eFR��b�̛�ί/�v� v�n�G�����qx�,�t��5�}2�7�A�u�/p���{x�e�Y�e��9�9�'�X2o&��>?p�W��� �dֿ�sj��<���@ׯ�o���	P���yё��Ǡ��l�wy���}l����l�WZB��h�v�˗�C�լ�v��� ���o�x��W7�|�U�N#�j�/�׫���=��qŅ���*�B��#�mn��k��=�4lް���E���'b�����\�:��6_X44Y�6�1� ��{;3� �lSM�']a��ǻ)��a�LML�OLK�P^YÇ��7��� ���:Ԓ�s�T���QK
���:�����(p��
����ݹ)��ҺՔ��;7�W�n�bÕ^�G4�ӧ{Y��2��=�Ѫ$��CI��AC����c���z����df��dHZ�/�k���`m�+ǁ�8�>?�toD�#^�u���8/�E�1 ��ƽ��ܓ�ʻ{����ͅ�����\`����J�(+�������hvz{(�T<��`Oq�ed�8w��-f��G���l6n�Ȃ���HY.=QGzb�����,�������l��~�ŋs��9��q,-+�F��sH,^�b�n7�~����� 8�N^�u����������dV/,e��RJ����Oaf߾�����8��A����,��r�n7����{8���b@AEE��[��]�< ���|s�$�$A�9�������}�X,TTT �`pJ���쀦k�O�V2]���d�~�ds�ф�{t��d�{|��hlss���|

��.%Ib����>v���̙3���*����ū���Ob�
+����2����b�op���<��̝�q�ͬX����HO7S�@+W�@A��'�P=6A�3m����xfZ���!pz�l=ZǺ��!��=�������yj�`^x�e�4*E��e�>��*K������p���O��
�Z����9|�`�ח1^[_�8u9d_@a͞j��&˨�j���B�Yb�7��z5�PX�eM�r#�y3��'�b@�-@����Q�I�Ë�����\�쥢������e$�(�H�d�`2h04�����j����r����7ٹb�`4h�I�c� c�<-.~�ցee%1:��c:���fN��|`ţ%dܰ(�j�`ux9��ƀ-9ƞm7Up��*�����x��O�?��Ia�?�@٦���RY��P������_Tauxivt]��=��؋%��|� *��r���uV%�Ft*	w���,	2���l�;+�����|J�R�%A ��N%��%ꬮ�A�,��C����lms`��9,f���
���7�ʜ�C%K�\qt�7��\q��%�7��a����.u��h���j�-��BÇ���n��7�UO|s�������iq�P�}к0{i�?4! 9N�A�"N�U͎�B1<#���z�������)&��=�2�8U߽����2No��x�
�V�ɠ!��s�^�U���K=wp�Z�:<��khs�hluc���:�8<~?W�^v�m
Y�(+�Lck���Ԭ�7G�5����3�s�v~��I���ǐ�<�����~(�xk���ǋk61,#��(�v:G-D{$xXF"/��ԫ���0�c�1r�SY2o&*Y���g�m+<RT��_�c�p3�}����EW>�
Wo����ҧf�o��՝���[��f���O��m2���-�����eȩy#�@��<�t���5L9���C�����r?O�����lb��!�pR�--,e-�v�J���>TF�	�B�R�Y�3����i����t#'j[8Uߊ�~W&Rtj���$�s��2�Lj���6;�?���>��?�%rG'�'t��e&�UĬ)�_2�,*TYlT_qP�좱͍��M�ˇ� Th�vL.I�F�z�L�^MZ�s��,���IK@��@�/��a�_��H9���;8���VMqa.%����#7�L�)��'���T�5r��y�WTs�L5�(z�pDuF(�O�������4j�&2R�$���kQIƤ�p���N ����fw���LC��/�9�͢RP��(J�������[���op+P�����B=�_&���i�B��t���w����a��k�.	X�(J��q}'ZA0���q�(J@�j���5jԨUw|d�!�m�J�?n{(
N����s�o�~�]��S}|�dP�=.%�B�;��h��Y?>����Bvۮ��o=,�i]��IZ�w��˳��lY��u���NCWj^��.%e���O-T&�(:��s������|�3�y?��c�ٓ��Z}�s�����J~u�qK    IEND�B`�      ECFG      application/config/name         Project MMC    application/run/main_scene          res://Scenes/Level.tscn    application/config/icon         res://icon.png     autoload/Random8      .   *res://Scenes/Subscenes/Singletons/Random.tscn     display/window/size/width               display/window/size/height     @         display/window/stretch/mode         viewport   display/window/stretch/aspect         expand     display/window/stretch/shrink         1      importer_defaults/texture,              compress/hdr_mode                   compress/lossy_quality    ffffff�?      compress/mode                   compress/normal_map              	   detect_3d                flags/anisotropic                flags/filter             flags/mipmaps                flags/repeat             
   flags/srgb                 process/HDR_as_SRGB              process/fix_alpha_border            process/premult_alpha             
   size_limit                  stream            	   svg/scale        �?   input/moveUpx              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  W          unicode              echo          script            input/moveDownx              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  S          unicode              echo          script            input/moveLeftx              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  A          unicode              echo          script            input/moveRightx              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  D          unicode              echo          script         )   rendering/environment/default_clear_color      '��=["/? w?  �?)   rendering/environment/default_environment          res://default_env.tres                 GDPC