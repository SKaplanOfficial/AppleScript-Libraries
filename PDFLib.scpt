FasdUAS 1.101.10   ��   ��    k             x     �� ����    4    �� 
�� 
frmk  m     	 	 � 
 
  F o u n d a t i o n��        x    �� ����    4    �� 
�� 
frmk  m       �    P D F K i t��        x    $�� ����    2   ��
�� 
osax��        l     ��������  ��  ��        j   $ &�� �� 0 x_axis X_AXIS  m   $ %����       j   ' )�� �� 0 y_axis Y_AXIS  m   ' (����        l     ��������  ��  ��        l      ��   !��     � �
	Initializes a PLPDF script object.
	
	Params:
		theTarget (String) - The file path or remote URL of a PDF document.
		
	Returns
		(PLPDF) - The newly created PDF object.
    ! � " "X 
 	 I n i t i a l i z e s   a   P L P D F   s c r i p t   o b j e c t . 
 	 
 	 P a r a m s : 
 	 	 t h e T a r g e t   ( S t r i n g )   -   T h e   f i l e   p a t h   o r   r e m o t e   U R L   o f   a   P D F   d o c u m e n t . 
 	 	 
 	 R e t u r n s 
 	 	 ( P L P D F )   -   T h e   n e w l y   c r e a t e d   P D F   o b j e c t . 
   # $ # i   * - % & % I      �� '���� 
0 pdf PDF '  (�� ( o      ���� 0 	thetarget 	theTarget��  ��   & k     < ) )  * + * h     �� ,�� 0 plpdf PLPDF , k       - -  . / . j     �� 0�� 
0 target   0 o     ���� 0 	thetarget 	theTarget /  1 2 1 j    	�� 3�� 0 	pagecount 	pageCount 3 m    ��
�� 
msng 2  4 5 4 j   
 �� 6�� 0 metadata   6 m   
 ��
�� 
msng 5  7 8 7 l     ��������  ��  ��   8  9 : 9 l      �� ; <��   ; J D
			Gets the PDFKit PDFDocument object representation of the PDF.
		    < � = = � 
 	 	 	 G e t s   t h e   P D F K i t   P D F D o c u m e n t   o b j e c t   r e p r e s e n t a t i o n   o f   t h e   P D F . 
 	 	 :  > ? > i     @ A @ I      �������� "0 _getpdfdocument _getPDFDocument��  ��   A k     5 B B  C D C r      E F E m     ��
�� 
msng F o      ���� 0 fileurl fileURL D  G H G Z    ' I J�� K I C    	 L M L n    N O N o    ���� 
0 target   O  f     M m     P P � Q Q  / J k     R R  S T S l   �� U V��   U ' ! The target is a file on the disk    V � W W B   T h e   t a r g e t   i s   a   f i l e   o n   t h e   d i s k T  X�� X r     Y Z Y n    [ \ [ I    �� ]���� $0 fileurlwithpath_ fileURLWithPath_ ]  ^�� ^ l    _���� _ n    ` a ` o    ���� 
0 target   a  f    ��  ��  ��  ��   \ n    b c b o    ���� 0 nsurl NSURL c m    ��
�� misccura Z o      ���� 0 fileurl fileURL��  ��   K k    ' d d  e f e l   �� g h��   g !  The target is a remote PDF    h � i i 6   T h e   t a r g e t   i s   a   r e m o t e   P D F f  j�� j r    ' k l k n   % m n m I    %�� o����  0 urlwithstring_ URLWithString_ o  p�� p l   ! q���� q n   ! r s r o    !���� 
0 target   s  f    ��  ��  ��  ��   n n    t u t o    ���� 0 nsurl NSURL u m    ��
�� misccura l o      ���� 0 fileurl fileURL��   H  v w v l  ( (��������  ��  ��   w  x�� x L   ( 5 y y n  ( 4 z { z I   / 4�� |���� 0 initwithurl_ initWithURL_ |  }�� } o   / 0���� 0 fileurl fileURL��  ��   { n  ( / ~  ~ I   + /�������� 	0 alloc  ��  ��    n  ( + � � � o   ) +���� 0 pdfdocument PDFDocument � m   ( )��
�� misccura��   ?  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 extracttext extractText��  ��   � k      � �  � � � r      � � � n     � � � I    �������� "0 _getpdfdocument _getPDFDocument��  ��   �  f      � o      ���� 0 thedocument theDocument �  ��� � L     � � c     � � � n    � � � I   	 �������� 
0 string  ��  ��   � o    	���� 0 thedocument theDocument � m    ��
�� 
ctxt��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �
			Flips each page of the PDF vertically or horizontally.
			
			Params:
				axis (Number) - The axis to flip each page across. One of X_AXIS, Y_AXIS, 0, or 1.
				filePath (String) - The path to save the resulting PDF in.
		    � � � �� 
 	 	 	 F l i p s   e a c h   p a g e   o f   t h e   P D F   v e r t i c a l l y   o r   h o r i z o n t a l l y . 
 	 	 	 
 	 	 	 P a r a m s : 
 	 	 	 	 a x i s   ( N u m b e r )   -   T h e   a x i s   t o   f l i p   e a c h   p a g e   a c r o s s .   O n e   o f   X _ A X I S ,   Y _ A X I S ,   0 ,   o r   1 . 
 	 	 	 	 f i l e P a t h   ( S t r i n g )   -   T h e   p a t h   t o   s a v e   t h e   r e s u l t i n g   P D F   i n . 
 	 	 �  � � � i     � � � I      ���� ��� 0 flip  ��   � �� � �
�� 
over � o      ���� 0 axis   � �� ���
�� 
into � |���� ��� ���  ��   � o      ���� 0 filepath filePath��   � l      ����� � m      ��
�� 
msng��  ��  ��   � k     � � �  � � � r      � � � n     � � � I    �������� "0 _getpdfdocument _getPDFDocument��  ��   �  f      � o      ���� 0 pdfdoc pdfDoc �  � � � l   ��������  ��  ��   �  � � � Z    & � ����� � =    � � � o    	���� 0 filepath filePath � m   	 
��
�� 
msng � Z    " � ��� � � C     � � � n    � � � o    ���� 
0 target   �  f     � m     � � � � �  / � r     � � � n    � � � o    ���� 
0 target   �  f     � o      ���� 0 filepath filePath��   � R    "�� ���
�� .ascrerr ****      � **** � m     ! � � � � � F M u s t   p r o v i d e   a n   o u t p u t   d e s t i n a t i o n .��  ��  ��   �  � � � l  ' '��~�}�  �~  �}   �  � � � Y   ' � ��| � ��{ � k   7 � � �  � � � r   7 ? � � � l  7 = ��z�y � n  7 = � � � I   8 =�x ��w�x 0 pageatindex_ pageAtIndex_ �  ��v � o   8 9�u�u 0 i  �v  �w   � o   7 8�t�t 0 pdfdoc pdfDoc�z  �y   � o      �s�s 0 
thepdfpage 
thePDFPage �  � � � r   @ J � � � l  @ H ��r�q � n  @ H � � � I   A H�p ��o�p 0 boundsforbox_ boundsForBox_ �  ��n � l  A D ��m�l � n  A D � � � o   B D�k�k 00 kpdfdisplayboxmediabox kPDFDisplayBoxMediaBox � m   A B�j
�j misccura�m  �l  �n  �o   � o   @ A�i�i 0 
thepdfpage 
thePDFPage�r  �q   � o      �h�h 0 pdfrect pdfRect �  � � � r   K \ � � � l  K Z ��g�f � n  K Z � � � I   R Z�e ��d�e 0 initwithsize_ initWithSize_ �  ��c � l  R V ��b�a � n   R V � � � 4   S V�` �
�` 
cobj � m   T U�_�_  � o   R S�^�^ 0 pdfrect pdfRect�b  �a  �c  �d   � n  K R � � � I   N R�]�\�[�] 	0 alloc  �\  �[   � n  K N � � � o   L N�Z�Z 0 nsimage NSImage � m   K L�Y
�Y misccura�g  �f   � o      �X�X "0 flippedpdfimage flippedPdfImage �  � � � l  ] ]�W�V�U�W  �V  �U   �  � � � n  ] b � � � I   ^ b�T�S�R�T 0 	lockfocus 	lockFocus�S  �R   � o   ] ^�Q�Q "0 flippedpdfimage flippedPdfImage �  � � � r   c p � � � n  c n � � � I   j n�P�O�N�P 0 init  �O  �N   � n  c j   I   f j�M�L�K�M 	0 alloc  �L  �K   n  c f o   d f�J�J &0 nsaffinetransform NSAffineTransform m   c d�I
�I misccura � o      �H�H 0 	transform   �  l  q q�G�F�E�G  �F  �E    Z   q �	
 =  q t o   q r�D�D 0 axis   m   r s�C�C  	 k   w �  l  w ~�B�A n  w ~ I   x ~�@�?�@ 0 scalexby_yby_ scaleXBy_yBy_  m   x y�>�>�� �= m   y z�<�< �=  �?   o   w x�;�; 0 	transform  �B  �A   �: l   ��9�8 n   � I   � ��7�6�7 &0 translatexby_yby_ translateXBy_yBy_  l  � ��5�4 d   � �   l  � �!�3�2! n   � �"#" 4   � ��1$
�1 
cobj$ m   � ��0�0 # n   � �%&% 4   � ��/'
�/ 
cobj' m   � ��.�. & o   � ��-�- 0 pdfrect pdfRect�3  �2  �5  �4   (�,( m   � ��+�+  �,  �6   o    ��*�* 0 	transform  �9  �8  �:  
 )*) =  � �+,+ o   � ��)�) 0 axis  , m   � ��(�( * -�'- k   � �.. /0/ l  � �1�&�%1 n  � �232 I   � ��$4�#�$ 0 scalexby_yby_ scaleXBy_yBy_4 565 m   � ��"�" 6 7�!7 m   � �� � ���!  �#  3 o   � ��� 0 	transform  �&  �%  0 8�8 l  � �9��9 n  � �:;: I   � ��<�� &0 translatexby_yby_ translateXBy_yBy_< =>= m   � ���  > ?�? l  � �@��@ d   � �AA l  � �B��B n   � �CDC 4   � ��E
� 
cobjE m   � ��� D n   � �FGF 4   � ��H
� 
cobjH m   � ��� G o   � ��� 0 pdfrect pdfRect�  �  �  �  �  �  ; o   � ��� 0 	transform  �  �  �  �'   R   � ��I�
� .ascrerr ****      � ****I m   � �JJ �KK  I n v a l i d   a x i s .�   LML n  � �NON I   � ���
�	� 
0 concat  �
  �	  O o   � ��� 0 	transform  M PQP l  � �R��R n  � �STS I   � ��U�� 0 drawwithbox_ drawWithBox_U V�V l  � �W��W n  � �XYX o   � �� �  00 kpdfdisplayboxmediabox kPDFDisplayBoxMediaBoxY m   � ���
�� misccura�  �  �  �  T o   � ����� 0 
thepdfpage 
thePDFPage�  �  Q Z[Z n  � �\]\ I   � ��������� 0 unlockfocus unlockFocus��  ��  ] o   � ����� "0 flippedpdfimage flippedPdfImage[ ^_^ l  � ���������  ��  ��  _ `a` r   � �bcb l  � �d����d n  � �efe I   � ���g����  0 initwithimage_ initWithImage_g h��h o   � ����� "0 flippedpdfimage flippedPdfImage��  ��  f n  � �iji I   � ��������� 	0 alloc  ��  ��  j n  � �klk o   � ����� 0 pdfpage PDFPagel m   � ���
�� misccura��  ��  c o      ���� 0 newpage newPagea mnm l  � ���������  ��  ��  n opo l  � �q����q n  � �rsr I   � ���t���� (0 removepageatindex_ removePageAtIndex_t u��u o   � ����� 0 i  ��  ��  s o   � ����� 0 pdfdoc pdfDoc��  ��  p v��v l  � �w����w n  � �xyx I   � ���z���� *0 insertpage_atindex_ insertPage_atIndex_z {|{ o   � ����� 0 newpage newPage| }��} o   � ����� 0 i  ��  ��  y o   � ����� 0 pdfdoc pdfDoc��  ��  ��  �| 0 i   � m   * +����   � l  + 2~����~ \   + 2� l  + 0������ n  + 0��� I   , 0�������� 0 	pagecount 	pageCount��  ��  � o   + ,���� 0 pdfdoc pdfDoc��  ��  � m   0 1���� ��  ��  �{   � ��� l  � ���������  ��  ��  � ��� l  � �������  � . ( Write the modified PDF data to the disk   � ��� P   W r i t e   t h e   m o d i f i e d   P D F   d a t a   t o   t h e   d i s k� ��� r   � ���� n  � ���� I   � ��������� (0 datarepresentation dataRepresentation��  ��  � o   � ����� 0 pdfdoc pdfDoc� o      ����  0 flippedpdfdata flippedPdfData� ���� n  � ���� I   � �������� 20 writetofile_atomically_ writeToFile_atomically_� ��� o   � ����� 0 filepath filePath� ���� m   � ���
�� boovtrue��  ��  � o   � �����  0 flippedpdfdata flippedPdfData��   � ��� l     ��������  ��  ��  � ��� l      ������  � � �
			Rotates each page of the PDF by the specified number of degrees.
			
			Params:
				degrees (Number) - The amount to rotate the pages by.
				filePath (String) - The path to save the resulting PDF in.
		   � ���� 
 	 	 	 R o t a t e s   e a c h   p a g e   o f   t h e   P D F   b y   t h e   s p e c i f i e d   n u m b e r   o f   d e g r e e s . 
 	 	 	 
 	 	 	 P a r a m s : 
 	 	 	 	 d e g r e e s   ( N u m b e r )   -   T h e   a m o u n t   t o   r o t a t e   t h e   p a g e s   b y . 
 	 	 	 	 f i l e P a t h   ( S t r i n g )   -   T h e   p a t h   t o   s a v e   t h e   r e s u l t i n g   P D F   i n . 
 	 	� ��� i    ��� I      ������� 
0 rotate  ��  � ����
�� 
by  � o      ���� 0 degrees  � �����
�� 
into� |����������  ��  � o      ���� 0 filepath filePath��  � l     ������ m      ��
�� 
msng��  ��  ��  � k     a�� ��� r     ��� n    ��� I    �������� "0 _getpdfdocument _getPDFDocument��  ��  �  f     � o      ���� 0 pdfdoc pdfDoc� ��� l   ��������  ��  ��  � ��� Z    &������� =   ��� o    	���� 0 filepath filePath� m   	 
��
�� 
msng� Z    "������ C    ��� n   ��� o    ���� 
0 target  �  f    � m    �� ���  /� r    ��� n   ��� o    ���� 
0 target  �  f    � o      ���� 0 filepath filePath��  � R    "�����
�� .ascrerr ****      � ****� m     !�� ��� F M u s t   p r o v i d e   a n   o u t p u t   d e s t i n a t i o n .��  ��  ��  � ��� l  ' '��������  ��  ��  � ��� l  ' '������  � 1 + Loop through the pages and rotate each one   � ��� V   L o o p   t h r o u g h   t h e   p a g e s   a n d   r o t a t e   e a c h   o n e� ��� Y   ' Q�������� k   7 L�� ��� r   7 ?��� l  7 =������ n  7 =��� I   8 =������� 0 pageatindex_ pageAtIndex_� ���� o   8 9���� 0 i  ��  ��  � o   7 8���� 0 pdfdoc pdfDoc��  ��  � o      ���� 0 pdfpage PDFPage� ���� l  @ L������ n  @ L��� I   A L������� 0 setrotation_ setRotation_� ���� l  A H������ [   A H��� l  A F������ n  A F��� I   B F�������� 0 rotation  ��  ��  � o   A B���� 0 pdfpage PDFPage��  ��  � o   F G�� 0 degrees  ��  ��  ��  ��  � o   @ A�~�~ 0 pdfpage PDFPage��  ��  ��  �� 0 i  � m   * +�}�}  � l  + 2��|�{� \   + 2��� l  + 0��z�y� n  + 0��� I   , 0�x�w�v�x 0 	pagecount 	pageCount�w  �v  � o   + ,�u�u 0 pdfdoc pdfDoc�z  �y  � m   0 1�t�t �|  �{  ��  � ��� l  R R�s�r�q�s  �r  �q  � ��� l  R R�p���p  � 0 * Write the modified PDF data to a new file   � ��� T   W r i t e   t h e   m o d i f i e d   P D F   d a t a   t o   a   n e w   f i l e� ��� r   R Y��� n  R W��� I   S W�o�n�m�o (0 datarepresentation dataRepresentation�n  �m  � o   R S�l�l 0 pdfdoc pdfDoc� o      �k�k  0 rotatedpdfdata rotatedPdfData� ��j� n  Z a� � I   [ a�i�h�i 20 writetofile_atomically_ writeToFile_atomically_  o   [ \�g�g 0 filepath filePath �f m   \ ]�e
�e boovtrue�f  �h    o   Z [�d�d  0 rotatedpdfdata rotatedPdfData�j  �  l     �c�b�a�c  �b  �a    l      �`	
�`  	  y
			Saves the PDF at the specified path.
			
			Params:
				filePath (String) - The path to save the PDF at. Optional.
		   
 � � 
 	 	 	 S a v e s   t h e   P D F   a t   t h e   s p e c i f i e d   p a t h . 
 	 	 	 
 	 	 	 P a r a m s : 
 	 	 	 	 f i l e P a t h   ( S t r i n g )   -   T h e   p a t h   t o   s a v e   t h e   P D F   a t .   O p t i o n a l . 
 	 	  i      I     �_�^
�_ .coresavenull���    obj �^   �]�\
�] 
kfil |�[�Z�Y�[  �Z   o      �X�X 0 filepath filePath�Y   l     �W�V m      �U
�U 
msng�W  �V  �\   k     -  r      n     I    �T�S�R�T "0 _getpdfdocument _getPDFDocument�S  �R    f      o      �Q�Q 0 thedocument theDocument  l   �P�O�N�P  �O  �N    Z    & !�M�L  =   "#" o    	�K�K 0 filepath filePath# m   	 
�J
�J 
msng! Z    "$%�I&$ C    '(' n   )*) o    �H�H 
0 target  *  f    ( m    ++ �,,  /% r    -.- n   /0/ o    �G�G 
0 target  0  f    . o      �F�F 0 filepath filePath�I  & R    "�E1�D
�E .ascrerr ****      � ****1 m     !22 �33 F M u s t   p r o v i d e   a n   o u t p u t   d e s t i n a t i o n .�D  �M  �L   454 l  ' '�C�B�A�C  �B  �A  5 6�@6 n  ' -787 I   ( -�?9�>�? 0 writetofile_ writeToFile_9 :�=: o   ( )�<�< 0 filepath filePath�=  �>  8 o   ' (�;�; 0 thedocument theDocument�@   ;<; l     �:�9�8�:  �9  �8  < =>= l      �7?@�7  ?  
			Opens the PDF.
		   @ �AA * 
 	 	 	 O p e n s   t h e   P D F . 
 	 	> B�6B i   ! $CDC I     �5�4�3
�5 .aevtodocnull  �    alis�4  �3  D Z     (EF�2GE C     HIH n    JKJ o    �1�1 
0 target  K  f     I m    LL �MM  /F O    NON k    PP QRQ I   �0�/�.
�0 .miscactvnull��� ��� null�/  �.  R S�-S I   �,T�+
�, .aevtodocnull  �    alisT o    �*�* 
0 target  �+  �-  O m    	UU�                                                                                  prvw  alis    4  Macintosh HD               ��>dBD ����Preview.app                                                    ������>d        ����  
 cu             Applications  "/:System:Applications:Preview.app/    P r e v i e w . a p p    M a c i n t o s h   H D  System/Applications/Preview.app   / ��  �2  G I   (�)V�(
�) .GURLGURLnull��� ��� TEXTV o    $�'�' 
0 target  �(  �6   + WXW l   �&�%�$�&  �%  �$  X YZY Z    [\�#�"[ H    ]] D    ^_^ o    	�!�! 0 	thetarget 	theTarget_ m   	 
`` �aa  . p d f\ R    � b�
�  .ascrerr ****      � ****b b    cdc o    �� 0 	thetarget 	theTargetd m    ee �ff &   i s   n o t   a   P D F   f i l e .�  �#  �"  Z ghg l   ����  �  �  h iji r    !klk n   mnm I    ���� "0 _getpdfdocument _getPDFDocument�  �  n o    �� 0 plpdf PLPDFl o      �� 0 thedocument theDocumentj opo r   " -qrq c   " )sts n  " 'uvu I   # '���� 0 	pagecount 	pageCount�  �  v o   " #�� 0 thedocument theDocumentt m   ' (�
� 
nmbrr n     wxw o   * ,�� 0 	pagecount 	pageCountx o   ) *�� 0 plpdf PLPDFp yzy r   . 9{|{ c   . 5}~} n  . 3� I   / 3���� (0 documentattributes documentAttributes�  �  � o   . /�� 0 thedocument theDocument~ m   3 4�

�
 
reco| n     ��� o   6 8�	�	 0 metadata  � o   5 6�� 0 plpdf PLPDFz ��� l  : :����  �  �  � ��� L   : <�� o   : ;�� 0 plpdf PLPDF�   $ ��� l     �� ���  �   ��  �       �����������  � ��������
�� 
pimr�� 0 x_axis X_AXIS�� 0 y_axis Y_AXIS�� 
0 pdf PDF� ����� �  ���� �����
�� 
cobj� ��   �� 	
�� 
frmk��  � �����
�� 
cobj� ��   �� 
�� 
frmk��  � �����
�� 
cobj� ��   ��
�� 
osax��  �� ��  � �� &���������� 
0 pdf PDF�� ����� �  ���� 0 	thetarget 	theTarget��  � �������� 0 	thetarget 	theTarget�� 0 plpdf PLPDF�� 0 thedocument theDocument� �� ,�`e�������������� 0 plpdf PLPDF� �����������
�� .ascrinit****      � ****� k     $��  .��  1��  4��  >��  ���  ��� ��� �� B����  ��  ��  � 	�������������������� 
0 target  �� 0 	pagecount 	pageCount�� 0 metadata  �� "0 _getpdfdocument _getPDFDocument�� 0 extracttext extractText�� 0 flip  �� 
0 rotate  
�� .coresavenull���    obj 
�� .aevtodocnull  �    alis� 
���������������� 
0 target  
�� 
msng�� 0 	pagecount 	pageCount�� 0 metadata  � �� A���������� "0 _getpdfdocument _getPDFDocument��  ��  � ���� 0 fileurl fileURL� 
���� P��������������
�� 
msng�� 
0 target  
�� misccura�� 0 nsurl NSURL�� $0 fileurlwithpath_ fileURLWithPath_��  0 urlwithstring_ URLWithString_�� 0 pdfdocument PDFDocument�� 	0 alloc  �� 0 initwithurl_ initWithURL_�� 6�E�O)�,� ��,)�,k+ E�Y ��,)�,k+ E�O��,j+ �k+ 	� �� ����������� 0 extracttext extractText��  ��  � ���� 0 thedocument theDocument� �������� "0 _getpdfdocument _getPDFDocument�� 
0 string  
�� 
ctxt�� )j+  E�O�j+ �&� �� ����������� 0 flip  ��  �� �����
�� 
over�� 0 axis  � �����
�� 
into� {�������� 0 filepath filePath��  
�� 
msng��  � 
���������������������� 0 axis  �� 0 filepath filePath�� 0 pdfdoc pdfDoc�� 0 i  �� 0 
thepdfpage 
thePDFPage�� 0 pdfrect pdfRect�� "0 flippedpdfimage flippedPdfImage�� 0 	transform  �� 0 newpage newPage��  0 flippedpdfdata flippedPdfData� ������ � �����������������������������J�������������������� "0 _getpdfdocument _getPDFDocument
�� 
msng�� 
0 target  �� 0 	pagecount 	pageCount�� 0 pageatindex_ pageAtIndex_
�� misccura�� 00 kpdfdisplayboxmediabox kPDFDisplayBoxMediaBox�� 0 boundsforbox_ boundsForBox_�� 0 nsimage NSImage�� 	0 alloc  
�� 
cobj�� 0 initwithsize_ initWithSize_�� 0 	lockfocus 	lockFocus�� &0 nsaffinetransform NSAffineTransform�� 0 init  �� 0 scalexby_yby_ scaleXBy_yBy_�� &0 translatexby_yby_ translateXBy_yBy_�� 
0 concat  �� 0 drawwithbox_ drawWithBox_�� 0 unlockfocus unlockFocus�� 0 pdfpage PDFPage��  0 initwithimage_ initWithImage_�� (0 removepageatindex_ removePageAtIndex_�� *0 insertpage_atindex_ insertPage_atIndex_�� (0 datarepresentation dataRepresentation�� 20 writetofile_atomically_ writeToFile_atomically_�� )j+  E�O��  )�,� 
)�,E�Y )j�Y hO �j�j+ kkh ��k+ E�O���,k+ 	E�O��,j+ ��l/k+ E�O�j+ O��,j+ j+ E�O�j  �ikl+ O���l/�k/'jl+ Y '�k  �kil+ O�j��l/�l/'l+ Y )ja O�j+ O���,k+ O�j+ O�a ,j+ �k+ E�O��k+ O���l+ [OY�GO�j+ E�O��el+ � ������������� 
0 rotate  ��  �� �����
�� 
by  �� 0 degrees  � ����
�� 
into� {�~�}�|�~ 0 filepath filePath�}  
�| 
msng�  � �{�z�y�x�w�v�{ 0 degrees  �z 0 filepath filePath�y 0 pdfdoc pdfDoc�x 0 i  �w 0 pdfpage PDFPage�v  0 rotatedpdfdata rotatedPdfData� �u�t�s���r�q�p�o�n�m�u "0 _getpdfdocument _getPDFDocument
�t 
msng�s 
0 target  �r 0 	pagecount 	pageCount�q 0 pageatindex_ pageAtIndex_�p 0 rotation  �o 0 setrotation_ setRotation_�n (0 datarepresentation dataRepresentation�m 20 writetofile_atomically_ writeToFile_atomically_�� b)j+  E�O��  )�,� 
)�,E�Y )j�Y hO )j�j+ kkh ��k+ E�O��j+ �k+ [OY��O�j+ 	E�O��el+ 
� �l�k�j���i
�l .coresavenull���    obj �k  �j �h��g
�h 
kfil� {�f�e�d�f 0 filepath filePath�e  
�d 
msng�g  � �c�b�c 0 filepath filePath�b 0 thedocument theDocument� �a�`�_+2�^�a "0 _getpdfdocument _getPDFDocument
�` 
msng�_ 
0 target  �^ 0 writetofile_ writeToFile_�i .)j+  E�O��  )�,� 
)�,E�Y )j�Y hO��k+ � �]D�\�[���Z
�] .aevtodocnull  �    alis�\  �[  �  � �YLU�X�W�V�Y 
0 target  
�X .miscactvnull��� ��� null
�W .aevtodocnull  �    alis
�V .GURLGURLnull��� ��� TEXT�Z ))�,� � *j Ob   j UY b   j �� %b   �O�O�OL OL OL OL OL OL 	�� "0 _getpdfdocument _getPDFDocument�� 0 	pagecount 	pageCount
�� 
nmbr�� (0 documentattributes documentAttributes
�� 
reco�� 0 metadata  �� =��K S�O�� )j��%Y hO�j+ E�O�j+ �&��,FO�j+ �&��,FO�ascr  ��ޭ