GDPC                                                                              #   D   res://.import/Drill_Down.png-591b7e880a94701968cc8413861e0508.stex  �n      �       k�U�j�9*��-�CɎ�D   res://.import/Drill_Left.png-82b002395ddc026fe5d7534ad664f9c9.stex  �q      �       �TE��?)����ͮD   res://.import/Drill_Right.png-1d7038bb21c5c0dd8f88aa1906aa4c25.stex 0u             i��
3��(���]�G@   res://.import/Drill_Up.png-4f4adb6b3e7913b29bc9f84f7e864675.stex�x      �       ��6Ws哕0��x�L   res://.import/MMC Dirt Background.png-2cbe8d1803b01238a217161ff59488a6.stex �{      �       �� h,���$��%/�H   res://.import/MMC Grass & Dirt.png-accf55d7daa90d209a45578a07a935bd.stex�~            \� ��O�� 3qQ�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��      �      �Q!����|M�   res://Scenes/Level.tscn �
      @E      ���=�����z&c؄$   res://Scenes/Subscenes/Player.tscn  0P      �      �)7�������a]���(   res://Scenes/Subscenes/Singleton.tscn   �W      �       աҌ��G�7إ�P�(   res://Scenes/Subscenes/Temp_Player.tscn �X      �      �kt�*�E����T�h�4   res://Scenes/Tileset Sources/Dirt Background.tscn    ]      >      AR�+�#)Q$N�0   res://Scenes/Tileset Sources/Grass & Dirt.tscn  `^      I      RW��)\g��XE1�   res://Scripts/Grid.gd.remap ��      '       �XF��陃�֦���   res://Scripts/Grid.gdc  �`      0      �b���6�vU�q�r,   res://Scripts/LazyKeyboardMovement.gd.remap Ф      7       M�ÎJ�=No��|�\I(   res://Scripts/LazyKeyboardMovement.gdc  �a      �      >cc0Mŀo�4mG���P$   res://Scripts/LevelCamera.gd.remap  �      .       iA #,4�+�9��\�    res://Scripts/LevelCamera.gdc   �d      
      %��|޽W*����C[    res://Scripts/Player.gd.remap   @�      )       <y;�9Y;�k��S�   res://Scripts/Player.gdc�f      {      %1@�`/9Ȯ�6x��    res://Scripts/Singleton.gd.remapp�      ,       Hܭ���G18�!�   res://Scripts/Singleton.gdc 0n      �       �08j���G8S��م2,   res://Sprites/Drill/Drill_Down.png.import   �o      P      [� Y}��{U��:�i�,   res://Sprites/Drill/Drill_Left.png.import   �r      P      p�����9c��!�I,   res://Sprites/Drill/Drill_Right.png.import  0v      S      ��&dҦ�����V5(   res://Sprites/Drill/Drill_Up.png.import `y      J      Z.�\omE�_iAxEp,   res://Sprites/MMC Dirt Background.png.import@|      c      㝻(B"�s�[8Q�,   res://Sprites/MMC Grass & Dirt.png.import   Ѓ      [      ��^�I(\�1��e    res://Tilesets/Dirt & Grass.tres0�      �      ��~���XT:��f�Ld$   res://Tilesets/Dirt Background.tres Ј      �      U �UN�&XҺ%� F   res://default_env.tres  ��      
      �?�թ+Ev�/h�!b�   res://icon.png  ��      �      �~dg`!����I�҃   res://icon.png.import   p�      .      y/�f�\�>w�ۨJ	   res://project.binaryP�      �      �s�>������?w~    [gd_scene load_steps=5 format=2]

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
_sections_unfolded = [ "Cell" ]

[node name="Player" parent="Grid" index="0" instance=ExtResource( 3 )]

position = Vector2( 0, 0 )

[node name="Ground" type="TileMap" parent="." index="1"]

mode = 0
tile_set = ExtResource( 1 )
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
tile_data = PoolIntArray( 327666, 1, 0, 327667, 1, 0, 327668, 1, 0, 327669, 1, 0, 327670, 1, 0, 327671, 1, 0, 327672, 1, 0, 327673, 1, 0, 327674, 1, 0, 327675, 1, 0, 327676, 1, 0, 327677, 1, 0, 327678, 1, 0, 327679, 1, 0, 262144, 1, 0, 262145, 1, 0, 262146, 1, 0, 262147, 1, 0, 262148, 1, 0, 262149, 1, 0, 262150, 1, 0, 262151, 1, 0, 262152, 1, 0, 262153, 1, 0, 262154, 1, 0, 262155, 1, 0, 262156, 1, 0, 262157, 1, 0, 262158, 1, 0, 262159, 1, 0, 262160, 1, 0, 262161, 1, 0, 393202, 0, 0, 393203, 0, 0, 393204, 0, 0, 393205, 0, 0, 393206, 0, 0, 393207, 0, 0, 393208, 0, 0, 393209, 0, 0, 393210, 0, 0, 393211, 0, 0, 393212, 0, 0, 393213, 0, 0, 393214, 0, 0, 393215, 0, 0, 327680, 0, 0, 327681, 0, 0, 327682, 0, 0, 327683, 0, 0, 327684, 0, 0, 327685, 0, 0, 327686, 0, 0, 327687, 0, 0, 327688, 0, 0, 327689, 0, 0, 327690, 0, 0, 327691, 0, 0, 327692, 0, 0, 327693, 0, 0, 327694, 0, 0, 327695, 0, 0, 327696, 0, 0, 327697, 0, 0, 458738, 0, 0, 458739, 0, 0, 458740, 0, 0, 458741, 0, 0, 458742, 0, 0, 458743, 0, 0, 458744, 0, 0, 458745, 0, 0, 458746, 0, 0, 458747, 0, 0, 458748, 0, 0, 458749, 0, 0, 458750, 0, 0, 458751, 0, 0, 393216, 0, 0, 393217, 0, 0, 393218, 0, 0, 393219, 0, 0, 393220, 0, 0, 393221, 0, 0, 393222, 0, 0, 393223, 0, 0, 393224, 0, 0, 393225, 0, 0, 393226, 0, 0, 393227, 0, 0, 393228, 0, 0, 393229, 0, 0, 393230, 0, 0, 393231, 0, 0, 393232, 0, 0, 393233, 0, 0, 524274, 0, 0, 524275, 0, 0, 524276, 0, 0, 524277, 0, 0, 524278, 0, 0, 524279, 0, 0, 524280, 0, 0, 524281, 0, 0, 524282, 0, 0, 524283, 0, 0, 524284, 0, 0, 524285, 0, 0, 524286, 0, 0, 524287, 0, 0, 458752, 0, 0, 458753, 0, 0, 458754, 0, 0, 458755, 0, 0, 458756, 0, 0, 458757, 0, 0, 458758, 0, 0, 458759, 0, 0, 458760, 0, 0, 458761, 0, 0, 458762, 0, 0, 458763, 0, 0, 458764, 0, 0, 458765, 0, 0, 458766, 0, 0, 458767, 0, 0, 458768, 0, 0, 458769, 0, 0, 589810, 0, 0, 589811, 0, 0, 589812, 0, 0, 589813, 0, 0, 589814, 0, 0, 589815, 0, 0, 589816, 0, 0, 589817, 0, 0, 589818, 0, 0, 589819, 0, 0, 589820, 0, 0, 589821, 0, 0, 589822, 0, 0, 589823, 0, 0, 524288, 0, 0, 524289, 0, 0, 524290, 0, 0, 524291, 0, 0, 524292, 0, 0, 524293, 0, 0, 524294, 0, 0, 524295, 0, 0, 524296, 0, 0, 524297, 0, 0, 524298, 0, 0, 524299, 0, 0, 524300, 0, 0, 524301, 0, 0, 524302, 0, 0, 524303, 0, 0, 524304, 0, 0, 524305, 0, 0, 655346, 0, 0, 655347, 0, 0, 655348, 0, 0, 655349, 0, 0, 655350, 0, 0, 655351, 0, 0, 655352, 0, 0, 655353, 0, 0, 655354, 0, 0, 655355, 0, 0, 655356, 0, 0, 655357, 0, 0, 655358, 0, 0, 655359, 0, 0, 589824, 0, 0, 589825, 0, 0, 589826, 0, 0, 589827, 0, 0, 589828, 0, 0, 589829, 0, 0, 589830, 0, 0, 589831, 0, 0, 589832, 0, 0, 589833, 0, 0, 589834, 0, 0, 589835, 0, 0, 589836, 0, 0, 589837, 0, 0, 589838, 0, 0, 589839, 0, 0, 589840, 0, 0, 589841, 0, 0, 720882, 0, 0, 720883, 0, 0, 720884, 0, 0, 720885, 0, 0, 720886, 0, 0, 720887, 0, 0, 720888, 0, 0, 720889, 0, 0, 720890, 0, 0, 720891, 0, 0, 720892, 0, 0, 720893, 536870912, 0, 720894, 536870912, 0, 720895, 0, 0, 655360, 0, 0, 655361, 0, 0, 655362, 0, 0, 655363, 0, 0, 655364, 0, 0, 655365, 0, 0, 655366, 0, 0, 655367, 0, 0, 655368, 0, 0, 655369, 0, 0, 655370, 0, 0, 655371, 0, 0, 655372, 0, 0, 655373, 0, 0, 655374, 0, 0, 655375, 0, 0, 655376, 0, 0, 655377, 0, 0, 786418, 0, 0, 786419, 0, 0, 786420, 0, 0, 786421, 0, 0, 786422, 0, 0, 786423, 0, 0, 786424, 0, 0, 786425, 0, 0, 786426, 0, 0, 786427, 0, 0, 786428, 0, 0, 786429, 0, 0, 786430, 0, 0, 786431, 0, 0, 720896, 0, 0, 720897, 0, 0, 720898, 0, 0, 720899, 0, 0, 720900, 0, 0, 720901, 0, 0, 720902, 0, 0, 720903, 0, 0, 720904, 0, 0, 720905, 0, 0, 720906, 0, 0, 720907, 0, 0, 720908, 0, 0, 720909, 0, 0, 720910, 0, 0, 720911, 0, 0, 720912, 0, 0, 720913, 0, 0, 851954, 0, 0, 851955, 0, 0, 851956, 0, 0, 851957, 0, 0, 851958, 0, 0, 851959, 0, 0, 851960, 0, 0, 851961, 0, 0, 851962, 0, 0, 851963, 0, 0, 851964, 0, 0, 851965, 0, 0, 851966, 0, 0, 851967, 0, 0, 786432, 0, 0, 786433, 0, 0, 786434, 0, 0, 786435, 0, 0, 786436, 0, 0, 786437, 0, 0, 786438, 0, 0, 786439, 0, 0, 786440, 0, 0, 786441, 0, 0, 786442, 0, 0, 786443, 0, 0, 786444, 0, 0, 786445, 0, 0, 786446, 0, 0, 786447, 0, 0, 786448, 0, 0, 786449, 0, 0, 917490, 0, 0, 917491, 0, 0, 917492, 0, 0, 917493, 0, 0, 917494, 0, 0, 917495, 0, 0, 917496, 0, 0, 917497, 0, 0, 917498, 0, 0, 917499, 0, 0, 917500, 0, 0, 917501, 0, 0, 917502, 0, 0, 917503, 0, 0, 851968, 0, 0, 851969, 0, 0, 851970, 0, 0, 851971, 0, 0, 851972, 0, 0, 851973, 0, 0, 851974, 0, 0, 851975, 0, 0, 851976, 0, 0, 851977, 0, 0, 851978, 0, 0, 851979, 0, 0, 851980, 0, 0, 851981, 0, 0, 851982, 0, 0, 851983, 0, 0, 851984, 0, 0, 851985, 0, 0, 983026, 0, 0, 983027, 0, 0, 983028, 0, 0, 983029, 0, 0, 983030, 0, 0, 983031, 0, 0, 983032, 0, 0, 983033, 0, 0, 983034, 0, 0, 983035, 0, 0, 983036, 0, 0, 983037, 0, 0, 983038, 0, 0, 983039, 0, 0, 917504, 0, 0, 917505, 0, 0, 917506, 0, 0, 917507, 0, 0, 917508, 0, 0, 917509, 0, 0, 917510, 0, 0, 917511, 0, 0, 917512, 0, 0, 917513, 0, 0, 917514, 0, 0, 917515, 0, 0, 917516, 0, 0, 917517, 0, 0, 917518, 0, 0, 917519, 0, 0, 917520, 0, 0, 917521, 0, 0, 1048562, 0, 0, 1048563, 0, 0, 1048564, 0, 0, 1048565, 0, 0, 1048566, 0, 0, 1048567, 0, 0, 1048568, 0, 0, 1048569, 0, 0, 1048570, 0, 0, 1048571, 0, 0, 1048572, 0, 0, 1048573, 0, 0, 1048574, 0, 0, 1048575, 0, 0, 983040, 0, 0, 983041, 0, 0, 983042, 0, 0, 983043, 0, 0, 983044, 0, 0, 983045, 0, 0, 983046, 0, 0, 983047, 0, 0, 983048, 0, 0, 983049, 0, 0, 983050, 0, 0, 983051, 0, 0, 983052, 0, 0, 983053, 0, 0, 983054, 0, 0, 983055, 0, 0, 983056, 0, 0, 983057, 0, 0, 1114098, 0, 0, 1114099, 0, 0, 1114100, 0, 0, 1114101, 0, 0, 1114102, 0, 0, 1114103, 0, 0, 1114104, 0, 0, 1114105, 0, 0, 1114106, 0, 0, 1114107, 0, 0, 1114108, 0, 0, 1114109, 0, 0, 1114110, 0, 0, 1114111, 0, 0, 1048576, 0, 0, 1048577, 0, 0, 1048578, 0, 0, 1048579, 0, 0, 1048580, 0, 0, 1048581, 0, 0, 1048582, 0, 0, 1048583, 0, 0, 1048584, 0, 0, 1048585, 0, 0, 1048586, 0, 0, 1048587, 0, 0, 1048588, 0, 0, 1048589, 0, 0, 1048590, 0, 0, 1048591, 0, 0, 1048592, 0, 0, 1048593, 0, 0, 1179634, 0, 0, 1179635, 0, 0, 1179636, 0, 0, 1179637, 0, 0, 1179638, 0, 0, 1179639, 0, 0, 1179640, 0, 0, 1179641, 0, 0, 1179642, 0, 0, 1179643, 0, 0, 1179644, 0, 0, 1179645, 0, 0, 1179646, 0, 0, 1179647, 0, 0, 1114112, 0, 0, 1114113, 0, 0, 1114114, 0, 0, 1114115, 0, 0, 1114116, 0, 0, 1114117, 0, 0, 1114118, 0, 0, 1114119, 0, 0, 1114120, 0, 0, 1114121, 0, 0, 1114122, 0, 0, 1114123, 0, 0, 1114124, 0, 0, 1114125, 0, 0, 1114126, 0, 0, 1114127, 0, 0, 1114128, 0, 0, 1114129, 0, 0, 1245170, 0, 0, 1245171, 0, 0, 1245172, 0, 0, 1245173, 0, 0, 1245174, 0, 0, 1245175, 0, 0, 1245176, 0, 0, 1245177, 0, 0, 1245178, 0, 0, 1245179, 0, 0, 1245180, 0, 0, 1245181, 0, 0, 1245182, 0, 0, 1245183, 0, 0, 1179648, 0, 0, 1179649, 0, 0, 1179650, 0, 0, 1179651, 0, 0, 1179652, 0, 0, 1179653, 0, 0, 1179654, 0, 0, 1179655, 0, 0, 1179656, 0, 0, 1179657, 0, 0, 1179658, 0, 0, 1179659, 0, 0, 1179660, 0, 0, 1179661, 0, 0, 1179662, 0, 0, 1179663, 0, 0, 1179664, 0, 0, 1179665, 0, 0, 1310706, 0, 0, 1310707, 0, 0, 1310708, 0, 0, 1310709, 0, 0, 1310710, 0, 0, 1310711, 0, 0, 1310712, 0, 0, 1310713, 0, 0, 1310714, 0, 0, 1310715, 0, 0, 1310716, 0, 0, 1310717, 0, 0, 1310718, 0, 0, 1310719, 0, 0, 1245184, 0, 0, 1245185, 0, 0, 1245186, 0, 0, 1245187, 0, 0, 1245188, 0, 0, 1245189, 0, 0, 1245190, 0, 0, 1245191, 0, 0, 1245192, 0, 0, 1245193, 0, 0, 1245194, 0, 0, 1245195, 0, 0, 1245196, 0, 0, 1245197, 0, 0, 1245198, 0, 0, 1245199, 0, 0, 1245200, 0, 0, 1245201, 0, 0, 1376242, 0, 0, 1376243, 0, 0, 1376244, 0, 0, 1376245, 0, 0, 1376246, 0, 0, 1376247, 0, 0, 1376248, 0, 0, 1376249, 0, 0, 1376250, 0, 0, 1376251, 0, 0, 1376252, 0, 0, 1376253, 0, 0, 1376254, 0, 0, 1376255, 0, 0, 1310720, 0, 0, 1310721, 0, 0, 1310722, 0, 0, 1310723, 0, 0, 1310724, 0, 0, 1310725, 0, 0, 1310726, 0, 0, 1310727, 0, 0, 1310728, 0, 0, 1310729, 0, 0, 1310730, 0, 0, 1310731, 0, 0, 1310732, 0, 0, 1310733, 0, 0, 1310734, 0, 0, 1310735, 0, 0, 1310736, 0, 0, 1310737, 0, 0 )
_sections_unfolded = [ "Cell", "Transform" ]
__meta__ = {
"_edit_lock_": true
}

[node name="BackGround" type="TileMap" parent="." index="2"]

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
tile_data = PoolIntArray( 327666, 0, 0, 327667, 0, 0, 327668, 0, 0, 327669, 0, 0, 327670, 0, 0, 327671, 0, 0, 327672, 0, 0, 327673, 0, 0, 327674, 0, 0, 327675, 0, 0, 327676, 0, 0, 327677, 0, 0, 327678, 0, 0, 327679, 0, 0, 262144, 0, 0, 262145, 0, 0, 262146, 0, 0, 262147, 0, 0, 262148, 0, 0, 262149, 0, 0, 262150, 0, 0, 262151, 0, 0, 262152, 0, 0, 262153, 0, 0, 262154, 0, 0, 262155, 0, 0, 262156, 0, 0, 262157, 0, 0, 262158, 0, 0, 262159, 0, 0, 262160, 0, 0, 262161, 0, 0, 393202, 0, 0, 393203, 0, 0, 393204, 0, 0, 393205, 0, 0, 393206, 0, 0, 393207, 0, 0, 393208, 0, 0, 393209, 0, 0, 393210, 0, 0, 393211, 0, 0, 393212, 0, 0, 393213, 0, 0, 393214, 0, 0, 393215, 0, 0, 327680, 0, 0, 327681, 0, 0, 327682, 0, 0, 327683, 0, 0, 327684, 0, 0, 327685, 0, 0, 327686, 0, 0, 327687, 0, 0, 327688, 0, 0, 327689, 0, 0, 327690, 0, 0, 327691, 0, 0, 327692, 0, 0, 327693, 0, 0, 327694, 0, 0, 327695, 0, 0, 327696, 0, 0, 327697, 0, 0, 458738, 0, 0, 458739, 0, 0, 458740, 0, 0, 458741, 0, 0, 458742, 0, 0, 458743, 0, 0, 458744, 0, 0, 458745, 0, 0, 458746, 0, 0, 458747, 0, 0, 458748, 0, 0, 458749, 0, 0, 458750, 0, 0, 458751, 0, 0, 393216, 0, 0, 393217, 0, 0, 393218, 0, 0, 393219, 0, 0, 393220, 0, 0, 393221, 0, 0, 393222, 0, 0, 393223, 0, 0, 393224, 0, 0, 393225, 0, 0, 393226, 0, 0, 393227, 0, 0, 393228, 0, 0, 393229, 0, 0, 393230, 0, 0, 393231, 0, 0, 393232, 0, 0, 393233, 0, 0, 524274, 0, 0, 524275, 0, 0, 524276, 0, 0, 524277, 0, 0, 524278, 0, 0, 524279, 0, 0, 524280, 0, 0, 524281, 0, 0, 524282, 0, 0, 524283, 0, 0, 524284, 0, 0, 524285, 0, 0, 524286, 0, 0, 524287, 0, 0, 458752, 0, 0, 458753, 0, 0, 458754, 0, 0, 458755, 0, 0, 458756, 0, 0, 458757, 0, 0, 458758, 0, 0, 458759, 0, 0, 458760, 0, 0, 458761, 0, 0, 458762, 0, 0, 458763, 0, 0, 458764, 0, 0, 458765, 0, 0, 458766, 0, 0, 458767, 0, 0, 458768, 0, 0, 458769, 0, 0, 589810, 0, 0, 589811, 0, 0, 589812, 0, 0, 589813, 0, 0, 589814, 0, 0, 589815, 0, 0, 589816, 0, 0, 589817, 0, 0, 589818, 0, 0, 589819, 0, 0, 589820, 0, 0, 589821, 0, 0, 589822, 0, 0, 589823, 0, 0, 524288, 0, 0, 524289, 0, 0, 524290, 0, 0, 524291, 0, 0, 524292, 0, 0, 524293, 0, 0, 524294, 0, 0, 524295, 0, 0, 524296, 0, 0, 524297, 0, 0, 524298, 0, 0, 524299, 0, 0, 524300, 0, 0, 524301, 0, 0, 524302, 0, 0, 524303, 0, 0, 524304, 0, 0, 524305, 0, 0, 655346, 0, 0, 655347, 0, 0, 655348, 0, 0, 655349, 0, 0, 655350, 0, 0, 655351, 0, 0, 655352, 0, 0, 655353, 0, 0, 655354, 0, 0, 655355, 0, 0, 655356, 0, 0, 655357, 0, 0, 655358, 0, 0, 655359, 0, 0, 589824, 0, 0, 589825, 0, 0, 589826, 0, 0, 589827, 0, 0, 589828, 0, 0, 589829, 0, 0, 589830, 0, 0, 589831, 0, 0, 589832, 0, 0, 589833, 0, 0, 589834, 0, 0, 589835, 0, 0, 589836, 0, 0, 589837, 0, 0, 589838, 0, 0, 589839, 0, 0, 589840, 0, 0, 589841, 0, 0, 720882, 0, 0, 720883, 0, 0, 720884, 0, 0, 720885, 0, 0, 720886, 0, 0, 720887, 0, 0, 720888, 0, 0, 720889, 0, 0, 720890, 0, 0, 720891, 0, 0, 720892, 0, 0, 720893, 0, 0, 720894, 0, 0, 720895, 0, 0, 655360, 0, 0, 655361, 0, 0, 655362, 0, 0, 655363, 0, 0, 655364, 0, 0, 655365, 0, 0, 655366, 0, 0, 655367, 0, 0, 655368, 0, 0, 655369, 0, 0, 655370, 0, 0, 655371, 0, 0, 655372, 0, 0, 655373, 0, 0, 655374, 0, 0, 655375, 0, 0, 655376, 0, 0, 655377, 0, 0, 786418, 0, 0, 786419, 0, 0, 786420, 0, 0, 786421, 0, 0, 786422, 0, 0, 786423, 0, 0, 786424, 0, 0, 786425, 0, 0, 786426, 0, 0, 786427, 0, 0, 786428, 0, 0, 786429, 0, 0, 786430, 0, 0, 786431, 0, 0, 720896, 0, 0, 720897, 0, 0, 720898, 0, 0, 720899, 0, 0, 720900, 0, 0, 720901, 0, 0, 720902, 0, 0, 720903, 0, 0, 720904, 0, 0, 720905, 0, 0, 720906, 0, 0, 720907, 0, 0, 720908, 0, 0, 720909, 0, 0, 720910, 0, 0, 720911, 0, 0, 720912, 0, 0, 720913, 0, 0, 851954, 0, 0, 851955, 0, 0, 851956, 0, 0, 851957, 0, 0, 851958, 0, 0, 851959, 0, 0, 851960, 0, 0, 851961, 0, 0, 851962, 0, 0, 851963, 0, 0, 851964, 0, 0, 851965, 0, 0, 851966, 0, 0, 851967, 0, 0, 786432, 0, 0, 786433, 0, 0, 786434, 0, 0, 786435, 0, 0, 786436, 0, 0, 786437, 0, 0, 786438, 0, 0, 786439, 0, 0, 786440, 0, 0, 786441, 0, 0, 786442, 0, 0, 786443, 0, 0, 786444, 0, 0, 786445, 0, 0, 786446, 0, 0, 786447, 0, 0, 786448, 0, 0, 786449, 0, 0, 917490, 0, 0, 917491, 0, 0, 917492, 0, 0, 917493, 0, 0, 917494, 0, 0, 917495, 0, 0, 917496, 0, 0, 917497, 0, 0, 917498, 0, 0, 917499, 0, 0, 917500, 0, 0, 917501, 0, 0, 917502, 0, 0, 917503, 0, 0, 851968, 0, 0, 851969, 0, 0, 851970, 0, 0, 851971, 0, 0, 851972, 0, 0, 851973, 0, 0, 851974, 0, 0, 851975, 0, 0, 851976, 0, 0, 851977, 0, 0, 851978, 0, 0, 851979, 0, 0, 851980, 0, 0, 851981, 0, 0, 851982, 0, 0, 851983, 0, 0, 851984, 0, 0, 851985, 0, 0, 983026, 0, 0, 983027, 0, 0, 983028, 0, 0, 983029, 0, 0, 983030, 0, 0, 983031, 0, 0, 983032, 0, 0, 983033, 0, 0, 983034, 0, 0, 983035, 0, 0, 983036, 0, 0, 983037, 0, 0, 983038, 0, 0, 983039, 0, 0, 917504, 0, 0, 917505, 0, 0, 917506, 0, 0, 917507, 0, 0, 917508, 0, 0, 917509, 0, 0, 917510, 0, 0, 917511, 0, 0, 917512, 0, 0, 917513, 0, 0, 917514, 0, 0, 917515, 0, 0, 917516, 0, 0, 917517, 0, 0, 917518, 0, 0, 917519, 0, 0, 917520, 0, 0, 917521, 0, 0, 1048562, 0, 0, 1048563, 0, 0, 1048564, 0, 0, 1048565, 0, 0, 1048566, 0, 0, 1048567, 0, 0, 1048568, 0, 0, 1048569, 0, 0, 1048570, 0, 0, 1048571, 0, 0, 1048572, 0, 0, 1048573, 0, 0, 1048574, 0, 0, 1048575, 0, 0, 983040, 0, 0, 983041, 0, 0, 983042, 0, 0, 983043, 0, 0, 983044, 0, 0, 983045, 0, 0, 983046, 0, 0, 983047, 0, 0, 983048, 0, 0, 983049, 0, 0, 983050, 0, 0, 983051, 0, 0, 983052, 0, 0, 983053, 0, 0, 983054, 0, 0, 983055, 0, 0, 983056, 0, 0, 983057, 0, 0, 1114098, 0, 0, 1114099, 0, 0, 1114100, 0, 0, 1114101, 0, 0, 1114102, 0, 0, 1114103, 0, 0, 1114104, 0, 0, 1114105, 0, 0, 1114106, 0, 0, 1114107, 0, 0, 1114108, 0, 0, 1114109, 0, 0, 1114110, 0, 0, 1114111, 0, 0, 1048576, 0, 0, 1048577, 0, 0, 1048578, 0, 0, 1048579, 0, 0, 1048580, 0, 0, 1048581, 0, 0, 1048582, 0, 0, 1048583, 0, 0, 1048584, 0, 0, 1048585, 0, 0, 1048586, 0, 0, 1048587, 0, 0, 1048588, 0, 0, 1048589, 0, 0, 1048590, 0, 0, 1048591, 0, 0, 1048592, 0, 0, 1048593, 0, 0, 1179634, 0, 0, 1179635, 0, 0, 1179636, 0, 0, 1179637, 0, 0, 1179638, 0, 0, 1179639, 0, 0, 1179640, 0, 0, 1179641, 0, 0, 1179642, 0, 0, 1179643, 0, 0, 1179644, 0, 0, 1179645, 0, 0, 1179646, 0, 0, 1179647, 0, 0, 1114112, 0, 0, 1114113, 0, 0, 1114114, 0, 0, 1114115, 0, 0, 1114116, 0, 0, 1114117, 0, 0, 1114118, 0, 0, 1114119, 0, 0, 1114120, 0, 0, 1114121, 0, 0, 1114122, 0, 0, 1114123, 0, 0, 1114124, 0, 0, 1114125, 0, 0, 1114126, 0, 0, 1114127, 0, 0, 1114128, 0, 0, 1114129, 0, 0, 1245170, 0, 0, 1245171, 0, 0, 1245172, 0, 0, 1245173, 0, 0, 1245174, 0, 0, 1245175, 0, 0, 1245176, 0, 0, 1245177, 0, 0, 1245178, 0, 0, 1245179, 0, 0, 1245180, 0, 0, 1245181, 0, 0, 1245182, 0, 0, 1245183, 0, 0, 1179648, 0, 0, 1179649, 0, 0, 1179650, 0, 0, 1179651, 0, 0, 1179652, 0, 0, 1179653, 0, 0, 1179654, 0, 0, 1179655, 0, 0, 1179656, 0, 0, 1179657, 0, 0, 1179658, 0, 0, 1179659, 0, 0, 1179660, 0, 0, 1179661, 0, 0, 1179662, 0, 0, 1179663, 0, 0, 1179664, 0, 0, 1179665, 0, 0, 1310706, 0, 0, 1310707, 0, 0, 1310708, 0, 0, 1310709, 0, 0, 1310710, 0, 0, 1310711, 0, 0, 1310712, 0, 0, 1310713, 0, 0, 1310714, 0, 0, 1310715, 0, 0, 1310716, 0, 0, 1310717, 0, 0, 1310718, 0, 0, 1310719, 0, 0, 1245184, 0, 0, 1245185, 0, 0, 1245186, 0, 0, 1245187, 0, 0, 1245188, 0, 0, 1245189, 0, 0, 1245190, 0, 0, 1245191, 0, 0, 1245192, 0, 0, 1245193, 0, 0, 1245194, 0, 0, 1245195, 0, 0, 1245196, 0, 0, 1245197, 0, 0, 1245198, 0, 0, 1245199, 0, 0, 1245200, 0, 0, 1245201, 0, 0, 1376242, 0, 0, 1376243, 0, 0, 1376244, 0, 0, 1376245, 0, 0, 1376246, 0, 0, 1376247, 0, 0, 1376248, 0, 0, 1376249, 0, 0, 1376250, 0, 0, 1376251, 0, 0, 1376252, 0, 0, 1376253, 0, 0, 1376254, 0, 0, 1376255, 0, 0, 1310720, 0, 0, 1310721, 0, 0, 1310722, 0, 0, 1310723, 0, 0, 1310724, 0, 0, 1310725, 0, 0, 1310726, 0, 0, 1310727, 0, 0, 1310728, 0, 0, 1310729, 0, 0, 1310730, 0, 0, 1310731, 0, 0, 1310732, 0, 0, 1310733, 0, 0, 1310734, 0, 0, 1310735, 0, 0, 1310736, 0, 0, 1310737, 0, 0 )
_sections_unfolded = [ "Cell", "Transform", "Z Index" ]
__meta__ = {
"_edit_lock_": true
}


[gd_scene load_steps=5 format=2]

[ext_resource path="res://Scripts/Player.gd" type="Script" id=1]
[ext_resource path="res://Sprites/Drill/Drill_Down.png" type="Texture" id=2]
[ext_resource path="res://Scripts/LevelCamera.gd" type="Script" id=3]

[sub_resource type="Animation" id=1]

resource_name = "MoveToPoint"
length = 1.0
loop = false
step = 0.1

[node name="Player" type="Node2D"]

position = Vector2( 176, 112 )
z_index = 10
script = ExtResource( 1 )
_sections_unfolded = [ "Transform", "Z Index" ]
__meta__ = {
"_edit_group_": true
}
speed = 2

[node name="AnimationPlayer" type="AnimationPlayer" parent="." index="0"]

root_node = NodePath("..")
autoplay = ""
playback_process_mode = 1
playback_default_blend_time = 0.0
playback_speed = 1.0
anims/MoveToPoint = SubResource( 1 )
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
_sections_unfolded = [ "Limit", "Transform" ]
CAMERA_WIDTH = 256


              [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/Singleton.gd" type="Script" id=1]

[node name="Singleton" type="Node" index="0"]

script = ExtResource( 1 )


              [gd_scene load_steps=4 format=2]

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

position = Vector2( 37.0633, 32.6742 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 0, 0, 32, 32 )
_sections_unfolded = [ "Region" ]

[node name="Grass" type="Sprite" parent="." index="1"]

position = Vector2( 73.6389, 33.1619 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 64, 0, 32, 32 )
_sections_unfolded = [ "Region" ]


       GDSC            (      ������ƶ   �����϶�   �����Ķ�   �������ض���   �����������Ҷ���                                               	      
            !      "      #   	   $   
   %      &      5TT3�  LMR�  �  �  S�  P�  �  L�  LN�  MM�  L�  N�  MTTTTTT[GDSC            u      �����Ӷ�   ����򶶶   ��������Ҷ��   �������Ŷ���   ����׶��   ����¶��   �������������Ҷ�   ��������ⶶ�   �����涶   �������ض���   ϶��   ������������   ��������ⶶ�   ζ��   �������ⶶ��                                     	                                  	   &   
   )      -      .      7      ?      H      P      Y      a      j      r      s      5TT:=�  T=�  �  TT3�  L�  MRT�  &�  P�  L�  MR�  �  �  �  �  (R�  �  �  T�  &�  P�  L�  MR�  P�	  P�
  �  �  &�  P�  L�  MR�  P�	  P�
  �  �  &�  P�  L�  MR�  P�	  P�  �  �  &�  P�  L�  MR�  P�	  P�  �  �  T[     GDSC            -      �����ׄ򶶶�   ����������������   �����϶�   ��������޶��   �����������¶���   ���Ӷ���   ζ��   ���۶���            �   
# FOR DEBUGGING: Set camera zoom every frame
func _process(delta):
	# Set Camera zoom
	var zoomWidth = CAMERA_WIDTH / get_viewport().size.x
	self.zoom = Vector2(zoomWidth, zoomWidth)
                   	      
                        )   	   *   
   +      5TT:=�  TT3�  LMR�  �  =�  �  �  LMP�  P�  �  P�  �  L�  N�  MTT�  [      GDSC         3   L     ���ӄ�   ����Ҷ��   �����϶�   �������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   ������ٶ   �������ض���   ζ��   ϶��   �������������ض�   ����������Ŷ   ��������������Ŷ   ����ض��   �������������������϶���   ����¶��   �����������䶶��   ��������   ����¶��   ������������������ض   ���������Ҷ�   ������Ķ   �����Ӷ�   ������Ӷ               moveUp                  moveDown   	   moveRight         moveLeft             position               tween_completed                    #   res://Sprites/Drill/Drill_Right.png    "   res://Sprites/Drill/Drill_Left.png     "   res://Sprites/Drill/Drill_Down.png         res://Sprites/Drill/Drill_Up.png                   	      
                           	   #   
   3      <      L      U      e      n      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )     *     +   "  ,   %  -   8  .   F  /   G  0   H  1   I  2   J  3   5TT:=�  TT3�  LMR�  0TT3�  L�  MR�  &�  P�  L�  MR�  �  L�  L�  P�	  N�  P�
  �  MM�  &�  P�  L�  MR�  �  L�  L�  P�	  N�  P�
  �  MM�  &�  P�  L�  MR�  �  L�  L�  P�	  �  N�  P�
  MM�  &�  P�  L�  MR�  �  L�  L�  P�	  �  N�  P�
  MMTTT3�  L�  MR�  �  �  L�  M�  �  =�  L�  �  M�  �  �  S�  P�  LS�  N�  N�  N�  LMN�  �  L�  MN�  P�  N�  P�  M�  �  S�  P�  LM�  �  �  �  �  S�  P�  �  �  �  L�  P�  LMM�  �  ALS�  N�	  M�  �  �  L�
  MTTT3�  L�  MR�  �  &�  L�  P�	  M�  L�  P�
  MR�  &�  P�	  �  RS�  �  P�  �A  L�  M�  (RS�  �  P�  �A  L�  M�  (R�  &�  P�
  �  RS�  �  P�  �A  L�  M�  (RS�  �  P�  �A  L�  MTTTTT[     GDSC                  ���Ӷ���   �����Ӷ�      Called function 'choose()'                     	      5TT3�  LMR�  �7  LM[    GDST                 �   PNG �PNG
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
             GDST�   �            �  PNG �PNG

   IHDR   �   �   ��g-  �IDATx���An�F��O�V���u{��r�lt�&Ȧ��'Ц+ﺮ �N/��B���E9�f��� ��p8�3����D��o^I�^C����#mS���}l�o��=s����ݏ�in<�2�;���R�GKI���a�zs8(�ݷ�7��7���f[4F߮�$<���/a������-j��o�o���⇫���&�n��o�}�Ԟ��q}�ʟ}$}]��׋������}Ҷ������cJ���C��v[$���=����SRJ�c�g�&��_�gD?n���-�0%�e�v��09��-��_��~�����R/6�ɾV��2�߷��[78�7�'̜�UJ�cI8�便D�_�m�ۻn��>)m�j��0Jd;����?_��Gk����tƋ�Ҳ�n_­R�'I�w�Y��Fj�=l����u��-c\K�?_���N��������Oc��]����c�,�q�%�,�����8+7�,!�����:��t�x�m�նӇ��R��J������ĕꊿ�N���X��]m�n,���4��v?�����S�M�o�v��_T���lX)�r�D�|I'w)/����݄�y��l}о�}?�f�+}<���K�0*<Gr�Ei���ƃ�z����H�n4r������T�$D"�R:)��w�Q�zN�/7���,�z�%uR��ln�.�7U7��I��I�%xjn���RJ���8�ֿZ���q)^�w����EQ?�f_�~Z���:I�8V���G���^��_T'�M�wG��������Iw���I㻿�wln��/�Z��_�$���K����I��Wi۩��+fJh=�F7!Sg���ٿ��VU׮��/mT���!��̹�;�����y��28�VtD���?[č�IZ�dƫj9R��0��g�ST}i��ˌ]ݳ��㿴��.KR�A}� ��^zZ��\:��M���׿^��|�׏Q���/�_��{|��Y��`���cV����,��U�s�|S������OYmr��_�hA���#M���g[�����z���OB�	��|��Re���k[�z��,޾y�ԏ`�5�S���6������?��j*��,CO-��:FM���/jv8E��                                                                                                                   ���%�.:�u%    IEND�B`�      [remap]

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
detect_3d=true
svg/scale=1.0
     [gd_resource type="TileSet" load_steps=2 format=2]

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

           [gd_resource type="TileSet" load_steps=2 format=2]

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
_sections_unfolded = [ "0" ]

[gd_resource type="Environment" load_steps=2 format=2]

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
N����s�o�~�]��S}|�dP�=.%�B�;��h��Y?>����Bvۮ��o=,�i]��IZ�w��˳��lY��u���NCWj^��.%e���O-T&�(:��s������|�3�y?��c�ٓ��Z}�s�����J~u�qK    IEND�B`�      ECFG      application/config/name         Project MMC    application/run/main_scene          res://Scenes/Level.tscn    application/config/icon         res://icon.png     autoload/Custom$         *res://Scripts/Singleton.gd    display/window/size/width               display/window/size/height     @         display/window/stretch/mode         viewport   display/window/stretch/aspect         expand     display/window/stretch/shrink         1      importer_defaults/texture,              compress/hdr_mode                   compress/lossy_quality    ffffff�?      compress/mode                   compress/normal_map              	   detect_3d                flags/anisotropic                flags/filter             flags/mipmaps                flags/repeat             
   flags/srgb                 process/HDR_as_SRGB              process/fix_alpha_border            process/premult_alpha             
   size_limit                  stream            	   svg/scale        �?   input/moveUpx              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  W          unicode              echo          script            input/moveDownx              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  S          unicode              echo          script            input/moveLeftx              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  A          unicode              echo          script            input/moveRightx              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  D          unicode              echo          script         )   rendering/environment/default_clear_color      '��=["/? w?  �?)   rendering/environment/default_environment          res://default_env.tres     GDPC