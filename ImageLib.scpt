FasdUAS 1.101.10   ��   ��    k             x     �� ����    4    �� 
�� 
frmk  m     	 	 � 
 
  F o u n d a t i o n��        x    �� ����    4    �� 
�� 
frmk  m       �    A p p K i t��        x    %�� ����    4    �� 
�� 
frmk  m       �    Q u a r t z��        l     ��������  ��  ��        j   % +�� �� 0 nsimage NSImage  4   % *�� 
�� 
pcls  m   ' (   �    N S I m a g e       l     ��������  ��  ��      ! " ! j   , .�� #�� 0 x_axis X_AXIS # m   , -����  "  $ % $ j   / 1�� &�� 0 y_axis Y_AXIS & m   / 0����   %  ' ( ' l     ��������  ��  ��   (  ) * ) l      �� + ,��   + � �
	Initializes an ILImage script object.
	
	Params:
		theTarget (String) - The file path or remote URL to an image.
		
	Returns:
		(ILImage) - The newly created image object.
    , � - -\ 
 	 I n i t i a l i z e s   a n   I L I m a g e   s c r i p t   o b j e c t . 
 	 
 	 P a r a m s : 
 	 	 t h e T a r g e t   ( S t r i n g )   -   T h e   f i l e   p a t h   o r   r e m o t e   U R L   t o   a n   i m a g e . 
 	 	 
 	 R e t u r n s : 
 	 	 ( I L I m a g e )   -   T h e   n e w l y   c r e a t e d   i m a g e   o b j e c t . 
 *  . / . i   2 5 0 1 0 I      �� 2���� 0 image Image 2  3�� 3 o      ���� 0 	thetarget 	theTarget��  ��   1 k     I 4 4  5 6 5 h     �� 7�� 0 ilimage ILImage 7 k       8 8  9 : 9 j     �� ;�� 
0 target   ; o     ���� 0 	thetarget 	theTarget :  < = < j    	�� >�� 	0 width   > m    ��
�� 
msng =  ? @ ? j   
 �� A�� 
0 height   A m   
 ��
�� 
msng @  B C B j    �� D�� 0 
base64data   D m    ��
�� 
msng C  E F E j    �� G
�� 
imod G m    ��
�� boovfals F  H I H l     ��������  ��  ��   I  J K J l      �� L M��   L A ;
			Gets the NSImage object representation of the image.
		    M � N N v 
 	 	 	 G e t s   t h e   N S I m a g e   o b j e c t   r e p r e s e n t a t i o n   o f   t h e   i m a g e . 
 	 	 K  O P O i     Q R Q I      �������� 0 _getnsimage _getNSImage��  ��   R k     � S S  T U T r      V W V n     X Y X I    �� Z���� &0 nsclassfromstring NSClassFromString Z  [�� [ m     \ \ � ] ]  N S I m a g e��  ��   Y m     ��
�� misccura W o      ���� 0 _nsimage _NSImage U  ^ _ ^ r   	  ` a ` m   	 
��
�� 
msng a o      ���� 0 theimage theImage _  b c b l   ��������  ��  ��   c  d e d Z    8 f g���� f =    h i h n    j k j 1    ��
�� 
imod k  f     i m    ��
�� boovtrue g k    4 l l  m n m r    & o p o n   $ q r q I    $�� s���� L0 $initwithbase64encodedstring_options_ $initWithBase64EncodedString_options_ s  t u t l    v���� v n    w x w o    ���� 0 
base64data   x  f    ��  ��   u  y�� y m     ����  ��  ��   r n    z { z I    �������� 	0 alloc  ��  ��   { n    | } | o    ���� 0 nsdata NSData } m    ��
�� misccura p o      ���� 0 theimagedata theImageData n  ~�� ~ L   ' 4   n  ' 3 � � � I   . 3�� ����� 0 initwithdata_ initWithData_ �  ��� � o   . /���� 0 theimagedata theImageData��  ��   � n  ' . � � � I   * .�������� 	0 alloc  ��  ��   � n  ' * � � � o   ( *���� 0 nsimage NSImage � m   ' (��
�� misccura��  ��  ��   e  � � � l  9 9��������  ��  ��   �  ��� � Z   9 � � � � � � C   9 > � � � n  9 < � � � o   : <���� 
0 target   �  f   9 : � m   < = � � � � �  / � k   A P � �  � � � l  A A�� � ���   � . ( The target is an image file on the disk    � � � � P   T h e   t a r g e t   i s   a n   i m a g e   f i l e   o n   t h e   d i s k �  ��� � L   A P � � n  A O � � � I   H O�� ����� 20 initwithcontentsoffile_ initWithContentsOfFile_ �  ��� � l  H K ����� � n  H K � � � o   I K���� 
0 target   �  f   H I��  ��  ��  ��   � n  A H � � � I   D H�������� 	0 alloc  ��  ��   � n  A D � � � o   B D���� 0 nsimage NSImage � m   A B��
�� misccura��   �  � � � E   S X � � � n  S V � � � o   T V���� 
0 target   �  f   S T � m   V W � � � � �  : �  � � � k   [ u � �  � � � l  [ [�� � ���   � !  The target is a remote URL    � � � � 6   T h e   t a r g e t   i s   a   r e m o t e   U R L �  � � � r   [ g � � � n  [ e � � � I   ^ e�� �����  0 urlwithstring_ URLWithString_ �  ��� � l  ^ a ����� � n  ^ a � � � o   _ a���� 
0 target   �  f   ^ _��  ��  ��  ��   � n  [ ^ � � � o   \ ^���� 0 nsurl NSURL � m   [ \��
�� misccura � o      ���� 0 theurl theURL �  ��� � L   h u � � n  h t � � � I   o t�� ����� 00 initwithcontentsofurl_ initWithContentsOfURL_ �  ��� � o   o p���� 0 theurl theURL��  ��   � n  h o � � � I   k o�������� 	0 alloc  ��  ��   � n  h k � � � o   i k���� 0 nsimage NSImage � m   h i��
�� misccura��   �  � � � =  x  � � � n  x { � � � o   y {���� 
0 target   �  f   x y � m   { ~ � � � � �  - - - �  ��� � L   � � � � l  � � ����� � m   � ��
� 
msng��  ��  ��   � R   � ��~ ��}
�~ .ascrerr ****      � **** � b   � � � � � m   � � � � � � � 2 C a n n o t   c r e a t e   i m a g e   f r o m   � l  � � ��|�{ � n  � � � � � o   � ��z�z 
0 target   �  f   � ��|  �{  �}  ��   P  � � � l     �y�x�w�y  �x  �w   �  � � � l      �v � ��v   � � �
			Flips the image vertically or horizontally.
			
			Params:
				axis (Number) - The axis to flip the image across. One of X_AXIS, Y_AXIS, 0, or 1.
		    � � � �0 
 	 	 	 F l i p s   t h e   i m a g e   v e r t i c a l l y   o r   h o r i z o n t a l l y . 
 	 	 	 
 	 	 	 P a r a m s : 
 	 	 	 	 a x i s   ( N u m b e r )   -   T h e   a x i s   t o   f l i p   t h e   i m a g e   a c r o s s .   O n e   o f   X _ A X I S ,   Y _ A X I S ,   0 ,   o r   1 . 
 	 	 �  � � � i     � � � I      �u�t ��u 0 flip  �t   � �s ��r
�s 
over � o      �q�q 0 axis  �r   � k     � � �  � � � r      � � � n     � � � I    �p�o�n�p 0 _getnsimage _getNSImage�o  �n   �  f      � o      �m�m 0 theimage theImage �  � � � r     � � � l    ��l�k � n    � � � I    �j ��i�j 0 initwithsize_ initWithSize_ �  ��h � l    ��g�f � n      I    �e�d�c�e 0 size  �d  �c   o    �b�b 0 theimage theImage�g  �f  �h  �i   � n    I    �a�`�_�a 	0 alloc  �`  �_   n    o   	 �^�^ 0 nsimage NSImage m    	�]
�] misccura�l  �k   � o      �\�\ 0 flippedimage flippedImage �  l   �[�Z�Y�[  �Z  �Y   	 n    

 I     �X�W�V�X 0 	lockfocus 	lockFocus�W  �V   o    �U�U 0 flippedimage flippedImage	  r   ! . n  ! , I   ( ,�T�S�R�T 0 init  �S  �R   n  ! ( I   $ (�Q�P�O�Q 	0 alloc  �P  �O   n  ! $ o   " $�N�N &0 nsaffinetransform NSAffineTransform m   ! "�M
�M misccura o      �L�L 0 	transform    Z   / k =  / 2 o   / 0�K�K 0 axis   m   0 1�J�J   k   5 H   l  5 <!�I�H! n  5 <"#" I   6 <�G$�F�G 0 scalexby_yby_ scaleXBy_yBy_$ %&% m   6 7�E�E��& '�D' m   7 8�C�C �D  �F  # o   5 6�B�B 0 	transform  �I  �H    (�A( l  = H)�@�?) n  = H*+* I   > H�>,�=�> &0 translatexby_yby_ translateXBy_yBy_, -.- l  > C/�<�;/ \   > C010 m   > ?�:�:  1 l  ? B2�9�82 n  ? B343 o   @ B�7�7 	0 width  4  f   ? @�9  �8  �<  �;  . 5�65 m   C D�5�5  �6  �=  + o   = >�4�4 0 	transform  �@  �?  �A   676 =  K N898 o   K L�3�3 0 axis  9 m   L M�2�2 7 :�1: k   Q d;; <=< l  Q X>�0�/> n  Q X?@? I   R X�.A�-�. 0 scalexby_yby_ scaleXBy_yBy_A BCB m   R S�,�, C D�+D m   S T�*�*���+  �-  @ o   Q R�)�) 0 	transform  �0  �/  = E�(E l  Y dF�'�&F n  Y dGHG I   Z d�%I�$�% &0 translatexby_yby_ translateXBy_yBy_I JKJ m   Z [�#�#  K L�"L l  [ `M�!� M \   [ `NON m   [ \��  O l  \ _P��P n  \ _QRQ o   ] _�� 
0 height  R  f   \ ]�  �  �!  �   �"  �$  H o   Y Z�� 0 	transform  �'  �&  �(  �1   R   g k�S�
� .ascrerr ****      � ****S m   i jTT �UU  I n v a l i d   a x i s .�   VWV n  l qXYX I   m q���� 
0 concat  �  �  Y o   l m�� 0 	transform  W Z[Z l  r r����  �  �  [ \]\ r   r �^_^ n  r `a` I   s �b�� 0 
nsmakerect 
NSMakeRectb cdc m   s t��  d efe m   t u��  f ghg n  u xiji o   v x�� 	0 width  j  f   u vh k�k n  x {lml o   y {�� 
0 height  m  f   x y�  �  a m   r s�

�
 misccura_ o      �	�	 0 therect theRect] non n  � �pqp I   � ��r�� 0 drawinrect_ drawInRect_r s�s o   � ��� 0 therect theRect�  �  q o   � ��� 0 theimage theImageo tut n  � �vwv I   � ����� 0 unlockfocus unlockFocus�  �  w o   � �� �  0 flippedimage flippedImageu xyx l  � ���������  ��  ��  y z{z r   � �|}| n  � �~~ I   � ��������� (0 tiffrepresentation TIFFRepresentation��  ��   o   � ����� 0 flippedimage flippedImage} o      ���� $0 flippedimagedata flippedImageData{ ��� r   � ���� c   � ���� l  � ������� n  � ���� I   � �������� B0 base64encodedstringwithoptions_ base64EncodedStringWithOptions_� ���� m   � �����  ��  ��  � o   � ����� $0 flippedimagedata flippedImageData��  ��  � m   � ���
�� 
TEXT� n     ��� o   � ����� 0 
base64data  �  f   � �� ���� r   � ���� m   � ���
�� boovtrue� n     ��� 1   � ���
�� 
imod�  f   � ���   � ��� l     ��������  ��  ��  � ��� l      ������  � � �
			Rotates the image clockwise by the specified number of degrees.
			
			Informed by https://stackoverflow.com/a/31702419.
			
			Params:
				degrees (Number) - The amount to rotate the image.
		   � ���� 
 	 	 	 R o t a t e s   t h e   i m a g e   c l o c k w i s e   b y   t h e   s p e c i f i e d   n u m b e r   o f   d e g r e e s . 
 	 	 	 
 	 	 	 I n f o r m e d   b y   h t t p s : / / s t a c k o v e r f l o w . c o m / a / 3 1 7 0 2 4 1 9 . 
 	 	 	 
 	 	 	 P a r a m s : 
 	 	 	 	 d e g r e e s   ( N u m b e r )   -   T h e   a m o u n t   t o   r o t a t e   t h e   i m a g e . 
 	 	� ��� i    ��� I      ������� 
0 rotate  ��  � �����
�� 
by  � o      ���� 0 degrees  ��  � k     �� ��� r     ��� n    ��� I    �������� 0 _getnsimage _getNSImage��  ��  �  f     � o      ���� 0 theimage theImage� ��� l   ��������  ��  ��  � ��� r    ��� n   ��� I   	 ������� 0 
nsmakerect 
NSMakeRect� ��� m   	 
����  � ��� m   
 ����  � ��� n   ��� o    ���� 	0 width  �  f    � ���� n   ��� o    ���� 
0 height  �  f    ��  ��  � m    	��
�� misccura� o      ���� 0 imagebounds imageBounds� ��� r    "��� n    ��� I     ������� *0 bezierpathwithrect_ bezierPathWithRect_� ���� o    ���� 0 imagebounds imageBounds��  ��  � n   ��� o    ���� 0 nsbezierpath NSBezierPath� m    ��
�� misccura� o      ���� 0 
pathbounds 
pathBounds� ��� l  # #��������  ��  ��  � ��� r   # ,��� n  # *��� I   & *�������� 0 	transform  ��  ��  � n  # &��� o   $ &���� &0 nsaffinetransform NSAffineTransform� m   # $��
�� misccura� o      ���� 0 thetransform theTransform� ��� n  - 4��� I   . 4������� $0 rotatebydegrees_ rotateByDegrees_� ���� d   . 0�� o   . /���� 0 degrees  ��  ��  � o   - .���� 0 thetransform theTransform� ��� n  5 ;��� I   6 ;������� @0 transformusingaffinetransform_ transformUsingAffineTransform_� ���� o   6 7���� 0 thetransform theTransform��  ��  � o   5 6���� 0 
pathbounds 
pathBounds� ��� l  < <��������  ��  ��  � ��� r   < [��� n  < Y��� I   = Y������� 0 
nsmakerect 
NSMakeRect� ��� m   = >����  � ��� m   > ?����  � ��� n   ? J��� 4   G J���
�� 
cobj� m   H I���� � n   ? G��� 4   D G���
�� 
cobj� m   E F���� � n  ? D��� I   @ D�������� 
0 bounds  ��  ��  � o   ? @���� 0 
pathbounds 
pathBounds� ���� n   J U��� 4   R U���
�� 
cobj� m   S T���� � n   J R��� 4   O R���
�� 
cobj� m   P Q���� � n  J O��� I   K O�������� 
0 bounds  ��  ��  � o   J K���� 0 
pathbounds 
pathBounds��  ��  � m   < =��
�� misccura� o      ���� 0 rotatedbounds rotatedBounds� ��� r   \ m��� n  \ k� � I   c k������ 0 initwithsize_ initWithSize_ �� l  c g���� n   c g 4   d g��
�� 
cobj m   e f����  o   c d���� 0 rotatedbounds rotatedBounds��  ��  ��  ��    n  \ c I   _ c�������� 	0 alloc  ��  ��   n  \ _	
	 o   ] _���� 0 nsimage NSImage
 m   \ ]��
�� misccura� o      ���� 0 rotatedimage rotatedImage�  l  n n��������  ��  ��    r   n � J   n �  \   n } l  n t���� n  n t I   o t������ 0 nsmidx NSMidX �� o   o p���� 0 rotatedbounds rotatedBounds��  ��   m   n o��
�� misccura��  ��   ^   t | l  t z���� n  t z I   u z�� ���� 0 nswidth NSWidth  !��! o   u v���� 0 imagebounds imageBounds��  ��   m   t u��
�� misccura��  ��   m   z {��  "�~" \   } �#$# l  } �%�}�|% n  } �&'& I   ~ ��{(�z�{ 0 nsmidy NSMidY( )�y) o   ~ �x�x 0 rotatedbounds rotatedBounds�y  �z  ' m   } ~�w
�w misccura�}  �|  $ ^   � �*+* l  � �,�v�u, n  � �-.- I   � ��t/�s�t 0 nsheight NSHeight/ 0�r0 o   � ��q�q 0 imagebounds imageBounds�r  �s  . m   � ��p
�p misccura�v  �u  + m   � ��o�o �~   n      121 4   � ��n3
�n 
cobj3 m   � ��m�m 2 o   � ��l�l 0 imagebounds imageBounds 454 l  � ��k�j�i�k  �j  �i  5 676 r   � �898 n  � �:;: I   � ��h�g�f�h 0 	transform  �g  �f  ; n  � �<=< o   � ��e�e &0 nsaffinetransform NSAffineTransform= m   � ��d
�d misccura9 o      �c�c 0 	transform  7 >?> n  � �@A@ I   � ��bB�a�b &0 translatexby_yby_ translateXBy_yBy_B CDC l  � �E�`�_E ^   � �FGF l  � �H�^�]H n   � �IJI 4   � ��\K
�\ 
cobjK m   � ��[�[ J n   � �LML 4   � ��ZN
�Z 
cobjN m   � ��Y�Y M o   � ��X�X 0 rotatedbounds rotatedBounds�^  �]  G m   � ��W�W �`  �_  D O�VO l  � �P�U�TP ^   � �QRQ l  � �S�S�RS n   � �TUT 4   � ��QV
�Q 
cobjV m   � ��P�P U n   � �WXW 4   � ��OY
�O 
cobjY m   � ��N�N X o   � ��M�M 0 rotatedbounds rotatedBounds�S  �R  R m   � ��L�L �U  �T  �V  �a  A o   � ��K�K 0 	transform  ? Z[Z n  � �\]\ I   � ��J^�I�J $0 rotatebydegrees_ rotateByDegrees_^ _�H_ d   � �`` o   � ��G�G 0 degrees  �H  �I  ] o   � ��F�F 0 	transform  [ aba n  � �cdc I   � ��Ee�D�E &0 translatexby_yby_ translateXBy_yBy_e fgf l  � �h�C�Bh ^   � �iji l  � �k�A�@k n   � �lml 4   � ��?n
�? 
cobjn m   � ��>�> m n   � �opo 4   � ��=q
�= 
cobjq m   � ��<�< p o   � ��;�; 0 rotatedbounds rotatedBounds�A  �@  j m   � ��:�:���C  �B  g r�9r l  � �s�8�7s ^   � �tut l  � �v�6�5v n   � �wxw 4   � ��4y
�4 
cobjy m   � ��3�3 x n   � �z{z 4   � ��2|
�2 
cobj| m   � ��1�1 { o   � ��0�0 0 rotatedbounds rotatedBounds�6  �5  u m   � ��/�/���8  �7  �9  �D  d o   � ��.�. 0 	transform  b }~} l  � ��-�,�+�-  �,  �+  ~ � n  � ���� I   � ��*�)�(�* 0 	lockfocus 	lockFocus�)  �(  � o   � ��'�' 0 rotatedimage rotatedImage� ��� n  � ���� I   � ��&�%�$�& 
0 concat  �%  �$  � o   � ��#�# 0 	transform  � ��� n  � ���� I   � ��"��!�" R0 'drawinrect_fromrect_operation_fraction_ 'drawInRect_fromRect_operation_fraction_� ��� o   � �� �  0 imagebounds imageBounds� ��� l  � ����� n  � ���� o   � ��� 0 
cgrectzero 
CGRectZero� m   � ��
� misccura�  �  � ��� l  � ����� n  � ���� o   � ��� 80 nscompositingoperationcopy NSCompositingOperationCopy� m   � ��
� misccura�  �  � ��� m   � ��� ?�      �  �!  � o   � ��� 0 theimage theImage� ��� n  � ���� I   � ����� 0 unlockfocus unlockFocus�  �  � o   � ��� 0 rotatedimage rotatedImage� ��� l   ����  �  �  � ��� r   ��� n  ��� I  ���� (0 tiffrepresentation TIFFRepresentation�  �  � o   �� 0 rotatedimage rotatedImage� o      �
�
 $0 rotatedimagedata rotatedImageData� ��� r  ��� c  ��� l ��	�� n ��� I  	���� B0 base64encodedstringwithoptions_ base64EncodedStringWithOptions_� ��� m  	
��  �  �  � o  	�� $0 rotatedimagedata rotatedImageData�	  �  � m  �
� 
TEXT� n     ��� o  �� 0 
base64data  �  f  � �� � r   ��� m  ��
�� boovtrue� n     ��� 1  ��
�� 
imod�  f  �   � ��� l     ��������  ��  ��  � ��� l      ������  �71
			Saves the image at the provided file path.
			
			Params:
				filePath (String) - The path to save the image at.
				fileType (String) - The image type / file extension. One of "png", "jpg", "jpeg", "gif", "bmp", or "tiff".
				
			Returns:
				(Boolean) - True if the image was saved successfully.
		   � ���b 
 	 	 	 S a v e s   t h e   i m a g e   a t   t h e   p r o v i d e d   f i l e   p a t h . 
 	 	 	 
 	 	 	 P a r a m s : 
 	 	 	 	 f i l e P a t h   ( S t r i n g )   -   T h e   p a t h   t o   s a v e   t h e   i m a g e   a t . 
 	 	 	 	 f i l e T y p e   ( S t r i n g )   -   T h e   i m a g e   t y p e   /   f i l e   e x t e n s i o n .   O n e   o f   " p n g " ,   " j p g " ,   " j p e g " ,   " g i f " ,   " b m p " ,   o r   " t i f f " . 
 	 	 	 	 
 	 	 	 R e t u r n s : 
 	 	 	 	 ( B o o l e a n )   -   T r u e   i f   t h e   i m a g e   w a s   s a v e d   s u c c e s s f u l l y . 
 	 	� ��� i    "��� I     �����
�� .coresavenull���    obj ��  � ����
�� 
kfil� |����������  ��  � o      ���� 0 filepath filePath��  � l     ������ m      ��
�� 
msng��  ��  � �����
�� 
fltp� |����������  ��  � o      ���� 0 filetype fileType��  � m      �� ���  p n g��  � k     ��� ��� r     ��� m     ��
�� 
msng� o      ���� 0 theimagedata theImageData� ��� Z    /������ =   	��� n   ��� 1    ��
�� 
imod�  f    � m    ��
�� boovtrue� r    ��� n   ��� I    ������� L0 $initwithbase64encodedstring_options_ $initWithBase64EncodedString_options_� ��� l   ������ n   ��� o    ���� 0 
base64data  �  f    ��  ��  � ���� m    ����  ��  ��  � n   ��� I    �������� 	0 alloc  ��  ��  � n   ��� o    ���� 0 nsdata NSData� m    ��
�� misccura� o      ���� 0 theimagedata theImageData��  � k     /�� ��� r     '��� n    %��� I   ! %�������� 0 _getnsimage _getNSImage��  ��  �  f     !� o      ���� 0 theimage theImage� ���� r   ( /��� n  ( -��� I   ) -�������� (0 tiffrepresentation TIFFRepresentation��  ��  � o   ( )���� 0 theimage theImage� o      ���� 0 theimagedata theImageData��  � ��� l  0 0��������  ��  ��  � ��� r   0 :��� n  0 8��� I   3 8������� &0 imagerepwithdata_ imageRepWithData_�  ��  o   3 4���� 0 theimagedata theImageData��  ��  � n  0 3 o   1 3���� $0 nsbitmapimagerep NSBitmapImageRep m   0 1��
�� misccura� o      ���� 0 	thebitmap 	theBitmap�  l  ; ;��������  ��  ��    Z   ; Y���� =  ; >	
	 o   ; <���� 0 filepath filePath
 m   < =��
�� 
msng Z   A U�� C   A F n  A D o   B D���� 
0 target    f   A B m   D E �  / r   I N n  I L o   J L���� 
0 target    f   I J o      ���� 0 filepath filePath��   R   Q U����
�� .ascrerr ****      � **** m   S T � F M u s t   p r o v i d e   a n   o u t p u t   d e s t i n a t i o n .��  ��  ��    l  Z Z��������  ��  ��    r   Z _  n  Z ]!"! o   [ ]���� 40 nsbitmapimagefiletypepng NSBitmapImageFileTypePNG" m   Z [��
�� misccura  o      ���� 0 thetype theType #$# P   ` �%��&% Z   e �'()��' G   e v*+* =  e j,-, o   e f���� 0 filetype fileType- m   f i.. �//  j p g+ =  m r010 o   m n���� 0 filetype fileType1 m   n q22 �33  j p e g( r   y �454 n  y ~676 o   z ~���� 60 nsbitmapimagefiletypejpeg NSBitmapImageFileTypeJPEG7 m   y z��
�� misccura5 o      ���� 0 thetype theType) 898 =  � �:;: o   � ����� 0 filetype fileType; m   � �<< �==  g i f9 >?> r   � �@A@ n  � �BCB o   � ����� 40 nsbitmapimagefiletypegif NSBitmapImageFileTypeGIFC m   � ���
�� misccuraA o      ���� 0 thetype theType? DED =  � �FGF o   � ����� 0 filetype fileTypeG m   � �HH �II  b m pE JKJ r   � �LML n  � �NON o   � ����� 40 nsbitmapimagefiletypebmp NSBitmapImageFileTypeBMPO m   � ���
�� misccuraM o      ���� 0 thetype theTypeK PQP =  � �RSR o   � ����� 0 filetype fileTypeS m   � �TT �UU  t i f fQ V��V r   � �WXW n  � �YZY o   � ����� 60 nsbitmapimagefiletypetiff NSBitmapImageFileTypeTIFFZ m   � ���
�� misccuraX o      ���� 0 thetype theType��  ��  ��  & ����
�� conscase��  $ [\[ l  � ���������  ��  ��  \ ]^] r   � �_`_ n  � �aba I   � ���c���� J0 #representationusingtype_properties_ #representationUsingType_properties_c ded o   � ����� 0 thetype theTypee f��f l  � �g����g m   � ���
�� 
msng��  ��  ��  ��  b o   � ����� 0 	thebitmap 	theBitmap` o      ���� 0 thedata theData^ hih l  � ���������  ��  ��  i jkj r   � �lml n  � �non I   � ���p���� $0 fileurlwithpath_ fileURLWithPath_p q��q o   � ����� 0 filepath filePath��  ��  o n  � �rsr o   � ����� 	0 NSURL  s m   � ���
�� misccuram o      ���� 0 theurl theURLk t��t n  � �uvu I   � ���w���� 00 writetourl_atomically_ writeToURL_atomically_w xyx o   � ����� 0 theurl theURLy z��z m   � ��
� boovtrue��  ��  v o   � ��~�~ 0 thedata theData��  � {|{ l     �}�|�{�}  �|  �{  | }~} l      �z��z   � �
			Opens the image, accounting for any modifications.
			
			Returns:
				(Boolean) - True if the image was opened successfully.
		   � ��� 
 	 	 	 O p e n s   t h e   i m a g e ,   a c c o u n t i n g   f o r   a n y   m o d i f i c a t i o n s . 
 	 	 	 
 	 	 	 R e t u r n s : 
 	 	 	 	 ( B o o l e a n )   -   T r u e   i f   t h e   i m a g e   w a s   o p e n e d   s u c c e s s f u l l y . 
 	 	~ ��y� i   # &��� I     �x�w�v
�x .aevtodocnull  �    alis�w  �v  � k     ~�� ��� r     ��� m     �u
�u 
msng� o      �t�t 0 theimagedata theImageData� ��� Z    /���s�� =   	��� n   ��� 1    �r
�r 
imod�  f    � m    �q
�q boovtrue� r    ��� n   ��� I    �p��o�p L0 $initwithbase64encodedstring_options_ $initWithBase64EncodedString_options_� ��� l   ��n�m� n   ��� o    �l�l 0 
base64data  �  f    �n  �m  � ��k� m    �j�j  �k  �o  � n   ��� I    �i�h�g�i 	0 alloc  �h  �g  � n   ��� o    �f�f 0 nsdata NSData� m    �e
�e misccura� o      �d�d 0 theimagedata theImageData�s  � k     /�� ��� r     '��� n    %��� I   ! %�c�b�a�c 0 _getnsimage _getNSImage�b  �a  �  f     !� o      �`�` 0 theimage theImage� ��_� r   ( /��� n  ( -��� I   ) -�^�]�\�^ (0 tiffrepresentation TIFFRepresentation�]  �\  � o   ( )�[�[ 0 theimage theImage� o      �Z�Z 0 theimagedata theImageData�_  � ��� l  0 0�Y�X�W�Y  �X  �W  � ��� r   0 :��� n  0 8��� I   3 8�V��U�V &0 imagerepwithdata_ imageRepWithData_� ��T� o   3 4�S�S 0 theimagedata theImageData�T  �U  � n  0 3��� o   1 3�R�R $0 nsbitmapimagerep NSBitmapImageRep� m   0 1�Q
�Q misccura� o      �P�P 0 	thebitmap 	theBitmap� ��� r   ; F��� n  ; D��� I   < D�O��N�O J0 #representationusingtype_properties_ #representationUsingType_properties_� ��� l  < ?��M�L� n  < ?��� o   = ?�K�K 40 nsbitmapimagefiletypepng NSBitmapImageFileTypePNG� m   < =�J
�J misccura�M  �L  � ��I� l  ? @��H�G� m   ? @�F
�F 
msng�H  �G  �I  �N  � o   ; <�E�E 0 	thebitmap 	theBitmap� o      �D�D 0 thedata theData� ��� l  G G�C�B�A�C  �B  �A  � ��� r   G V��� b   G T��� n   G P��� 1   N P�@
�@ 
psxp� l  G N��?�>� c   G N��� I   G L�=�<�;�= ,0 nstemporarydirectory NSTemporaryDirectory�<  �;  � m   L M�:
�: 
TEXT�?  �>  � m   P S�� ���  I m a g e . p n g� o      �9�9 0 thetempfile theTempFile� ��� r   W c��� n  W a��� I   \ a�8��7�8 $0 fileurlwithpath_ fileURLWithPath_� ��6� o   \ ]�5�5 0 thetempfile theTempFile�6  �7  � n  W \��� o   X \�4�4 	0 NSURL  � m   W X�3
�3 misccura� o      �2�2 0 theurl theURL� ��� n  d k��� I   e k�1��0�1 00 writetourl_atomically_ writeToURL_atomically_� ��� o   e f�/�/ 0 theurl theURL� ��.� m   f g�-
�- boovtrue�.  �0  � o   d e�,�, 0 thedata theData� ��� r   l w��� n  l u��� I   q u�+�*�)�+ "0 sharedworkspace sharedWorkspace�*  �)  � n  l q��� o   m q�(�( 0 nsworkspace NSWorkspace� m   l m�'
�' misccura� o      �&�& 0 theworkspace theWorkspace� ��%� n  x ~��� I   y ~�$��#�$ 0 openurl_ openURL_� ��"� o   y z�!�! 0 theurl theURL�"  �#  � o   x y� �  0 theworkspace theWorkspace�%  �y   6 ��� l   ����  �  �  � ��� r    ��� n   ��� I   	 ���� 0 _getnsimage _getNSImage�  �  � o    	�� 0 ilimage ILImage� o      �� 0 theimage theImage� ��� l   ����  �  �  �    Z    F�� >    o    �� 0 theimage theImage m    �
� 
msng k    B  r    &	
	 c    " l    �� n     I     ��� B0 base64encodedstringwithoptions_ base64EncodedStringWithOptions_ � m    ��  �  �   n    I    �
�	��
 (0 tiffrepresentation TIFFRepresentation�	  �   o    �� 0 theimage theImage�  �   m     !�
� 
TEXT
 n      o   # %�� 0 
base64data   o   " #�� 0 ilimage ILImage  r   ' 4 n  ' 0 I   , 0���� 	0 width  �  �   n  ' , I   ( ,� �����  0 size  ��  ��   o   ' (���� 0 theimage theImage n      o   1 3���� 	0 width   o   0 1���� 0 ilimage ILImage  ��  r   5 B!"! n  5 >#$# I   : >�������� 
0 height  ��  ��  $ n  5 :%&% I   6 :�������� 0 size  ��  ��  & o   5 6���� 0 theimage theImage" n     '(' o   ? A���� 
0 height  ( o   > ?���� 0 ilimage ILImage��  �  �   )*) l  G G��������  ��  ��  * +��+ L   G I,, o   G H���� 0 ilimage ILImage��   / -.- l     ��������  ��  ��  . /0/ l      ��12��  1 � �
	Initializes an ILImage script object from a system symbol.
	
	Params:
		symbolName (String) - The name the target system symbol.
		pointSize (Number) - The font size of the symbol.
		
	Returns:
		(ILImage) - The newly created image object.
   2 �33� 
 	 I n i t i a l i z e s   a n   I L I m a g e   s c r i p t   o b j e c t   f r o m   a   s y s t e m   s y m b o l . 
 	 
 	 P a r a m s : 
 	 	 s y m b o l N a m e   ( S t r i n g )   -   T h e   n a m e   t h e   t a r g e t   s y s t e m   s y m b o l . 
 	 	 p o i n t S i z e   ( N u m b e r )   -   T h e   f o n t   s i z e   o f   t h e   s y m b o l . 
 	 	 
 	 R e t u r n s : 
 	 	 ( I L I m a g e )   -   T h e   n e w l y   c r e a t e d   i m a g e   o b j e c t . 
0 454 i   6 9676 I      ��8���� 0 symbol Symbol8 9:9 o      ���� 0 
symbolname 
symbolName: ;��; o      ���� 0 	pointsize 	pointSize��  ��  7 k     e<< =>= r     ?@? I     ��A���� 0 image ImageA B��B m    CC �DD  - - -��  ��  @ o      ���� 0 imageobj imageObj> EFE l  	 	��������  ��  ��  F GHG r   	 IJI n  	 KLK I    ��M���� H0 "configurationwithpointsize_weight_ "configurationWithPointSize_weight_M NON o    ���� 0 	pointsize 	pointSizeO P��P l   Q����Q n   RSR o    ���� *0 nsfontweightregular NSFontWeightRegularS m    ��
�� misccura��  ��  ��  ��  L n  	 TUT o   
 ���� 80 nsimagesymbolconfiguration NSImageSymbolConfigurationU m   	 
��
�� misccuraJ o      ���� 0 	theconfig 	theConfigH VWV r    "XYX n    Z[Z I     ��\���� j0 3imagewithsystemsymbolname_accessibilitydescription_ 3imageWithSystemSymbolName_accessibilityDescription_\ ]^] o    ���� 0 
symbolname 
symbolName^ _��_ l   `����` m    ��
�� 
msng��  ��  ��  ��  [ n   aba o    ���� 0 nsimage NSImageb m    ��
�� misccuraY o      ���� 0 theimage theImageW cdc r   # +efe n  # )ghg I   $ )��i���� >0 imagewithsymbolconfiguration_ imageWithSymbolConfiguration_i j��j o   $ %���� 0 	theconfig 	theConfig��  ��  h o   # $���� 0 theimage theImagef o      ���� 0 theimage theImaged klk l  , ,��������  ��  ��  l mnm r   , <opo c   , 8qrq l  , 6s����s n  , 6tut I   1 6��v���� B0 base64encodedstringwithoptions_ base64EncodedStringWithOptions_v w��w m   1 2����  ��  ��  u n  , 1xyx I   - 1�������� (0 tiffrepresentation TIFFRepresentation��  ��  y o   , -���� 0 theimage theImage��  ��  r m   6 7��
�� 
TEXTp n     z{z o   9 ;���� 0 
base64data  { o   8 9���� 0 imageobj imageObjn |}| r   = J~~ n  = F��� I   B F�������� 	0 width  ��  ��  � n  = B��� I   > B�������� 0 size  ��  ��  � o   = >���� 0 theimage theImage n     ��� o   G I���� 	0 width  � o   F G���� 0 imageobj imageObj} ��� r   K Z��� n  K T��� I   P T�������� 
0 height  ��  ��  � n  K P��� I   L P�������� 0 size  ��  ��  � o   K L���� 0 theimage theImage� n     ��� o   U Y���� 
0 height  � o   T U���� 0 imageobj imageObj� ��� r   [ b��� m   [ \��
�� boovtrue� n     ��� 1   ] a��
�� 
imod� o   \ ]���� 0 imageobj imageObj� ��� l  c c��������  ��  ��  � ���� L   c e�� o   c d���� 0 imageobj imageObj��  5 ��� l     ��������  ��  ��  � ��� l      ������  � � �
	Rotates an image clockwise by the specifies number of degrees.
	
	Syn. rotate(theImage, degrees), ILImage's rotate by degrees
	
	Params:
		theImage (ILImage) - The image object to rotate.
		degrees (Number) - The amount to rotate the image.
   � ���� 
 	 R o t a t e s   a n   i m a g e   c l o c k w i s e   b y   t h e   s p e c i f i e s   n u m b e r   o f   d e g r e e s . 
 	 
 	 S y n .   r o t a t e ( t h e I m a g e ,   d e g r e e s ) ,   I L I m a g e ' s   r o t a t e   b y   d e g r e e s 
 	 
 	 P a r a m s : 
 	 	 t h e I m a g e   ( I L I m a g e )   -   T h e   i m a g e   o b j e c t   t o   r o t a t e . 
 	 	 d e g r e e s   ( N u m b e r )   -   T h e   a m o u n t   t o   r o t a t e   t h e   i m a g e . 
� ��� i   : =��� I      ������ 0 
rotatation  � o      ���� 0 theimage theImage� �����
�� 
by  � o      ���� 0 degrees  ��  � n    ��� l   ������ I   ������� 
0 rotate  ��  � �����
�� 
by  � o    ���� 0 degrees  ��  ��  ��  � o     ���� 0 theimage theImage� ��� l     ��������  ��  ��  � ��� l      ������  � � �
	Rotates an image clockwise by the specifies number of degrees.
	
	Syn. rotation of theImage by degrees, ILImage's rotate by degrees
	
	Params:
		theImage (ILImage) - The image object to rotate.
		degrees (Number) - The amount to rotate the image.
   � ���� 
 	 R o t a t e s   a n   i m a g e   c l o c k w i s e   b y   t h e   s p e c i f i e s   n u m b e r   o f   d e g r e e s . 
 	 
 	 S y n .   r o t a t i o n   o f   t h e I m a g e   b y   d e g r e e s ,   I L I m a g e ' s   r o t a t e   b y   d e g r e e s 
 	 
 	 P a r a m s : 
 	 	 t h e I m a g e   ( I L I m a g e )   -   T h e   i m a g e   o b j e c t   t o   r o t a t e . 
 	 	 d e g r e e s   ( N u m b e r )   -   T h e   a m o u n t   t o   r o t a t e   t h e   i m a g e . 
� ���� i   > A��� I      ������ 
0 rotate  � ��� o      �~�~ 0 theimage theImage� ��}� o      �|�| 0 degrees  �}  �  � n    ��� l   ��{�z� I   �y�x��y 
0 rotate  �x  � �w��v
�w 
by  � o    �u�u 0 degrees  �v  �{  �z  � o     �t�t 0 theimage theImage��       
�s����r�q�����s  � �p�o�n�m�l�k�j�i
�p 
pimr�o 0 nsimage NSImage�n 0 x_axis X_AXIS�m 0 y_axis Y_AXIS�l 0 image Image�k 0 symbol Symbol�j 0 
rotatation  �i 
0 rotate  � �h��h �  ���� �g��f
�g 
cobj� ��   �e 	
�e 
frmk�f  � �d��c
�d 
cobj� ��   �b 
�b 
frmk�c  � �a��`
�a 
cobj� ��   �_ 
�_ 
frmk�`  � �� �^�]�
�^ misccura
�] 
pcls� ���  N S I m a g e�r �q  � �\ 1�[�Z���Y�\ 0 image Image�[ �X��X �  �W�W 0 	thetarget 	theTarget�Z  � �V�U�T�V 0 	thetarget 	theTarget�U 0 ilimage ILImage�T 0 theimage theImage� �S 7��R�Q�P�O�N�M�L�K�J�S 0 ilimage ILImage� �I��H�G���F
�I .ascrinit****      � ****� k     &��  9��  <��  ?��  B��  E��  O��  ��� ��� ��� ��E�E  �H  �G  � 
�D�C�B�A�@�?�>�=�<�;�D 
0 target  �C 	0 width  �B 
0 height  �A 0 
base64data  
�@ 
imod�? 0 _getnsimage _getNSImage�> 0 flip  �= 
0 rotate  
�< .coresavenull���    obj 
�; .aevtodocnull  �    alis� �:�9�8�7�6�5������: 
0 target  
�9 
msng�8 	0 width  �7 
0 height  �6 0 
base64data  
�5 
imod� �4 R�3�2���1�4 0 _getnsimage _getNSImage�3  �2  � �0�/�.�-�0 0 _nsimage _NSImage�/ 0 theimage theImage�. 0 theimagedata theImageData�- 0 theurl theURL� �, \�+�*�)�(�'�&�%�$�#�" ��! �� �� � �
�, misccura�+ &0 nsclassfromstring NSClassFromString
�* 
msng
�) 
imod�( 0 nsdata NSData�' 	0 alloc  �& 0 
base64data  �% L0 $initwithbase64encodedstring_options_ $initWithBase64EncodedString_options_�$ 0 nsimage NSImage�# 0 initwithdata_ initWithData_�" 
0 target  �! 20 initwithcontentsoffile_ initWithContentsOfFile_�  0 nsurl NSURL�  0 urlwithstring_ URLWithString_� 00 initwithcontentsofurl_ initWithContentsOfURL_�1 ���k+ E�O�E�O)�,e  $��,j+ )�,jl+ E�O��,j+ �k+ 
Y hO)�,� ��,j+ )�,k+ Y @)�,� ��,)�,k+ E�O��,j+ �k+ Y )�,a   �Y )ja )�,%� � ������� 0 flip  �  � ���
� 
over� 0 axis  �  � ������� 0 axis  � 0 theimage theImage� 0 flippedimage flippedImage� 0 	transform  � 0 therect theRect� $0 flippedimagedata flippedImageData� �������
�	�����T���� ������������� 0 _getnsimage _getNSImage
� misccura� 0 nsimage NSImage� 	0 alloc  � 0 size  � 0 initwithsize_ initWithSize_�
 0 	lockfocus 	lockFocus�	 &0 nsaffinetransform NSAffineTransform� 0 init  � 0 scalexby_yby_ scaleXBy_yBy_� 	0 width  � &0 translatexby_yby_ translateXBy_yBy_� 
0 height  � 
0 concat  � � 0 
nsmakerect 
NSMakeRect�  0 drawinrect_ drawInRect_�� 0 unlockfocus unlockFocus�� (0 tiffrepresentation TIFFRepresentation�� B0 base64encodedstringwithoptions_ base64EncodedStringWithOptions_
�� 
TEXT�� 0 
base64data  
�� 
imod� �)j+  E�O��,j+ �j+ k+ E�O�j+ O��,j+ j+ E�O�j  �ikl+ 	O�j)�,jl+ Y "�k  �kil+ 	O�jj)�,l+ Y )j�O�j+ O�jj)�,)�,�+ E�O��k+ O�j+ O�j+ E�O�jk+ a &)a ,FOe)a ,F� ������������� 
0 rotate  ��  �� ������
�� 
by  �� 0 degrees  ��  � 	�������������������� 0 degrees  �� 0 theimage theImage�� 0 imagebounds imageBounds�� 0 
pathbounds 
pathBounds�� 0 thetransform theTransform�� 0 rotatedbounds rotatedBounds�� 0 rotatedimage rotatedImage�� 0 	transform  �� $0 rotatedimagedata rotatedImageData� #����������������������������������������������������������������������� 0 _getnsimage _getNSImage
�� misccura�� 	0 width  �� 
0 height  �� �� 0 
nsmakerect 
NSMakeRect�� 0 nsbezierpath NSBezierPath�� *0 bezierpathwithrect_ bezierPathWithRect_�� &0 nsaffinetransform NSAffineTransform�� 0 	transform  �� $0 rotatebydegrees_ rotateByDegrees_�� @0 transformusingaffinetransform_ transformUsingAffineTransform_�� 
0 bounds  
�� 
cobj�� 0 nsimage NSImage�� 	0 alloc  �� 0 initwithsize_ initWithSize_�� 0 nsmidx NSMidX�� 0 nswidth NSWidth�� 0 nsmidy NSMidY�� 0 nsheight NSHeight�� &0 translatexby_yby_ translateXBy_yBy_������ 0 	lockfocus 	lockFocus�� 
0 concat  �� 0 
cgrectzero 
CGRectZero�� 80 nscompositingoperationcopy NSCompositingOperationCopy�� R0 'drawinrect_fromrect_operation_fraction_ 'drawInRect_fromRect_operation_fraction_�� 0 unlockfocus unlockFocus�� (0 tiffrepresentation TIFFRepresentation�� B0 base64encodedstringwithoptions_ base64EncodedStringWithOptions_
�� 
TEXT�� 0 
base64data  
�� 
imod��!)j+  E�O�jj)�,)�,�+ E�O��,�k+ E�O��,j+ 	E�O��'k+ 
O��k+ O�jj�j+ �l/�k/�j+ �l/�l/�+ E�O��,j+ ��l/k+ E�O�k+ �k+ l!�k+ �k+ l!lv��k/FO��,j+ 	E�O���l/�k/l!��l/�l/l!l+ O��'k+ 
O���l/�k/a !��l/�l/a !l+ O�j+ O�j+ O���a ,�a ,a �+ O�j+ O�j+ E�O�jk+ a  &)a !,FOe)a ",F� �����������
�� .coresavenull���    obj ��  �� ����
�� 
kfil� {�������� 0 filepath filePath��  
�� 
msng� �����
�� 
fltp� {������� 0 filetype fileType��  ��  � ������������������ 0 filepath filePath�� 0 filetype fileType�� 0 theimagedata theImageData�� 0 theimage theImage�� 0 	thebitmap 	theBitmap�� 0 thetype theType�� 0 thedata theData�� 0 theurl theURL� ��������������������������&.2����<��H��T����������
�� 
msng
�� 
imod
�� misccura�� 0 nsdata NSData�� 	0 alloc  �� 0 
base64data  �� L0 $initwithbase64encodedstring_options_ $initWithBase64EncodedString_options_�� 0 _getnsimage _getNSImage�� (0 tiffrepresentation TIFFRepresentation�� $0 nsbitmapimagerep NSBitmapImageRep�� &0 imagerepwithdata_ imageRepWithData_�� 
0 target  �� 40 nsbitmapimagefiletypepng NSBitmapImageFileTypePNG
�� 
bool�� 60 nsbitmapimagefiletypejpeg NSBitmapImageFileTypeJPEG�� 40 nsbitmapimagefiletypegif NSBitmapImageFileTypeGIF�� 40 nsbitmapimagefiletypebmp NSBitmapImageFileTypeBMP�� 60 nsbitmapimagefiletypetiff NSBitmapImageFileTypeTIFF�� J0 #representationusingtype_properties_ #representationUsingType_properties_�� 	0 NSURL  �� $0 fileurlwithpath_ fileURLWithPath_�� 00 writetourl_atomically_ writeToURL_atomically_�� ��E�O)�,e  ��,j+ )�,jl+ E�Y )j+ E�O�j+ E�O��,�k+ 
E�O��  )�,� 
)�,E�Y )j�Y hO��,E�Og� X�a  
 �a  a & �a ,E�Y 9�a   �a ,E�Y '�a   �a ,E�Y �a   �a ,E�Y hVO���l+ E�O�a ,�k+ E�O��el+ � �����������
�� .aevtodocnull  �    alis��  ��  � ���������������� 0 theimagedata theImageData�� 0 theimage theImage�� 0 	thebitmap 	theBitmap�� 0 thedata theData�� 0 thetempfile theTempFile�� 0 theurl theURL�� 0 theworkspace theWorkspace� �����������������������������������������~�}
�� 
msng
�� 
imod
�� misccura�� 0 nsdata NSData�� 	0 alloc  �� 0 
base64data  �� L0 $initwithbase64encodedstring_options_ $initWithBase64EncodedString_options_�� 0 _getnsimage _getNSImage�� (0 tiffrepresentation TIFFRepresentation�� $0 nsbitmapimagerep NSBitmapImageRep�� &0 imagerepwithdata_ imageRepWithData_�� 40 nsbitmapimagefiletypepng NSBitmapImageFileTypePNG�� J0 #representationusingtype_properties_ #representationUsingType_properties_�� ,0 nstemporarydirectory NSTemporaryDirectory
�� 
TEXT
�� 
psxp�� 	0 NSURL  �� $0 fileurlwithpath_ fileURLWithPath_�� 00 writetourl_atomically_ writeToURL_atomically_� 0 nsworkspace NSWorkspace�~ "0 sharedworkspace sharedWorkspace�} 0 openurl_ openURL_�� �E�O)�,e  ��,j+ )�,jl+ E�Y )j+ E�O�j+ E�O��,�k+ 
E�O���,�l+ E�O*j+ �&�,a %E�O�a ,�k+ E�O��el+ O�a ,j+ E�O��k+ �F 'b   �O�O�O�Of�OL OL OL OL 	OL 
�R 0 _getnsimage _getNSImage
�Q 
msng�P (0 tiffrepresentation TIFFRepresentation�O B0 base64encodedstringwithoptions_ base64EncodedStringWithOptions_
�N 
TEXT�M 0 
base64data  �L 0 size  �K 	0 width  �J 
0 height  �Y J��K S�O�j+ E�O�� 1�j+ jk+ �&��,FO�j+ 	j+ 
��,FO�j+ 	j+ ��,FY hO�� �|7�{�z���y�| 0 symbol Symbol�{ �x��x �  �w�v�w 0 
symbolname 
symbolName�v 0 	pointsize 	pointSize�z  � �u�t�s�r�q�u 0 
symbolname 
symbolName�t 0 	pointsize 	pointSize�s 0 imageobj imageObj�r 0 	theconfig 	theConfig�q 0 theimage theImage� C�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�p 0 image Image
�o misccura�n 80 nsimagesymbolconfiguration NSImageSymbolConfiguration�m *0 nsfontweightregular NSFontWeightRegular�l H0 "configurationwithpointsize_weight_ "configurationWithPointSize_weight_�k 0 nsimage NSImage
�j 
msng�i j0 3imagewithsystemsymbolname_accessibilitydescription_ 3imageWithSystemSymbolName_accessibilityDescription_�h >0 imagewithsymbolconfiguration_ imageWithSymbolConfiguration_�g (0 tiffrepresentation TIFFRepresentation�f B0 base64encodedstringwithoptions_ base64EncodedStringWithOptions_
�e 
TEXT�d 0 
base64data  �c 0 size  �b 	0 width  �a 
0 height  
�` 
imod�y f*�k+ E�O��,���,l+ E�O��,��l+ E�O��k+ 	E�O�j+ 
jk+ �&��,FO�j+ j+ ��,FO�j+ j+ �a ,FOe�a ,FO�� �_��^�]���\�_ 0 
rotatation  �^ 0 theimage theImage�] �[�Z�Y
�[ 
by  �Z 0 degrees  �Y  � �X�W�X 0 theimage theImage�W 0 degrees  � �V�U
�V 
by  �U 
0 rotate  �\ ��l � �T��S�R���Q�T 
0 rotate  �S �P��P �  �O�N�O 0 theimage theImage�N 0 degrees  �R  � �M�L�M 0 theimage theImage�L 0 degrees  � �K�J
�K 
by  �J 
0 rotate  �Q ��l  ascr  ��ޭ